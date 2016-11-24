-- | Generate Haskell types from resource parameters.

module Gen.Render.RenderTypes
  ( renderResourceTypeDecl
  , fieldPrefix
  , constructorName
  , renderPropertyType
  ) where

import Data.Char (isUpper, toLower, isNumber)
import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Render.RenderDocstring
import Gen.Render.Types
import Gen.Specifications

renderResourceTypeDecl :: Module -> T.Text
renderResourceTypeDecl module'@Module {..} = T.concat [declDocstring module', header, sigs, footer]
  where header = T.concat ["data ", moduleName, " =\n  ", moduleName, "\n  { "]
        fields = fmap (renderField moduleName) moduleProperties
        sigs = T.intercalate "\n  , " fields
        footer = "\n  } deriving (Show, Generic)"

declDocstring :: Module -> T.Text
declDocstring module'@Module{..} = renderDocstring doc <> "\n"
  where doc = "Full data type definition for " <> moduleName <>
              ". See '" <> cname <> "' for a more convenient constructor."
        cname = constructorName module'

constructorName :: Module -> T.Text
constructorName Module {..} = T.pack $ headLower $ T.unpack $ moduleName

-- | Makes consecutive upper case characters lowercase
headLower :: String -> String
headLower [] = []
headLower (x:xs) = toLower x : consecutiveHeadLower xs

consecutiveHeadLower :: String -> String
consecutiveHeadLower [] = []
consecutiveHeadLower [x] = [toLower x]
consecutiveHeadLower (x:nx:xs) =
  if isUpper x && (isUpper nx || isNumber nx)
  then toLower x : consecutiveHeadLower (nx:xs)
  else x:nx:xs

renderField :: T.Text -> Property -> T.Text
renderField resName prop@Property {..} =
  T.concat [fieldPrefix resName, propertyName, " :: ", renderPropertyType prop]

fieldPrefix :: T.Text -> T.Text
fieldPrefix resName = T.concat ["_", lowerHead resName]

renderPropertyType :: Property -> Text
renderPropertyType Property{..} = renderType propertySpecType propertyRequired

renderType :: SpecType -> Bool -> Text
renderType (AtomicType type') True = renderAtomicType type'
renderType (AtomicType JsonPrimitive) False = "Maybe " <> renderAtomicType JsonPrimitive
renderType (AtomicType (SubPropertyType text)) False = "Maybe " <> text
renderType (AtomicType type') False = "Maybe (" <> renderAtomicType type' <> ")"
renderType (ListType type') True = "[" <> renderAtomicType type' <> "]"
renderType (ListType type') False = "Maybe [" <> renderAtomicType type' <> "]"
renderType (MapType type') True = "Map Text " <> renderAtomicType type'
renderType (MapType type') False = "Maybe (Map Text (" <> renderAtomicType type' <> "))"

renderAtomicType :: AtomicType -> Text
renderAtomicType StringPrimitive = "Val Text"
renderAtomicType IntegerPrimitive = "Val Integer'"
renderAtomicType DoublePrimitive = "Val Double'"
renderAtomicType BoolPrimitive = "Val Bool'"
renderAtomicType JsonPrimitive = "Object"
renderAtomicType (SubPropertyType text) = text
