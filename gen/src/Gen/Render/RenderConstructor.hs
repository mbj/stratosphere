{-# LANGUAGE QuasiQuotes #-}

-- | Renders the constructor that includes required values.

module Gen.Render.RenderConstructor (renderConstructor) where

import Data.Text (Text)
import Data.Text.Manipulate (lowerHead)
import Gen.Prelude
import Gen.Render.Module
import Gen.Render.RenderDocstring
import Gen.Render.RenderTypes
import Gen.Specifications
import Text.Shakespeare.Text (st)

import qualified Data.Text as T

-- | Renders the default constructor function to Text.
renderConstructor :: Module -> Text
renderConstructor module'@Module{..} =
  [st|#{constructorDocstring module'}
#{moduleConstructorName}
#{renderTypes module'}
#{moduleConstructorName} #{args} =
  #{moduleName}
  { #{fieldText}
  }|]
  where
    argNames = map argName (requiredProperties moduleProperties)
    args = T.intercalate " " argNames
    fields = fmap (constructorField module') moduleProperties
    fieldLines = map (\(n, v) -> [st|#{n} = #{v}|]) fields
    fieldText = T.intercalate "\n  , " fieldLines

constructorDocstring :: Module -> Text
constructorDocstring Module {..} = renderDocstring doc
  where
    doc = "Constructor for '" <> moduleName <> "' containing required fields as arguments."

renderTypes :: Module -> Text
renderTypes module' = T.intercalate "\n" lines'
  where
    typePrefixes :: [Text]
    typePrefixes = "  :: " : repeat "  -> "

    types = constructorTypes module'
    req = requiredProperties (moduleProperties module')
    comments = fmap (\prop -> " -- ^ '" <> moduleLensPrefix module' <> propertyName prop <> "'") req
    zipped = zip3 typePrefixes types (comments ++ [""])
    lines' = fmap (\(pre', t, c) -> T.concat [pre', t, c]) zipped

constructorTypes :: Module -> [Text]
constructorTypes module' = paramArgs ++ [moduleName module']
  where
    paramArgs = map renderPropertyType (requiredProperties $ moduleProperties module')

constructorField :: Module -> Property -> (Text, Text)
constructorField Module {..} property = (fieldName, valName)
  where
    fieldName = moduleFieldPrefix <> propertyName property
    valName = if propertyRequired property then argName property else "Nothing"

requiredProperties :: [Property] -> [Property]
requiredProperties = filter propertyRequired

-- | Name used for the parameter's argument in the constructor.
argName :: Property -> Text
argName property = T.concat [lowerHead $ propertyName property, "arg"]
