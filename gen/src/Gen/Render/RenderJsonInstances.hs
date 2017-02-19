{-# LANGUAGE QuasiQuotes #-}

-- | Derive aeson ToJSON and FromJSON instance.

module Gen.Render.RenderJsonInstances where

import Data.Text (Text)
import qualified Data.Text as T
import Text.Shakespeare.Text (st)

import Gen.Render.Types
import Gen.Specifications

-- | Renders to ToJSON and FromJSON instances for a resource.
renderToFromJSON :: Module -> Text
renderToFromJSON module'@Module{..} =
  [st|instance ToJSON #{moduleName} where
  #{renderToJSON module'}

instance FromJSON #{moduleName} where
  #{renderFromJSON module'}
  parseJSON _ = mempty|]

renderToJSON :: Module -> Text
renderToJSON module'@Module{..}
  | null moduleProperties = "toJSON _ = toJSON ([] :: [String])"
  | otherwise =
      [st|toJSON #{moduleName}{..} =
    object $
    catMaybes
    [ #{renderToJSONFields module'}
    ]|]

renderToJSONFields :: Module -> Text
renderToJSONFields Module{..} =
  T.intercalate "\n    , " $ map renderField moduleProperties
  where
    renderField Property{..} =
      if propertyRequired
      then [st|Just ("#{propertyName}" .= #{moduleFieldPrefix}#{propertyName})|]
      else [st|("#{propertyName}" .=) <$> #{moduleFieldPrefix}#{propertyName}|]

renderFromJSON :: Module -> Text
renderFromJSON module'@Module{..}
  | null moduleProperties = [st|parseJSON (Array _) = return #{moduleName}|]
  | otherwise =
      [st|parseJSON (Object obj) =
    #{moduleName} <$>
      #{renderFromJSONFields module'}|]

renderFromJSONFields :: Module -> Text
renderFromJSONFields Module{..} =
  T.intercalate " <*>\n      " $ map renderField moduleProperties
  where
    renderField Property{..} =
      if propertyRequired
      then [st|obj .: "#{propertyName}"|]
      else [st|obj .:? "#{propertyName}"|]
