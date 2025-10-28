module Stratosphere.MediaLive.Channel.TeletextDestinationSettingsProperty (
        TeletextDestinationSettingsProperty(..),
        mkTeletextDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TeletextDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextdestinationsettings.html>
    TeletextDestinationSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTeletextDestinationSettingsProperty ::
  TeletextDestinationSettingsProperty
mkTeletextDestinationSettingsProperty
  = TeletextDestinationSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties TeletextDestinationSettingsProperty where
  toResourceProperties TeletextDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TeletextDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON TeletextDestinationSettingsProperty where
  toJSON TeletextDestinationSettingsProperty {} = JSON.object []