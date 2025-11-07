module Stratosphere.Synthetics.Canary.BrowserConfigProperty (
        BrowserConfigProperty(..), mkBrowserConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BrowserConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-browserconfig.html>
    BrowserConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-browserconfig.html#cfn-synthetics-canary-browserconfig-browsertype>
                           browserType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBrowserConfigProperty ::
  Value Prelude.Text -> BrowserConfigProperty
mkBrowserConfigProperty browserType
  = BrowserConfigProperty
      {haddock_workaround_ = (), browserType = browserType}
instance ToResourceProperties BrowserConfigProperty where
  toResourceProperties BrowserConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.BrowserConfig",
         supportsTags = Prelude.False,
         properties = ["BrowserType" JSON..= browserType]}
instance JSON.ToJSON BrowserConfigProperty where
  toJSON BrowserConfigProperty {..}
    = JSON.object ["BrowserType" JSON..= browserType]
instance Property "BrowserType" BrowserConfigProperty where
  type PropertyType "BrowserType" BrowserConfigProperty = Value Prelude.Text
  set newValue BrowserConfigProperty {..}
    = BrowserConfigProperty {browserType = newValue, ..}