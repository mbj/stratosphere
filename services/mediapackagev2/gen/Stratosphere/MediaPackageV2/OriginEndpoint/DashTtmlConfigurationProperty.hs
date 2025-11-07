module Stratosphere.MediaPackageV2.OriginEndpoint.DashTtmlConfigurationProperty (
        DashTtmlConfigurationProperty(..), mkDashTtmlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashTtmlConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashttmlconfiguration.html>
    DashTtmlConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashttmlconfiguration.html#cfn-mediapackagev2-originendpoint-dashttmlconfiguration-ttmlprofile>
                                   ttmlProfile :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashTtmlConfigurationProperty ::
  Value Prelude.Text -> DashTtmlConfigurationProperty
mkDashTtmlConfigurationProperty ttmlProfile
  = DashTtmlConfigurationProperty
      {haddock_workaround_ = (), ttmlProfile = ttmlProfile}
instance ToResourceProperties DashTtmlConfigurationProperty where
  toResourceProperties DashTtmlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashTtmlConfiguration",
         supportsTags = Prelude.False,
         properties = ["TtmlProfile" JSON..= ttmlProfile]}
instance JSON.ToJSON DashTtmlConfigurationProperty where
  toJSON DashTtmlConfigurationProperty {..}
    = JSON.object ["TtmlProfile" JSON..= ttmlProfile]
instance Property "TtmlProfile" DashTtmlConfigurationProperty where
  type PropertyType "TtmlProfile" DashTtmlConfigurationProperty = Value Prelude.Text
  set newValue DashTtmlConfigurationProperty {..}
    = DashTtmlConfigurationProperty {ttmlProfile = newValue, ..}