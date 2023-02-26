{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}

module Stratosphere.Generator.Declaration
  ( Import(..)
  , Record(..)
  , State(..)
  , genRecord
  , genRecordBoot
  , genTypeAlias
  )
where

import Control.Monad.Writer.Strict
import Data.Set (Set)
import Data.String (IsString, fromString)
import GHC.SourceGen ((@@), (-->))
import Prelude
import Stratosphere.Generator.Prelude

import qualified Data.Foldable                     as Foldable
import qualified Data.List                         as List
import qualified Data.Map.Strict                   as Map
import qualified Data.Set                          as Set
import qualified Data.Text                         as Text
import qualified Data.Text.Manipulate              as Text
import qualified GHC.Hs.Extension                  as GHC
import qualified GHC.Hs.Pat                        as GHC
import qualified GHC.Hs.Type                       as GHC
import qualified GHC.Parser.Annotation             as GHC
import qualified GHC.SourceGen                     as GHC
import qualified GHC.Types.Basic                   as GHC
import qualified GHC.Types.Fixity                  as GHC
import qualified GHC.Types.Name.Occurrence         as GHC
import qualified GHC.Types.Name.Reader             as GHC
import qualified GHC.Types.SrcLoc                  as GHC
import qualified Language.Haskell.Syntax.Decls     as GHC
import qualified Language.Haskell.Syntax.Expr      as GHC
import qualified Language.Haskell.Syntax.Extension as GHC
import qualified Stratosphere.Generator.Raw        as Raw

data Record = Record
  { awsType     :: Text
  , builderName :: Text
  , name        :: Text
  , properties  :: Map Raw.PropertyName Raw.Property
  }

data Import
  = JSON
  | Prelude
  | Property
  | Reference Raw.PropertyName
  | ResourceProperties
  | Tag
  | Value
  deriving stock (Eq, Ord, Show)

