module Stratosphere.MediaLive.Channel.MultiplexContainerSettingsProperty (
        module Exports, MultiplexContainerSettingsProperty(..),
        mkMultiplexContainerSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MultiplexM2tsSettingsProperty as Exports
import Stratosphere.ResourceProperties
data MultiplexContainerSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexcontainersettings.html>
    MultiplexContainerSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexcontainersettings.html#cfn-medialive-channel-multiplexcontainersettings-multiplexm2tssettings>
                                        multiplexM2tsSettings :: (Prelude.Maybe MultiplexM2tsSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexContainerSettingsProperty ::
  MultiplexContainerSettingsProperty
mkMultiplexContainerSettingsProperty
  = MultiplexContainerSettingsProperty
      {haddock_workaround_ = (), multiplexM2tsSettings = Prelude.Nothing}
instance ToResourceProperties MultiplexContainerSettingsProperty where
  toResourceProperties MultiplexContainerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexContainerSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MultiplexM2tsSettings"
                              Prelude.<$> multiplexM2tsSettings])}
instance JSON.ToJSON MultiplexContainerSettingsProperty where
  toJSON MultiplexContainerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MultiplexM2tsSettings"
                 Prelude.<$> multiplexM2tsSettings]))
instance Property "MultiplexM2tsSettings" MultiplexContainerSettingsProperty where
  type PropertyType "MultiplexM2tsSettings" MultiplexContainerSettingsProperty = MultiplexM2tsSettingsProperty
  set newValue MultiplexContainerSettingsProperty {..}
    = MultiplexContainerSettingsProperty
        {multiplexM2tsSettings = Prelude.pure newValue, ..}