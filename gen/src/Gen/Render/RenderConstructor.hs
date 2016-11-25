-- | Renders the constructor that includes required values.

module Gen.Render.RenderConstructor where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Render.RenderDocstring
import Gen.Render.RenderTypes
import Gen.Render.Types
import Gen.Specifications

-- | Renders the default constructor function to Text.
renderConstructor :: Module -> Text
renderConstructor module'@Module{..} = T.concat [docstring, typeDecl, funcHead, fieldText, footer]
  where
    docstring = constructorDocstring module'
    typeDecl = T.concat [moduleConstructorName, "\n", renderTypes module', "\n"]
    argNames = map argName (requiredProperties moduleProperties)
    args = T.intercalate " " argNames
    funcHead = T.concat [moduleConstructorName, " ", args, " =\n  ", moduleName, "\n  { "]
    fields = fmap (constructorField module') moduleProperties
    fieldLines = map (\(n, v) -> T.concat [n, " = ", v]) fields
    fieldText = T.intercalate "\n  , " fieldLines
    footer = "\n  }"

constructorDocstring :: Module -> Text
constructorDocstring Module {..} = renderDocstring doc  <> "\n"
  where doc = "Constructor for '" <> moduleName <>
              "' containing required fields as arguments."

renderTypes :: Module -> Text
renderTypes module' = T.intercalate "\n" lines'
  where typePrefixes = "  :: " : repeat "  -> "
        types = constructorTypes module'
        req = requiredProperties (moduleProperties module')
        comments = fmap (\prop -> " -- ^ '" <> moduleLensPrefix module' <> propertyName prop <> "'") req
        zipped = zip3 typePrefixes types (comments ++ [""])
        lines' = fmap (\(pre', t, c) -> T.concat [pre', t, c]) zipped

constructorTypes :: Module -> [Text]
constructorTypes module' = paramArgs ++ [moduleName module']
  where paramArgs = map renderPropertyType (requiredProperties $ moduleProperties module')

constructorField :: Module -> Property -> (Text, Text)
constructorField Module {..} property = (fieldName, valName)
  where fieldName = moduleFieldPrefix <> propertyName property
        valName = if propertyRequired property then argName property else "Nothing"

requiredProperties :: [Property] -> [Property]
requiredProperties = filter propertyRequired

-- | Name used for the parameter's argument in the constructor.
argName :: Property -> Text
argName property = T.concat [lowerHead $ propertyName property, "arg"]
