{-# LANGUAGE QuasiQuotes #-}

-- | Generate Haskell types from resource parameters.

module Gen.Render.RenderTypes
  ( renderResourceTypeDecl
  , renderPropertyType
  )
where

import Gen.Prelude
import Gen.Render.Module
import Gen.Render.RenderDocstring
import Gen.Spec
import Text.Shakespeare.Text (st)

import qualified Data.Text as Text

renderResourceTypeDecl :: Module -> Text
renderResourceTypeDecl module'@Module {..} =
  [st|#{declDocstring module'}
data #{moduleName} =
  #{moduleName}
  { #{Text.intercalate "\n  , " fields}
  } deriving (Show, Eq)|]
  where
    fields = fmap (renderField module') moduleProperties

declDocstring :: Module -> Text
declDocstring Module{..} = renderDocstring doc
  where
    doc
      =  "Full data type definition for " <> moduleName
      <> ". See '" <> moduleConstructorName <> "' for a more convenient constructor."

renderField :: Module -> Property -> Text
renderField Module{..} prop@Property {..} =
  Text.concat [moduleFieldPrefix, propertyName, " :: ", renderPropertyType prop]

renderPropertyType :: Property -> Text
renderPropertyType Property{..} = renderType propertySpecType propertyRequired

renderType :: SpecType -> Bool -> Text
renderType (AtomicType type') True = renderAtomicTypeWithVal type'
renderType (AtomicType JsonPrimitive) False = "Maybe " <> renderAtomicTypeWithVal JsonPrimitive
renderType (AtomicType (SubPropertyType text)) False = "Maybe " <> text
renderType (AtomicType type') False = "Maybe (" <> renderAtomicTypeWithVal type' <> ")"
renderType (ListType type') True =
  if isWrappedInVal type'
  then "ValList " <> renderAtomicType type'
  else "[" <> renderAtomicType type' <> "]"
renderType (ListType type') False =
  if isWrappedInVal type'
  then "Maybe (ValList " <> renderAtomicType type' <> ")"
  else "Maybe [" <> renderAtomicType type' <> "]"
-- TODO: Use Map for as much as possible instead of Object
renderType (MapType type'@(SubPropertyType _)) True = "Map Text " <> renderAtomicTypeWithVal type'
renderType (MapType type'@(SubPropertyType _)) False = "Maybe (Map Text " <> renderAtomicTypeWithVal type' <> ")"
renderType (MapType _) True = "Object"
renderType (MapType _) False = "Maybe Object"

isWrappedInVal :: AtomicType -> Bool
isWrappedInVal StringPrimitive = True
isWrappedInVal IntegerPrimitive = True
isWrappedInVal DoublePrimitive = True
isWrappedInVal BoolPrimitive = True
isWrappedInVal JsonPrimitive = False
isWrappedInVal (SubPropertyType _) = False
isWrappedInVal (CustomType _) = True

renderAtomicTypeWithVal :: AtomicType -> Text
renderAtomicTypeWithVal t =
  if isWrappedInVal t
  then "Val " <> renderAtomicType t
  else renderAtomicType t

renderAtomicType :: AtomicType -> Text
renderAtomicType StringPrimitive = "Text"
renderAtomicType IntegerPrimitive = "Integer"
renderAtomicType DoublePrimitive = "Double"
renderAtomicType BoolPrimitive = "Bool"
renderAtomicType JsonPrimitive = "Object"
renderAtomicType (SubPropertyType text) = text
renderAtomicType (CustomType text) = text