data State = State
  { imports :: Set Import
  , exports :: [GHC.IE']
  }

instance Semigroup State where
  (<>) left right = State
    { exports = left.exports <> right.exports
    , imports = Set.union left.imports right.imports
    }

instance Monoid State where
  mempty = State
    { exports = []
    , imports = []
    }

type Generator a = Writer State a

genTypeAlias
  :: HasCallStack
  => Raw.PropertyTypeName
  -> Raw.PropertyType
  -> (GHC.HsDecl', State)
genTypeAlias propertyTypeName Raw.PropertyType{..} = runGen $ do
  typeName <- genTypeName

  hsType <- GHC.type' (fromString typeName) [] <$> genType Type
    { propertyType              = propertyTypeType
    , propertyPrimitiveType     = propertyTypePrimitiveType
    , propertyItemType          = propertyTypeItemType
    , propertyPrimitiveItemType = Nothing
    , ..
    }

  addExport (GHC.var $ fromString typeName) hsType
  where
    genTypeName :: Generator String
    genTypeName = case propertyTypeName of
      Raw.Tag -> addImport Prelude $ "Tag"
      (Raw.PropertyTypeName _resourceName propertyName) -> pure $ Text.unpack $ Raw.mkPropertyTypeName propertyName

genRecord :: Record  -> ([GHC.HsDecl'], State)
genRecord Record{..} = runGen $ do
  recordDeclaration          <- genRecordDeclaration
  builderTypeSignature       <- genBuilderTypeSignature
  resourcePropertiesInstance <- genResourcePropertiesInstance
  toJSONInstance             <- genToJSONInstance
  setFieldInstances          <- traverse (uncurry genFieldInstance) (Map.toList properties)

  pure $
    [ recordDeclaration
    , builderTypeSignature
    , builderBind
    , resourcePropertiesInstance
    , toJSONInstance
    ] <> setFieldInstances
  where
    (requiredProperties, optionalProperties) =
      List.partition ((.propertyRequired) . snd) (Map.toList properties)

    requiredPropertyNames = fst <$> requiredProperties
    optionalPropertyNames = fst <$> optionalProperties

    genRecordDeclaration :: Generator GHC.HsDecl'
    genRecordDeclaration = do
      fields <- traverse (uncurry genField) $ Map.toList properties

      addExport (GHC.thingAll recordName) $ GHC.data'
        recordName
        []
        [GHC.recordCon recordName fields]
        []
      where
        genField :: Raw.PropertyName -> Raw.Property -> Generator (GHC.OccNameStr, GHC.Field)
        genField propertyName Raw.Property{..} =
          (propertyFieldName propertyName,) . GHC.field . mkMaybe propertyRequired <$> genType Type{..}

    genBuilderTypeSignature :: Generator GHC.HsDecl'
    genBuilderTypeSignature = do
      requiredTypes <- traverse (genRequiredType . snd) requiredProperties

      addExport (GHC.var builderNameStr)
        . GHC.typeSig builderNameStr
        $ Foldable.foldl'
          (flip (-->))
          (GHC.var recordName)
          (List.reverse requiredTypes)
      where
        genRequiredType :: Raw.Property -> Generator GHC.HsType'
        genRequiredType Raw.Property{..} = genType Type{..}

    genRequiredProperty :: Raw.PropertyName -> Generator GHC.HsExpr'
    genRequiredProperty propertyName
      = addImport JSON
      $ GHC.op
          (GHC.string $ Text.unpack $ toText propertyName)
          "JSON..="
          (GHC.var . fromString $ propertyFieldName propertyName)

    genOptionalProperty :: Raw.PropertyName -> Generator GHC.HsExpr'
    genOptionalProperty propertyName
      = addImport JSON
      $ GHC.op
          (GHC.var "JSON..=" @@ (GHC.string . Text.unpack $ toText propertyName))
          "Prelude.<$>"
          (GHC.var $ fromString $ propertyFieldName propertyName)

    genResourcePropertiesInstance :: Generator GHC.HsDecl'
    genResourcePropertiesInstance = do
      function <- genFunction

      addImport ResourceProperties
        $ GHC.instance' (GHC.var "ToResourceProperties" @@ (GHC.var recordName)) [function]
      where
        genFunction :: Generator GHC.RawInstDecl
        genFunction = do
          expression <- genExpression

          pure $ GHC.funBinds "toResourceProperties" [GHC.match [recordPattern False] expression]

          where
            genExpression = do
              required <- traverse genRequiredProperty requiredPropertyNames
              optional <- traverse genOptionalProperty optionalPropertyNames

              propertiesExpression <- genMergeExpression required optional

              pure $ GHC.recordConE "ResourceProperties"
                [ ("awsType",    GHC.string $ Text.unpack awsType)
                , ("properties", propertiesExpression)
                ]


    genMergeExpression :: [GHC.HsExpr'] -> [GHC.HsExpr'] -> Generator GHC.HsExpr'
    genMergeExpression required optional
      | noRequired && noOptional = pure $ GHC.list []
      | noRequired               = addImport Prelude $ GHC.var "Prelude.fromList" @@ optionalExpr
      | noOptional               = pure requiredExpr
      | otherwise                = addImport Prelude $ GHC.var "Prelude.fromList" @@ ((GHC.var "Prelude.<>" @@ requiredExpr) @@ optionalExpr)
      where
        noOptional = List.null optional
        noRequired = List.null required

        optionalExpr = GHC.var "Prelude.catMaybes" @@ GHC.list optional
        requiredExpr = GHC.list required

    genToJSONInstance :: Generator GHC.HsDecl'
    genToJSONInstance = do
      function <- genFunction

      addImport JSON
        $ GHC.instance' (GHC.var "JSON.ToJSON" @@ (GHC.var recordName)) [function]
      where
        genFunction :: Generator GHC.RawInstDecl
        genFunction = do
          required <- traverse genRequiredProperty requiredPropertyNames
          optional <- traverse genOptionalProperty optionalPropertyNames

          propertiesExpression <- genMergeExpression required optional

          pure $ GHC.funBinds "toJSON" [GHC.match [recordPattern False] (GHC.var "JSON.object" @@ propertiesExpression)]

    genFieldInstance :: Raw.PropertyName -> Raw.Property -> Generator GHC.HsDecl'
    genFieldInstance propertyName Raw.Property{..} = do
      hsType <- genType Type{..}

      addImport Property
        $ GHC.instance' (GHC.var "Property" @@ fieldSymbol @@ recordType)
        [ fieldType hsType
        , function
        ]
      where
        fieldType :: GHC.HsType' -> GHC.RawInstDecl
        fieldType = GHC.tyFamInst "PropertyType" [fieldSymbol, recordType]

        recordType :: GHC.HsType'
        recordType = GHC.var recordName

        fieldSymbol :: GHC.HsType'
        fieldSymbol = GHC.stringTy $ fromString . Text.unpack $ toText propertyName

        fieldName :: String
        fieldName = propertyFieldName propertyName

        function :: GHC.RawInstDecl
        function = GHC.funBinds "set" [GHC.match [GHC.bvar "newValue", recordPattern $ List.length properties == 1] recordConstructor]

        recordConstructor :: GHC.HsExpr'
        recordConstructor = GHC.RecordCon
          { rcon_ext = GHC.EpAnnNotUsed
          , rcon_con = mkLocated $ GHC.mkRdrUnqual $ GHC.mkDataOcc recordName
          , rcon_flds = GHC.HsRecFields [newValueField] (Just (GHC.L (GHC.UnhelpfulSpan GHC.UnhelpfulGenerated) 1))
          }

        mkPure :: GHC.HsExpr' -> GHC.HsExpr'
        mkPure expr = if propertyRequired
          then expr
          else GHC.var "Prelude.pure" @@ expr

        newValueField :: GHC.LHsRecField GHC.GhcPs (GHC.LHsExpr GHC.GhcPs)
        newValueField
          = mkGenLocated
          $ GHC.HsRecField
          { hsRecFieldLbl = GHC.L (GHC.UnhelpfulSpan GHC.UnhelpfulGenerated) $ GHC.FieldOcc GHC.NoExtField (mkLocated $ GHC.mkRdrUnqual $ GHC.mkDataOcc fieldName)
          , hsRecFieldArg = mkLocated . mkPure $ GHC.var "newValue"
          , hsRecPun      = False
          , hsRecFieldAnn = GHC.EpAnnNotUsed
          }

        mkGenLocated :: a -> GHC.GenLocated (GHC.SrcSpanAnn' (GHC.EpAnn ann)) a
        mkGenLocated = GHC.L (GHC.SrcSpanAnn GHC.EpAnnNotUsed $ GHC.UnhelpfulSpan GHC.UnhelpfulGenerated)

    builderBind :: GHC.HsDecl'
    builderBind
      = GHC.funBind builderNameStr
      . GHC.match (GHC.bvar . fromString <$> requiredFieldNames)
      $ GHC.recordConE recordName (requiredFields <> optionalFields)
      where
        optionalFields = (buildField $ const $ GHC.var "Prelude.Nothing") . propertyFieldName . fst <$> optionalProperties
        requiredFields = (buildField $ GHC.var . fromString) <$> requiredFieldNames

        requiredFieldNames :: [String]
        requiredFieldNames = propertyFieldName <$> requiredPropertyNames

    recordName :: IsString a => a
    recordName = fromString $ Text.unpack name

    builderNameStr :: IsString a => a
    builderNameStr = fromString $ Text.unpack builderName

    recordPattern :: Bool -> GHC.Pat'
    recordPattern forceNull
      = GHC.ConPat GHC.EpAnnNotUsed constructorName
      . GHC.RecCon
      . GHC.HsRecFields []
      $ if forceNull || List.null properties
          then Nothing
          else Just (GHC.L (GHC.UnhelpfulSpan GHC.UnhelpfulGenerated) 0)
      where
        constructorName :: GHC.LocatedN GHC.RdrName
        constructorName = mkLocated . GHC.mkRdrUnqual $ GHC.mkDataOcc recordName

genRecordBoot :: Record  -> ([GHC.HsDecl'], State)
genRecordBoot Record{..} = runGen $ do
  recordDeclaration          <- genRecordDeclaration
  resourcePropertiesInstance <- genResourcePropertiesInstance
  toJSONInstance             <- genToJSONInstance

  pure $
    [ recordDeclaration
    , resourcePropertiesInstance
    , toJSONInstance
    ]
  where
    genRecordDeclaration :: Generator GHC.HsDecl'
    genRecordDeclaration
      = addImport Prelude
      $ GHC.TyClD
        GHC.NoExtField
      $ GHC.DataDecl
          GHC.EpAnnNotUsed
          (mkLocated . GHC.mkRdrUnqual $ GHC.mkDataOcc recordName)
          (GHC.HsQTvs GHC.NoExtField [])
          GHC.Prefix
      $ GHC.HsDataDefn
          GHC.NoExtField
          GHC.DataType
          Nothing
          Nothing
          ( Just
          $ mkLocated
            (GHC.HsTyVar
              GHC.EpAnnNotUsed
              GHC.NotPromoted
              (mkLocated . GHC.mkRdrUnqual $ GHC.mkDataOcc "Prelude.Type")
            )
          )
          []
          []

    genResourcePropertiesInstance :: Generator GHC.HsDecl'
    genResourcePropertiesInstance
      = addImport ResourceProperties
      $ GHC.instance' (GHC.var "ToResourceProperties" @@ (GHC.var recordName)) []

    genToJSONInstance :: Generator GHC.HsDecl'
    genToJSONInstance
      = addImport JSON
      $ GHC.instance' (GHC.var "JSON.ToJSON" @@ (GHC.var recordName)) []

    recordName :: IsString a => a
    recordName = fromString $ Text.unpack name

runGen :: Generator a -> (a, State)
runGen generator = (value, State{exports = List.nub exports, ..})
  where
    (value, State{..}) = runWriter generator

data Type = Type
  { propertyPrimitiveType     :: Maybe Raw.PrimitiveType
  , propertyType              :: Maybe Raw.ComposedType
  , propertyPrimitiveItemType :: Maybe Raw.PrimitiveType
  , propertyItemType          :: Maybe Raw.PropertyName
  }
  deriving stock (Show)

genType :: HasCallStack => Type -> Generator GHC.HsType'
genType type'@Type{..} =
  case (propertyPrimitiveType, propertyType, propertyPrimitiveItemType, propertyItemType) of
    ((Just prim), Nothing,                          Nothing,     Nothing)     -> genPrimitive prim
    (Nothing,     (Just Raw.ComposedTypeList),      (Just prim), Nothing)     -> genValueList prim
    (Nothing,     (Just Raw.ComposedTypeList),      Nothing,     (Just item)) -> GHC.listTy <$> genReference item
    (Nothing,     (Just Raw.ComposedTypeMap),       (Just prim), Nothing)     -> genMap =<< genPrimitive prim
    (Nothing,     (Just Raw.ComposedTypeMap),       Nothing,     (Just item)) -> genMap =<< genReference item
    (Nothing,     (Just (Raw.ComposedTypeSub sub)), Nothing,     Nothing)     -> genReference sub
    _other -> error $ "Unknown raw property type: " <> show type'

genValueList :: Raw.PrimitiveType -> Generator GHC.HsType'
genValueList = \case
  Raw.PrimitiveTypeBoolean   -> valueList =<< addImport Prelude (GHC.var "Prelude.Bool")
  Raw.PrimitiveTypeDouble    -> valueList =<< addImport Prelude (GHC.var "Prelude.Double")
  Raw.PrimitiveTypeInteger   -> valueList =<< addImport Prelude (GHC.var "Prelude.Integer")
  Raw.PrimitiveTypeJSON      -> addImport JSON $ GHC.var "JSON.Object"
  Raw.PrimitiveTypeLong      -> valueList =<< addImport Prelude (GHC.var "Prelude.Integer")
  Raw.PrimitiveTypeString    -> valueList =<< addImport Prelude (GHC.var "Prelude.Text")
  Raw.PrimitiveTypeTimestamp -> valueList =<< addImport Prelude (GHC.var "Prelude.Text")
  where
    valueList :: GHC.HsType' -> Generator GHC.HsType'
    valueList member = addImport Value $ GHC.var "ValueList" @@ member

mkMaybe :: Bool -> GHC.HsType' -> GHC.HsType'
mkMaybe propertyRequired hsType =
  if propertyRequired then hsType else (GHC.var "Prelude.Maybe") @@ hsType

genPrimitive :: Raw.PrimitiveType -> Generator GHC.HsType'
genPrimitive = \case
  Raw.PrimitiveTypeBoolean   -> genValue =<< addImport Prelude (GHC.var "Prelude.Bool")
  Raw.PrimitiveTypeDouble    -> genValue =<< addImport Prelude (GHC.var "Prelude.Double")
  Raw.PrimitiveTypeInteger   -> genValue =<< addImport Prelude (GHC.var "Prelude.Integer")
  Raw.PrimitiveTypeJSON      -> addImport JSON $ GHC.var "JSON.Object"
  Raw.PrimitiveTypeLong      -> genValue =<< addImport Prelude (GHC.var "Prelude.Integer")
  Raw.PrimitiveTypeString    -> genValue =<< addImport Prelude (GHC.var "Prelude.Text")
  Raw.PrimitiveTypeTimestamp -> genValue =<< addImport Prelude (GHC.var "Prelude.Text")

genReference :: Raw.PropertyName -> Generator GHC.HsType'
genReference propertyName
  = addImport importSpec
  . GHC.var
  . fromString
  . Text.unpack
  $ Raw.mkPropertyTypeName propertyName
  where
    importSpec =
      if propertyName == Raw.PropertyName "Tag"
        then Tag
        else (Reference propertyName)

genValue :: GHC.HsType' -> Generator GHC.HsType'
genValue = addImport Value . (GHC.var "Value" @@)

genMap :: GHC.HsType' -> Generator GHC.HsType'
genMap hsType = addImport Prelude $ (GHC.var "Prelude.Map" @@ GHC.var "Prelude.Text") @@ hsType

propertyFieldName :: IsString a => Raw.PropertyName -> a
propertyFieldName propertyName = fromString . Text.unpack $ case toText propertyName of
  "Data"     -> "data'"
  "Default"  -> "default'"
  "Else"     -> "else'"
  "Instance" -> "instance'"
  "Set"      -> "set'"
  "Then"     -> "then'"
  "Type"     -> "type'"
  other      -> Text.lowerHead other

addImport :: Import -> a -> Generator a
addImport importSpec node = writer (node, State { exports = exports, imports = [importSpec]})
  where
    exports :: [GHC.IE']
    exports = case importSpec of
      (Reference _) -> [GHC.moduleContents "Exports"]
      _other        -> []

addExport :: GHC.IE' -> a -> Generator a
addExport ie node = writer (node, State { exports = [ie], imports = []})

buildField :: (String -> GHC.HsExpr') -> String -> (GHC.RdrNameStr, GHC.HsExpr')
buildField mkExp string = (fromString string, mkExp string)

mkLocated :: a -> GHC.GenLocated (GHC.SrcSpanAnn' (GHC.EpAnn ann)) a
mkLocated
  = GHC.L
  . GHC.SrcSpanAnn GHC.EpAnnNotUsed
  $ GHC.UnhelpfulSpan GHC.UnhelpfulGenerated
