{-# LANGUAGE OverloadedStrings #-}

-- | Derive aeson ToJSON and FromJSON instance.

module Gen.Aeson where

import Control.Lens
import qualified Data.Text as T

import Gen.Resource
import Gen.Types

-- | Renders to ToJSON and FromJSON instances for a resource using Generic
-- deriving.
renderToFromJSON :: Resource -> T.Text
renderToFromJSON res = T.concat [renderToJSON res, "\n\n", renderFromJSON res]

renderFromJSON :: Resource -> T.Text
renderFromJSON res = T.concat ["instance FromJSON ", res ^. name, " where\n",
                               "  parseJSON = genericParseJSON ", options]
  where options = renderOptions res

renderToJSON :: Resource -> T.Text
renderToJSON res = T.concat ["instance ToJSON ", res ^. name, " where\n",
                             "  toJSON = genericToJSON ", options]
  where options = renderOptions res

renderOptions :: Resource -> T.Text
renderOptions res = T.concat ["defaultOptions { ", options, " }"]
  where prefix = fieldPrefix (res ^. name)
        fLabel = T.concat ["fieldLabelModifier = Prelude.drop ",
                           T.pack $ show $ T.length prefix]
        oNothing = "omitNothingFields = True"
        options = T.concat [fLabel, ", ", oNothing]
