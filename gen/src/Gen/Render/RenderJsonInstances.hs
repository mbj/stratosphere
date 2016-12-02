{-# LANGUAGE QuasiQuotes #-}

-- | Derive aeson ToJSON and FromJSON instance.

module Gen.Render.RenderJsonInstances where

import Data.Text (Text)
import qualified Data.Text as T
import Text.Shakespeare.Text (st)

import Gen.Render.Types

-- | Renders to ToJSON and FromJSON instances for a resource using Generic
-- deriving.
renderToFromJSON :: Module -> Text
renderToFromJSON Module{..} =
  [st|instance ToJSON #{moduleName} where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop #{nameLength}, omitNothingFields = True }

instance FromJSON #{moduleName} where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop #{nameLength}, omitNothingFields = True }|]
  where
    nameLength = T.pack (show $ T.length moduleFieldPrefix)
