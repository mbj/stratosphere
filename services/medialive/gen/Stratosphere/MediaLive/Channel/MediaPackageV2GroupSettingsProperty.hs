module Stratosphere.MediaLive.Channel.MediaPackageV2GroupSettingsProperty (
        module Exports, MediaPackageV2GroupSettingsProperty(..),
        mkMediaPackageV2GroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionLanguageMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaPackageV2GroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html>
    MediaPackageV2GroupSettingsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-captionlanguagemappings>
                                         captionLanguageMappings :: (Prelude.Maybe [CaptionLanguageMappingProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-id3behavior>
                                         id3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-klvbehavior>
                                         klvBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-nielsenid3behavior>
                                         nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-scte35type>
                                         scte35Type :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-segmentlength>
                                         segmentLength :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-segmentlengthunits>
                                         segmentLengthUnits :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-timedmetadataid3frame>
                                         timedMetadataId3Frame :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-timedmetadataid3period>
                                         timedMetadataId3Period :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2groupsettings.html#cfn-medialive-channel-mediapackagev2groupsettings-timedmetadatapassthrough>
                                         timedMetadataPassthrough :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageV2GroupSettingsProperty ::
  MediaPackageV2GroupSettingsProperty
mkMediaPackageV2GroupSettingsProperty
  = MediaPackageV2GroupSettingsProperty
      {haddock_workaround_ = (),
       captionLanguageMappings = Prelude.Nothing,
       id3Behavior = Prelude.Nothing, klvBehavior = Prelude.Nothing,
       nielsenId3Behavior = Prelude.Nothing, scte35Type = Prelude.Nothing,
       segmentLength = Prelude.Nothing,
       segmentLengthUnits = Prelude.Nothing,
       timedMetadataId3Frame = Prelude.Nothing,
       timedMetadataId3Period = Prelude.Nothing,
       timedMetadataPassthrough = Prelude.Nothing}
instance ToResourceProperties MediaPackageV2GroupSettingsProperty where
  toResourceProperties MediaPackageV2GroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageV2GroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaptionLanguageMappings"
                              Prelude.<$> captionLanguageMappings,
                            (JSON..=) "Id3Behavior" Prelude.<$> id3Behavior,
                            (JSON..=) "KlvBehavior" Prelude.<$> klvBehavior,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "Scte35Type" Prelude.<$> scte35Type,
                            (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
                            (JSON..=) "SegmentLengthUnits" Prelude.<$> segmentLengthUnits,
                            (JSON..=) "TimedMetadataId3Frame"
                              Prelude.<$> timedMetadataId3Frame,
                            (JSON..=) "TimedMetadataId3Period"
                              Prelude.<$> timedMetadataId3Period,
                            (JSON..=) "TimedMetadataPassthrough"
                              Prelude.<$> timedMetadataPassthrough])}
instance JSON.ToJSON MediaPackageV2GroupSettingsProperty where
  toJSON MediaPackageV2GroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaptionLanguageMappings"
                 Prelude.<$> captionLanguageMappings,
               (JSON..=) "Id3Behavior" Prelude.<$> id3Behavior,
               (JSON..=) "KlvBehavior" Prelude.<$> klvBehavior,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "Scte35Type" Prelude.<$> scte35Type,
               (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
               (JSON..=) "SegmentLengthUnits" Prelude.<$> segmentLengthUnits,
               (JSON..=) "TimedMetadataId3Frame"
                 Prelude.<$> timedMetadataId3Frame,
               (JSON..=) "TimedMetadataId3Period"
                 Prelude.<$> timedMetadataId3Period,
               (JSON..=) "TimedMetadataPassthrough"
                 Prelude.<$> timedMetadataPassthrough]))
instance Property "CaptionLanguageMappings" MediaPackageV2GroupSettingsProperty where
  type PropertyType "CaptionLanguageMappings" MediaPackageV2GroupSettingsProperty = [CaptionLanguageMappingProperty]
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {captionLanguageMappings = Prelude.pure newValue, ..}
instance Property "Id3Behavior" MediaPackageV2GroupSettingsProperty where
  type PropertyType "Id3Behavior" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {id3Behavior = Prelude.pure newValue, ..}
instance Property "KlvBehavior" MediaPackageV2GroupSettingsProperty where
  type PropertyType "KlvBehavior" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {klvBehavior = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" MediaPackageV2GroupSettingsProperty where
  type PropertyType "NielsenId3Behavior" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
instance Property "Scte35Type" MediaPackageV2GroupSettingsProperty where
  type PropertyType "Scte35Type" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {scte35Type = Prelude.pure newValue, ..}
instance Property "SegmentLength" MediaPackageV2GroupSettingsProperty where
  type PropertyType "SegmentLength" MediaPackageV2GroupSettingsProperty = Value Prelude.Integer
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {segmentLength = Prelude.pure newValue, ..}
instance Property "SegmentLengthUnits" MediaPackageV2GroupSettingsProperty where
  type PropertyType "SegmentLengthUnits" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {segmentLengthUnits = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Frame" MediaPackageV2GroupSettingsProperty where
  type PropertyType "TimedMetadataId3Frame" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {timedMetadataId3Frame = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Period" MediaPackageV2GroupSettingsProperty where
  type PropertyType "TimedMetadataId3Period" MediaPackageV2GroupSettingsProperty = Value Prelude.Integer
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {timedMetadataId3Period = Prelude.pure newValue, ..}
instance Property "TimedMetadataPassthrough" MediaPackageV2GroupSettingsProperty where
  type PropertyType "TimedMetadataPassthrough" MediaPackageV2GroupSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2GroupSettingsProperty {..}
    = MediaPackageV2GroupSettingsProperty
        {timedMetadataPassthrough = Prelude.pure newValue, ..}