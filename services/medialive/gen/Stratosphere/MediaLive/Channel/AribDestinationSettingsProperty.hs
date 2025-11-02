module Stratosphere.MediaLive.Channel.AribDestinationSettingsProperty (
        AribDestinationSettingsProperty(..),
        mkAribDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AribDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aribdestinationsettings.html>
    AribDestinationSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAribDestinationSettingsProperty ::
  AribDestinationSettingsProperty
mkAribDestinationSettingsProperty
  = AribDestinationSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties AribDestinationSettingsProperty where
  toResourceProperties AribDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AribDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON AribDestinationSettingsProperty where
  toJSON AribDestinationSettingsProperty {} = JSON.object []