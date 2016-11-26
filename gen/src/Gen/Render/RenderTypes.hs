{-# LANGUAGE QuasiQuotes #-}

-- | Generate Haskell types from resource parameters.

module Gen.Render.RenderTypes
  ( renderResourceTypeDecl
  , renderPropertyType
  ) where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Text.Shakespeare.Text (st)

import Gen.Render.RenderDocstring
import Gen.Render.Types
import Gen.Specifications

renderResourceTypeDecl :: Module -> T.Text
renderResourceTypeDecl module'@Module {..} = --T.concat [declDocstring module', header, sigs, footer]
  [st|#{declDocstring module'}
data #{moduleName} =
  #{moduleName}
  { #{T.intercalate "\n  , " fields}
  } deriving (Show, Generic)|]
  where
    fields = fmap (renderField module') moduleProperties

declDocstring :: Module -> T.Text
declDocstring Module{..} = renderDocstring doc <> "\n"
  where doc = "Full data type definition for " <> moduleName <>
              ". See '" <> moduleConstructorName <> "' for a more convenient constructor."

renderField :: Module -> Property -> T.Text
renderField Module{..} prop@Property {..} =
  T.concat [moduleFieldPrefix, propertyName, " :: ", renderPropertyType prop]

renderPropertyType :: Property -> Text
renderPropertyType Property{..} = renderType propertySpecType propertyRequired

renderType :: SpecType -> Bool -> Text
renderType (AtomicType type') True = renderAtomicType type'
renderType (AtomicType JsonPrimitive) False = "Maybe " <> renderAtomicType JsonPrimitive
renderType (AtomicType (SubPropertyType text)) False = "Maybe " <> text
renderType (AtomicType type') False = "Maybe (" <> renderAtomicType type' <> ")"
renderType (ListType type') True = "[" <> renderAtomicType type' <> "]"
renderType (ListType type') False = "Maybe [" <> renderAtomicType type' <> "]"
-- TODO: Actually use a map type, not Object
-- renderType (MapType type') True = "Map Text " <> renderAtomicType type'
-- renderType (MapType type') False = "Maybe (Map Text (" <> renderAtomicType type' <> "))"
renderType (MapType _) True = "Object"
renderType (MapType _) False = "Maybe Object"

renderAtomicType :: AtomicType -> Text
renderAtomicType StringPrimitive = "Val Text"
renderAtomicType IntegerPrimitive = "Val Integer'"
renderAtomicType DoublePrimitive = "Val Double'"
renderAtomicType BoolPrimitive = "Val Bool'"
renderAtomicType JsonPrimitive = "Object"
renderAtomicType (SubPropertyType text) = text
renderAtomicType (CustomType text) = "Val " <> text
