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
import qualified GHC.Hs.Doc                        as GHC
import qualified GHC.Hs.Extension                  as GHC
import qualified GHC.Hs.Pat                        as GHC
import qualified GHC.Hs.Type                       as GHC
import qualified GHC.Parser.Annotation             as GHC
import qualified GHC.SourceGen                     as GHC
import qualified GHC.Types.Basic                   as GHC
import qualified GHC.Types.Fixity                  as GHC
import qualified GHC.Types.Name                    as GHC
import qualified GHC.Types.Name.Reader             as GHC
import qualified GHC.Types.SrcLoc                  as GHC
import qualified Language.Haskell.Syntax.Decls     as GHC
import qualified Language.Haskell.Syntax.Expr      as GHC
import qualified Language.Haskell.Syntax.Extension as GHC
import qualified Stratosphere.Generator.Raw        as Raw

data Record = Record
  { awsType       :: Text
  , builderName   :: Text
  , name          :: Text
  , properties    :: Map Raw.PropertyName Raw.Property
  , documentation :: Text
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

-- | Field name for the workaround to avoid GHC AST pretty-printer {-- syntax error.
-- When the first field has Haddock documentation, GHC outputs {-- which is invalid.
-- This dummy field is always first, has no documentation, and is ignored in serialization.
haddockWorkaroundFieldName :: IsString a => a
haddockWorkaroundFieldName = "haddock_workaround_"

-- | Create documentation from Text (returns Nothing for empty strings)
-- Formats URLs according to Haddock syntax for external documentation links
mkDoc :: Text -> Maybe (GHC.LHsDoc GHC.GhcPs)
mkDoc txt
  | Text.null txt = Nothing
  | otherwise = Just $ GHC.L GHC.noSrcSpan $ GHC.WithHsDocIdentifiers
      { GHC.hsDocString = GHC.mkGeneratedHsDocString . Text.unpack $ formatDocUrl txt
      , GHC.hsDocIdentifiers = []
      }
  where
    -- Format URL according to Haddock syntax with leading space
    formatDocUrl :: Text -> Text
    formatDocUrl url = " See: <" <> url <> ">"

-- | Attach documentation to a constructor declaration
attachConDoc :: GHC.ConDecl GHC.GhcPs -> Maybe (GHC.LHsDoc GHC.GhcPs) -> GHC.ConDecl GHC.GhcPs
attachConDoc con@GHC.ConDeclH98{} mbDoc = con { GHC.con_doc = mbDoc }
attachConDoc con@GHC.ConDeclGADT{} mbDoc = con { GHC.con_doc = mbDoc }

-- | Attach documentation to a data declaration's constructor and fields
attachDataDoc :: GHC.HsDecl' -> Maybe (GHC.LHsDoc GHC.GhcPs) -> Map String Text -> GHC.HsDecl'
attachDataDoc (GHC.TyClD ext tycl@(GHC.DataDecl { tcdDataDefn = defn@(GHC.HsDataDefn {..})})) mbDoc fieldDocs =
  GHC.TyClD ext $ tycl { GHC.tcdDataDefn = updatedDataDefn }
  where
    updatedDataDefn = case dd_cons of
      GHC.DataTypeCons isTypeData cons ->
        let updatedCons = map (fmap (attachDocsToConDecl mbDoc fieldDocs)) cons
        in defn { GHC.dd_cons = GHC.DataTypeCons isTypeData updatedCons }
      _ -> defn
attachDataDoc decl _ _ = decl

-- | Attach constructor and field documentation to a ConDecl
-- First field is dummy (no doc in fieldDocs), real fields get documentation
attachDocsToConDecl :: Maybe (GHC.LHsDoc GHC.GhcPs) -> Map String Text -> GHC.ConDecl GHC.GhcPs -> GHC.ConDecl GHC.GhcPs
attachDocsToConDecl mbConDoc fieldDocs con@(GHC.ConDeclH98 { GHC.con_args = GHC.RecCon fields }) =
  con { GHC.con_doc = mbConDoc
      , GHC.con_args = GHC.RecCon (fmap (map (attachFieldDoc fieldDocs)) fields)
      }
attachDocsToConDecl mbConDoc _ con = attachConDoc con mbConDoc

-- | Attach documentation to a record field
attachFieldDoc :: Map String Text -> GHC.LConDeclField GHC.GhcPs -> GHC.LConDeclField GHC.GhcPs
attachFieldDoc fieldDocs (GHC.L loc field@(GHC.ConDeclField {..})) =
  GHC.L loc $ field { GHC.cd_fld_doc = lookupFieldDoc cd_fld_names }
  where
    lookupFieldDoc :: [GHC.LFieldOcc GHC.GhcPs] -> Maybe (GHC.LHsDoc GHC.GhcPs)
    lookupFieldDoc [] = Nothing
    lookupFieldDoc (GHC.L _ (GHC.FieldOcc _ (GHC.L _ rdrName)) : _) =
      let fieldName = GHC.occNameString (GHC.rdrNameOcc rdrName)
      in mkDoc =<< Map.lookup fieldName fieldDocs

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
    , propertyPrimitiveItemType = propertyTypePrimitiveItemType
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
      realFields <- traverse (uncurry genField) $ Map.toList properties

      -- Add dummy first field (see haddockWorkaroundFieldName for explanation)
      let dummyField :: (GHC.OccNameStr, GHC.Field)
          dummyField = (haddockWorkaroundFieldName, GHC.field $ GHC.unit)
          allFields = dummyField : realFields

      let baseDecl = GHC.data'
            recordName
            []
            [GHC.recordCon recordName allFields]
            [GHC.derivingStock [GHC.var "Prelude.Eq", GHC.var "Prelude.Show"]]
          -- Build map of field names to documentation (only real fields)
          fieldDocs = Map.fromList
            [ (propertyFieldName propName, propDoc)
            | (propName, Raw.Property{propertyDocumentation = propDoc}) <- Map.toList properties
            ]
          declWithDoc = attachDataDoc baseDecl (mkDoc documentation) fieldDocs

      addExport (GHC.thingAll recordName) declWithDoc
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

              addImport Prelude $ GHC.recordConE "ResourceProperties"
                [ ("awsType",      GHC.string $ Text.unpack awsType)
                , ("supportsTags", supportsTags)
                , ("properties",   propertiesExpression)
                ]

            supportsTags =
              if Map.member (Raw.PropertyName "Tags") properties
                then GHC.var "Prelude.True"
                else GHC.var "Prelude.False"

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
        function = GHC.funBinds "set" [GHC.match [GHC.bvar "newValue", recordPattern False] recordConstructor]

        recordConstructor :: GHC.HsExpr'
        recordConstructor = GHC.RecordCon
          { rcon_ext  = GHC.noAnn
          , rcon_con  = mkLocated $ GHC.mkRdrUnqual $ GHC.mkDataOcc recordName
          , rcon_flds = GHC.HsRecFields
             { GHC.rec_ext = GHC.NoExtField
             , GHC.rec_flds = [newValueField]
             , GHC.rec_dotdot = Just (GHC.L (GHC.EpaSpan (GHC.UnhelpfulSpan GHC.UnhelpfulGenerated)) (GHC.RecFieldsDotDot 1))
             }
          }

        mkPure :: GHC.HsExpr' -> GHC.HsExpr'
        mkPure expr = if propertyRequired
          then expr
          else GHC.var "Prelude.pure" @@ expr

        newValueField :: GHC.LHsRecField GHC.GhcPs (GHC.LHsExpr GHC.GhcPs)
        newValueField
          = mkGenLocated
          $ GHC.HsFieldBind
          { hfbAnn = GHC.noAnn
          , hfbPun = False
          , hfbLHS = mkLocated $ GHC.FieldOcc { foExt = GHC.NoExtField, foLabel = mkLocated $ GHC.mkRdrUnqual $ GHC.mkDataOcc fieldName }
          , hfbRHS = mkLocated . mkPure $ GHC.var "newValue"
          }

        mkGenLocated :: a -> GHC.GenLocated GHC.SrcSpanAnnA a
        mkGenLocated = GHC.L (GHC.noAnnSrcSpan $ GHC.UnhelpfulSpan GHC.UnhelpfulGenerated)

    builderBind :: GHC.HsDecl'
    builderBind
      = GHC.funBind builderNameStr
      . GHC.match (GHC.bvar . fromString <$> requiredFieldNames)
      $ GHC.recordConE recordName (dummyField : requiredFields <> optionalFields)
      where
        -- Dummy first field (see haddockWorkaroundFieldName for explanation)
        dummyField = buildField (const $ GHC.unit) haddockWorkaroundFieldName

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
      = GHC.ConPat GHC.noAnn constructorName
      . GHC.RecCon
      $ GHC.HsRecFields
          { GHC.rec_ext = GHC.NoExtField
          , GHC.rec_flds = []
          , GHC.rec_dotdot =
              -- Always emit wildcard starting at index 1 (skipping haddockWorkaroundFieldName)
              -- unless there are no real properties to bind
              if forceNull || List.null properties
                then Nothing
                else Just (GHC.L (GHC.EpaSpan (GHC.UnhelpfulSpan GHC.UnhelpfulGenerated)) (GHC.RecFieldsDotDot 1))
          }
      where
        constructorName :: GHC.LocatedN GHC.RdrName
        constructorName = mkLocated . GHC.mkRdrUnqual $ GHC.mkDataOcc recordName

genRecordBoot :: Record  -> ([GHC.HsDecl'], State)
genRecordBoot Record{..} = runGen $ do
  recordDeclaration          <- genRecordDeclaration
  resourcePropertiesInstance <- genResourcePropertiesInstance
  eqInstance                 <- genEqInstance
  showInstance               <- genShowInstance
  toJSONInstance             <- genToJSONInstance

  pure $
    [ recordDeclaration
    , resourcePropertiesInstance
    , eqInstance
    , showInstance
    , toJSONInstance
    ]
  where
    genRecordDeclaration :: Generator GHC.HsDecl'
    genRecordDeclaration
      = addImport Prelude
      $ GHC.TyClD
        GHC.NoExtField
      $ GHC.DataDecl
          GHC.NoExtField
          (mkLocated . GHC.mkRdrUnqual $ GHC.mkDataOcc recordName)
          (GHC.HsQTvs GHC.NoExtField [])
          GHC.Prefix
      $ GHC.HsDataDefn
          { dd_ext = GHC.noAnn
          , dd_ctxt = Nothing
          , dd_cType = Nothing
          , dd_kindSig = Just $ mkLocated
              (GHC.HsTyVar
                GHC.noAnn
                GHC.NotPromoted
                (mkLocated . GHC.mkRdrUnqual $ GHC.mkDataOcc "Prelude.Type")
              )
          , dd_cons = GHC.DataTypeCons False []
          , dd_derivs = []
          }

    genResourcePropertiesInstance :: Generator GHC.HsDecl'
    genResourcePropertiesInstance
      = addImport ResourceProperties
      $ mkRecordInstance (GHC.var "ToResourceProperties")

    genToJSONInstance :: Generator GHC.HsDecl'
    genToJSONInstance = addImport JSON $ mkRecordInstance (GHC.var "JSON.ToJSON")

    genEqInstance :: Generator GHC.HsDecl'
    genEqInstance = addImport Prelude $ mkRecordInstance (GHC.var "Prelude.Eq")

    genShowInstance :: Generator GHC.HsDecl'
    genShowInstance = addImport Prelude $ mkRecordInstance (GHC.var "Prelude.Show")

    mkRecordInstance :: GHC.HsType' -> GHC.HsDecl'
    mkRecordInstance hsType = GHC.instance' (hsType @@ (GHC.var recordName)) []

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

mkLocated :: GHC.HasAnnotation ann => a -> GHC.GenLocated ann a
mkLocated
  = GHC.L
  . GHC.noAnnSrcSpan
  $ GHC.UnhelpfulSpan GHC.UnhelpfulGenerated
