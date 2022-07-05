{-# LANGUAGE QuasiQuotes #-}

module Gen.Render.RenderJsonInstances
  ( renderToJSON
  , renderToResourceProperties
  ) where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Text.Shakespeare.Text (st)

import Gen.Render.Types
import Gen.Specifications

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
    { resourcePropertiesType = "#{moduleResourceType}"
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
  T.intercalate leader $ map renderField moduleProperties
  where
    leader = "\n" <> T.pack (replicate spaces ' ') <> ", "
    renderField Property{..} =
      if propertyRequired
      then [st|(Just . ("#{propertyName}",) . toJSON) #{moduleFieldPrefix}#{propertyName}|]
      else [st|fmap (("#{propertyName}",) . toJSON) #{moduleFieldPrefix}#{propertyName}|]
