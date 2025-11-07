module Stratosphere.MediaLive.Channel.CmafIngestGroupSettingsProperty (
        module Exports, CmafIngestGroupSettingsProperty(..),
        mkCmafIngestGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AdditionalDestinationsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CmafIngestCaptionLanguageMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafIngestGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html>
    CmafIngestGroupSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-additionaldestinations>
                                     additionalDestinations :: (Prelude.Maybe [AdditionalDestinationsProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-captionlanguagemappings>
                                     captionLanguageMappings :: (Prelude.Maybe [CmafIngestCaptionLanguageMappingProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-destination>
                                     destination :: (Prelude.Maybe OutputLocationRefProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-id3behavior>
                                     id3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-id3namemodifier>
                                     id3NameModifier :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-klvbehavior>
                                     klvBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-klvnamemodifier>
                                     klvNameModifier :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-nielsenid3behavior>
                                     nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-nielsenid3namemodifier>
                                     nielsenId3NameModifier :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-scte35namemodifier>
                                     scte35NameModifier :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-scte35type>
                                     scte35Type :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-segmentlength>
                                     segmentLength :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-segmentlengthunits>
                                     segmentLengthUnits :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-senddelayms>
                                     sendDelayMs :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-timedmetadataid3frame>
                                     timedMetadataId3Frame :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-timedmetadataid3period>
                                     timedMetadataId3Period :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-timedmetadatapassthrough>
                                     timedMetadataPassthrough :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafIngestGroupSettingsProperty ::
  CmafIngestGroupSettingsProperty
mkCmafIngestGroupSettingsProperty
  = CmafIngestGroupSettingsProperty
      {haddock_workaround_ = (),
       additionalDestinations = Prelude.Nothing,
       captionLanguageMappings = Prelude.Nothing,
       destination = Prelude.Nothing, id3Behavior = Prelude.Nothing,
       id3NameModifier = Prelude.Nothing, klvBehavior = Prelude.Nothing,
       klvNameModifier = Prelude.Nothing,
       nielsenId3Behavior = Prelude.Nothing,
       nielsenId3NameModifier = Prelude.Nothing,
       scte35NameModifier = Prelude.Nothing, scte35Type = Prelude.Nothing,
       segmentLength = Prelude.Nothing,
       segmentLengthUnits = Prelude.Nothing,
       sendDelayMs = Prelude.Nothing,
       timedMetadataId3Frame = Prelude.Nothing,
       timedMetadataId3Period = Prelude.Nothing,
       timedMetadataPassthrough = Prelude.Nothing}
instance ToResourceProperties CmafIngestGroupSettingsProperty where
  toResourceProperties CmafIngestGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CmafIngestGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalDestinations"
                              Prelude.<$> additionalDestinations,
                            (JSON..=) "CaptionLanguageMappings"
                              Prelude.<$> captionLanguageMappings,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "Id3Behavior" Prelude.<$> id3Behavior,
                            (JSON..=) "Id3NameModifier" Prelude.<$> id3NameModifier,
                            (JSON..=) "KlvBehavior" Prelude.<$> klvBehavior,
                            (JSON..=) "KlvNameModifier" Prelude.<$> klvNameModifier,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "NielsenId3NameModifier"
                              Prelude.<$> nielsenId3NameModifier,
                            (JSON..=) "Scte35NameModifier" Prelude.<$> scte35NameModifier,
                            (JSON..=) "Scte35Type" Prelude.<$> scte35Type,
                            (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
                            (JSON..=) "SegmentLengthUnits" Prelude.<$> segmentLengthUnits,
                            (JSON..=) "SendDelayMs" Prelude.<$> sendDelayMs,
                            (JSON..=) "TimedMetadataId3Frame"
                              Prelude.<$> timedMetadataId3Frame,
                            (JSON..=) "TimedMetadataId3Period"
                              Prelude.<$> timedMetadataId3Period,
                            (JSON..=) "TimedMetadataPassthrough"
                              Prelude.<$> timedMetadataPassthrough])}
instance JSON.ToJSON CmafIngestGroupSettingsProperty where
  toJSON CmafIngestGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalDestinations"
                 Prelude.<$> additionalDestinations,
               (JSON..=) "CaptionLanguageMappings"
                 Prelude.<$> captionLanguageMappings,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "Id3Behavior" Prelude.<$> id3Behavior,
               (JSON..=) "Id3NameModifier" Prelude.<$> id3NameModifier,
               (JSON..=) "KlvBehavior" Prelude.<$> klvBehavior,
               (JSON..=) "KlvNameModifier" Prelude.<$> klvNameModifier,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "NielsenId3NameModifier"
                 Prelude.<$> nielsenId3NameModifier,
               (JSON..=) "Scte35NameModifier" Prelude.<$> scte35NameModifier,
               (JSON..=) "Scte35Type" Prelude.<$> scte35Type,
               (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
               (JSON..=) "SegmentLengthUnits" Prelude.<$> segmentLengthUnits,
               (JSON..=) "SendDelayMs" Prelude.<$> sendDelayMs,
               (JSON..=) "TimedMetadataId3Frame"
                 Prelude.<$> timedMetadataId3Frame,
               (JSON..=) "TimedMetadataId3Period"
                 Prelude.<$> timedMetadataId3Period,
               (JSON..=) "TimedMetadataPassthrough"
                 Prelude.<$> timedMetadataPassthrough]))
instance Property "AdditionalDestinations" CmafIngestGroupSettingsProperty where
  type PropertyType "AdditionalDestinations" CmafIngestGroupSettingsProperty = [AdditionalDestinationsProperty]
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {additionalDestinations = Prelude.pure newValue, ..}
instance Property "CaptionLanguageMappings" CmafIngestGroupSettingsProperty where
  type PropertyType "CaptionLanguageMappings" CmafIngestGroupSettingsProperty = [CmafIngestCaptionLanguageMappingProperty]
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {captionLanguageMappings = Prelude.pure newValue, ..}
instance Property "Destination" CmafIngestGroupSettingsProperty where
  type PropertyType "Destination" CmafIngestGroupSettingsProperty = OutputLocationRefProperty
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "Id3Behavior" CmafIngestGroupSettingsProperty where
  type PropertyType "Id3Behavior" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {id3Behavior = Prelude.pure newValue, ..}
instance Property "Id3NameModifier" CmafIngestGroupSettingsProperty where
  type PropertyType "Id3NameModifier" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {id3NameModifier = Prelude.pure newValue, ..}
instance Property "KlvBehavior" CmafIngestGroupSettingsProperty where
  type PropertyType "KlvBehavior" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {klvBehavior = Prelude.pure newValue, ..}
instance Property "KlvNameModifier" CmafIngestGroupSettingsProperty where
  type PropertyType "KlvNameModifier" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {klvNameModifier = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" CmafIngestGroupSettingsProperty where
  type PropertyType "NielsenId3Behavior" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
instance Property "NielsenId3NameModifier" CmafIngestGroupSettingsProperty where
  type PropertyType "NielsenId3NameModifier" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {nielsenId3NameModifier = Prelude.pure newValue, ..}
instance Property "Scte35NameModifier" CmafIngestGroupSettingsProperty where
  type PropertyType "Scte35NameModifier" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {scte35NameModifier = Prelude.pure newValue, ..}
instance Property "Scte35Type" CmafIngestGroupSettingsProperty where
  type PropertyType "Scte35Type" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {scte35Type = Prelude.pure newValue, ..}
instance Property "SegmentLength" CmafIngestGroupSettingsProperty where
  type PropertyType "SegmentLength" CmafIngestGroupSettingsProperty = Value Prelude.Integer
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {segmentLength = Prelude.pure newValue, ..}
instance Property "SegmentLengthUnits" CmafIngestGroupSettingsProperty where
  type PropertyType "SegmentLengthUnits" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {segmentLengthUnits = Prelude.pure newValue, ..}
instance Property "SendDelayMs" CmafIngestGroupSettingsProperty where
  type PropertyType "SendDelayMs" CmafIngestGroupSettingsProperty = Value Prelude.Integer
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {sendDelayMs = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Frame" CmafIngestGroupSettingsProperty where
  type PropertyType "TimedMetadataId3Frame" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {timedMetadataId3Frame = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Period" CmafIngestGroupSettingsProperty where
  type PropertyType "TimedMetadataId3Period" CmafIngestGroupSettingsProperty = Value Prelude.Integer
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {timedMetadataId3Period = Prelude.pure newValue, ..}
instance Property "TimedMetadataPassthrough" CmafIngestGroupSettingsProperty where
  type PropertyType "TimedMetadataPassthrough" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {timedMetadataPassthrough = Prelude.pure newValue, ..}