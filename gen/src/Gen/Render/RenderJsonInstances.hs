-- | Derive aeson ToJSON and FromJSON instance.

module Gen.Render.RenderJsonInstances where

import Data.Text (Text)
import qualified Data.Text as T

import Gen.Render.RenderTypes
import Gen.Render.Types

-- | Renders to ToJSON and FromJSON instances for a resource using Generic
-- deriving.
renderToFromJSON :: Module -> Text
renderToFromJSON module' = T.concat [renderToJSON module', "\n\n", renderFromJSON module']

renderFromJSON :: Module -> Text
renderFromJSON module' =
  T.concat ["instance FromJSON ", moduleName module', " where\n", "  parseJSON = genericParseJSON ", renderOptions module']

renderToJSON :: Module -> Text
renderToJSON module' =
  T.concat ["instance ToJSON ", moduleName module', " where\n", "  toJSON = genericToJSON ", renderOptions module']

renderOptions :: Module -> Text
renderOptions Module {..} = T.concat ["defaultOptions { ", options, " }"]
  where
    prefix = fieldPrefix moduleName
    fLabel = T.concat ["fieldLabelModifier = Prelude.drop ",
                        T.pack $ show $ T.length prefix]
    oNothing = "omitNothingFields = True"
    options = T.concat [fLabel, ", ", oNothing]
