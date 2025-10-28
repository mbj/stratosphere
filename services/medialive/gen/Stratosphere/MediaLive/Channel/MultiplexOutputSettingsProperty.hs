module Stratosphere.MediaLive.Channel.MultiplexOutputSettingsProperty (
        module Exports, MultiplexOutputSettingsProperty(..),
        mkMultiplexOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MultiplexContainerSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
data MultiplexOutputSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexoutputsettings.html>
    MultiplexOutputSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexoutputsettings.html#cfn-medialive-channel-multiplexoutputsettings-containersettings>
                                     containerSettings :: (Prelude.Maybe MultiplexContainerSettingsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexoutputsettings.html#cfn-medialive-channel-multiplexoutputsettings-destination>
                                     destination :: (Prelude.Maybe OutputLocationRefProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexOutputSettingsProperty ::
  MultiplexOutputSettingsProperty
mkMultiplexOutputSettingsProperty
  = MultiplexOutputSettingsProperty
      {haddock_workaround_ = (), containerSettings = Prelude.Nothing,
       destination = Prelude.Nothing}
instance ToResourceProperties MultiplexOutputSettingsProperty where
  toResourceProperties MultiplexOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
                            (JSON..=) "Destination" Prelude.<$> destination])}
instance JSON.ToJSON MultiplexOutputSettingsProperty where
  toJSON MultiplexOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
               (JSON..=) "Destination" Prelude.<$> destination]))
instance Property "ContainerSettings" MultiplexOutputSettingsProperty where
  type PropertyType "ContainerSettings" MultiplexOutputSettingsProperty = MultiplexContainerSettingsProperty
  set newValue MultiplexOutputSettingsProperty {..}
    = MultiplexOutputSettingsProperty
        {containerSettings = Prelude.pure newValue, ..}
instance Property "Destination" MultiplexOutputSettingsProperty where
  type PropertyType "Destination" MultiplexOutputSettingsProperty = OutputLocationRefProperty
  set newValue MultiplexOutputSettingsProperty {..}
    = MultiplexOutputSettingsProperty
        {destination = Prelude.pure newValue, ..}