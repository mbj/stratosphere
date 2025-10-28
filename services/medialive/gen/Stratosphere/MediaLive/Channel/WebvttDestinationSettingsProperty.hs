module Stratosphere.MediaLive.Channel.WebvttDestinationSettingsProperty (
        WebvttDestinationSettingsProperty(..),
        mkWebvttDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebvttDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-webvttdestinationsettings.html>
    WebvttDestinationSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-webvttdestinationsettings.html#cfn-medialive-channel-webvttdestinationsettings-stylecontrol>
                                       styleControl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebvttDestinationSettingsProperty ::
  WebvttDestinationSettingsProperty
mkWebvttDestinationSettingsProperty
  = WebvttDestinationSettingsProperty
      {haddock_workaround_ = (), styleControl = Prelude.Nothing}
instance ToResourceProperties WebvttDestinationSettingsProperty where
  toResourceProperties WebvttDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.WebvttDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StyleControl" Prelude.<$> styleControl])}
instance JSON.ToJSON WebvttDestinationSettingsProperty where
  toJSON WebvttDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StyleControl" Prelude.<$> styleControl]))
instance Property "StyleControl" WebvttDestinationSettingsProperty where
  type PropertyType "StyleControl" WebvttDestinationSettingsProperty = Value Prelude.Text
  set newValue WebvttDestinationSettingsProperty {..}
    = WebvttDestinationSettingsProperty
        {styleControl = Prelude.pure newValue, ..}