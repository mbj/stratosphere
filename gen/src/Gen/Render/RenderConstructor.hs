-- | Renders the constructor that includes required values.

module Gen.Render.RenderConstructor where

import Data.Char (isUpper, toLower, isNumber)
import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Render.RenderDocstring
import Gen.Render.RenderLenses
import Gen.Render.RenderTypes
import Gen.Render.Types
import Gen.Specifications

-- | Renders the default constructor function to Text.
renderConstructor :: Module -> Text
renderConstructor module'@Module{..} = T.concat [docstring, typeDecl, funcHead, fieldText, footer]
  where
    docstring = constDocstring module'
    cname = constructorName module'
    typeDecl = T.concat [cname, "\n", renderTypes module', "\n"]
    argNames = map argName (requiredProperties moduleProperties)
    args = T.intercalate " " argNames
    funcHead = T.concat [cname, " ", args, " =\n  ", moduleName, "\n  { "]
    fields = fmap (constructorField moduleName) moduleProperties
    fieldLines = map (\(n, v) -> T.concat [n, " = ", v]) fields
    fieldText = T.intercalate "\n  , " fieldLines
    footer = "\n  }"

constDocstring :: Module -> Text
constDocstring Module {..} = renderDocstring doc  <> "\n"
  where doc = "Constructor for '" <> moduleName <>
              "' containing required fields as arguments."

renderTypes :: Module -> Text
renderTypes module' = T.intercalate "\n" lines'
  where typePrefixes = "  :: " : repeat "  -> "
        types = constructorTypes module'
        req = requiredProperties (moduleProperties module')
        comments = fmap (\r -> T.concat [" -- ^ ", "'", lensName module' r, "'"]) req
        zipped = zip3 typePrefixes types (comments ++ [""])
        lines' = fmap (\(pre', t, c) -> T.concat [pre', t, c]) zipped

constructorTypes :: Module -> [Text]
constructorTypes module' = paramArgs ++ [moduleName module']
  where paramArgs = map renderPropertyType (requiredProperties $ moduleProperties module')

constructorField :: Text -> Property -> (Text, Text)
constructorField moduleName property = (fieldName, valName)
  where fieldName = T.concat [fieldPrefix moduleName, propertyName property]
        valName = if propertyRequired property then argName property else "Nothing"

requiredProperties :: [Property] -> [Property]
requiredProperties = filter propertyRequired

consecutiveHeadLower :: String -> String
consecutiveHeadLower [] = []
consecutiveHeadLower [x] = [toLower x]
consecutiveHeadLower (x:nx:xs) = if isUpper x && (isUpper nx || isNumber nx)
                                 then toLower x : consecutiveHeadLower (nx:xs)
                                 else x:nx:xs


-- | Name used for the parameter's argument in the constructor.
argName :: Property -> Text
argName property = T.concat [lowerHead $ propertyName property, "arg"]
