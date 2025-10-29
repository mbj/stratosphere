module Stratosphere.MediaLive.Channel.OutputDestinationProperty (
        module Exports, OutputDestinationProperty(..),
        mkOutputDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MediaPackageOutputDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MultiplexProgramChannelDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.SrtOutputDestinationSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputDestinationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html>
    OutputDestinationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-id>
                               id :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-mediapackagesettings>
                               mediaPackageSettings :: (Prelude.Maybe [MediaPackageOutputDestinationSettingsProperty]),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-multiplexsettings>
                               multiplexSettings :: (Prelude.Maybe MultiplexProgramChannelDestinationSettingsProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-settings>
                               settings :: (Prelude.Maybe [OutputDestinationSettingsProperty]),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-srtsettings>
                               srtSettings :: (Prelude.Maybe [SrtOutputDestinationSettingsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputDestinationProperty :: OutputDestinationProperty
mkOutputDestinationProperty
  = OutputDestinationProperty
      {id = Prelude.Nothing, mediaPackageSettings = Prelude.Nothing,
       multiplexSettings = Prelude.Nothing, settings = Prelude.Nothing,
       srtSettings = Prelude.Nothing}
instance ToResourceProperties OutputDestinationProperty where
  toResourceProperties OutputDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "MediaPackageSettings" Prelude.<$> mediaPackageSettings,
                            (JSON..=) "MultiplexSettings" Prelude.<$> multiplexSettings,
                            (JSON..=) "Settings" Prelude.<$> settings,
                            (JSON..=) "SrtSettings" Prelude.<$> srtSettings])}
instance JSON.ToJSON OutputDestinationProperty where
  toJSON OutputDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "MediaPackageSettings" Prelude.<$> mediaPackageSettings,
               (JSON..=) "MultiplexSettings" Prelude.<$> multiplexSettings,
               (JSON..=) "Settings" Prelude.<$> settings,
               (JSON..=) "SrtSettings" Prelude.<$> srtSettings]))
instance Property "Id" OutputDestinationProperty where
  type PropertyType "Id" OutputDestinationProperty = Value Prelude.Text
  set newValue OutputDestinationProperty {..}
    = OutputDestinationProperty {id = Prelude.pure newValue, ..}
instance Property "MediaPackageSettings" OutputDestinationProperty where
  type PropertyType "MediaPackageSettings" OutputDestinationProperty = [MediaPackageOutputDestinationSettingsProperty]
  set newValue OutputDestinationProperty {..}
    = OutputDestinationProperty
        {mediaPackageSettings = Prelude.pure newValue, ..}
instance Property "MultiplexSettings" OutputDestinationProperty where
  type PropertyType "MultiplexSettings" OutputDestinationProperty = MultiplexProgramChannelDestinationSettingsProperty
  set newValue OutputDestinationProperty {..}
    = OutputDestinationProperty
        {multiplexSettings = Prelude.pure newValue, ..}
instance Property "Settings" OutputDestinationProperty where
  type PropertyType "Settings" OutputDestinationProperty = [OutputDestinationSettingsProperty]
  set newValue OutputDestinationProperty {..}
    = OutputDestinationProperty {settings = Prelude.pure newValue, ..}
instance Property "SrtSettings" OutputDestinationProperty where
  type PropertyType "SrtSettings" OutputDestinationProperty = [SrtOutputDestinationSettingsProperty]
  set newValue OutputDestinationProperty {..}
    = OutputDestinationProperty
        {srtSettings = Prelude.pure newValue, ..}