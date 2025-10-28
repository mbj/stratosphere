module Stratosphere.MediaLive.Channel.AvailConfigurationProperty (
        module Exports, AvailConfigurationProperty(..),
        mkAvailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AvailSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availconfiguration.html>
    AvailConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availconfiguration.html#cfn-medialive-channel-availconfiguration-availsettings>
                                availSettings :: (Prelude.Maybe AvailSettingsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availconfiguration.html#cfn-medialive-channel-availconfiguration-scte35segmentationscope>
                                scte35SegmentationScope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailConfigurationProperty :: AvailConfigurationProperty
mkAvailConfigurationProperty
  = AvailConfigurationProperty
      {haddock_workaround_ = (), availSettings = Prelude.Nothing,
       scte35SegmentationScope = Prelude.Nothing}
instance ToResourceProperties AvailConfigurationProperty where
  toResourceProperties AvailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AvailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailSettings" Prelude.<$> availSettings,
                            (JSON..=) "Scte35SegmentationScope"
                              Prelude.<$> scte35SegmentationScope])}
instance JSON.ToJSON AvailConfigurationProperty where
  toJSON AvailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailSettings" Prelude.<$> availSettings,
               (JSON..=) "Scte35SegmentationScope"
                 Prelude.<$> scte35SegmentationScope]))
instance Property "AvailSettings" AvailConfigurationProperty where
  type PropertyType "AvailSettings" AvailConfigurationProperty = AvailSettingsProperty
  set newValue AvailConfigurationProperty {..}
    = AvailConfigurationProperty
        {availSettings = Prelude.pure newValue, ..}
instance Property "Scte35SegmentationScope" AvailConfigurationProperty where
  type PropertyType "Scte35SegmentationScope" AvailConfigurationProperty = Value Prelude.Text
  set newValue AvailConfigurationProperty {..}
    = AvailConfigurationProperty
        {scte35SegmentationScope = Prelude.pure newValue, ..}