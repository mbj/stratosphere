{-# LANGUAGE QuasiQuotes #-}

module Gen.Render.RenderJsonInstances
  ( renderToJSON
  , renderToResourceProperties
  )
where

import Gen.Prelude
import Gen.Render.Module
import Gen.Spec
import Text.Shakespeare.Text (st)

import qualified Data.Text as Text

-- | Renders to ToJSON instances for a resource.
renderToJSON :: Module -> Text
renderToJSON module'@Module{..} =
  [st|instance ToJSON #{moduleName} where
  #{renderToJSON' module'}|]

renderToJSON' :: Module -> Text
renderToJSON' module'@Module{..}
  | null moduleProperties = "toJSON _ = toJSON ([] :: [String])"
  | otherwise =
      [st|toJSON #{moduleName}{..} =
    object $
    catMaybes
    [ #{renderToJSONFields 4 module'}
    ]|]

renderToResourceProperties :: Module -> Text
renderToResourceProperties module'@Module{..} =
  [st|instance ToResourceProperties #{moduleName} where
  toResourceProperties #{arg} =
    ResourceProperties
    { resourcePropertiesType = "#{moduleResource}"
    , resourcePropertiesProperties =#{props}
    }|]
 where
  arg =
    if null moduleProperties
    then "_"
    else [st|#{moduleName}{..}|]
  props =
    if null moduleProperties
    then " keyMapEmpty"
    else [st|
        keyMapFromList $ catMaybes
        [ #{renderToJSONFields 8 module'}
        ]|]

renderToJSONFields :: Int -> Module -> Text
renderToJSONFields spaces Module{..} =
  Text.intercalate leader $ map renderField moduleProperties
  where
    leader = "\n" <> Text.pack (replicate spaces ' ') <> ", "
    renderField Property{..} =
      if propertyRequired
      then [st|(Just . ("#{propertyName}",) . toJSON) #{moduleFieldPrefix}#{propertyName}|]
      else [st|fmap (("#{propertyName}",) . toJSON) #{moduleFieldPrefix}#{propertyName}|]
