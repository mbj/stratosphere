module Stratosphere.MediaLive.Channel.SmpteTtDestinationSettingsProperty (
        SmpteTtDestinationSettingsProperty(..),
        mkSmpteTtDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SmpteTtDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-smptettdestinationsettings.html>
    SmpteTtDestinationSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmpteTtDestinationSettingsProperty ::
  SmpteTtDestinationSettingsProperty
mkSmpteTtDestinationSettingsProperty
  = SmpteTtDestinationSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties SmpteTtDestinationSettingsProperty where
  toResourceProperties SmpteTtDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.SmpteTtDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON SmpteTtDestinationSettingsProperty where
  toJSON SmpteTtDestinationSettingsProperty {} = JSON.object []