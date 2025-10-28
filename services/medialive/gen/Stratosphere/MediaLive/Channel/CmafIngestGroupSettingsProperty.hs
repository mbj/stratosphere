module Stratosphere.MediaLive.Channel.CmafIngestGroupSettingsProperty (
        module Exports, CmafIngestGroupSettingsProperty(..),
        mkCmafIngestGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafIngestGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html>
    CmafIngestGroupSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-destination>
                                     destination :: (Prelude.Maybe OutputLocationRefProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-nielsenid3behavior>
                                     nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-scte35type>
                                     scte35Type :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-segmentlength>
                                     segmentLength :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-segmentlengthunits>
                                     segmentLengthUnits :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestgroupsettings.html#cfn-medialive-channel-cmafingestgroupsettings-senddelayms>
                                     sendDelayMs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafIngestGroupSettingsProperty ::
  CmafIngestGroupSettingsProperty
mkCmafIngestGroupSettingsProperty
  = CmafIngestGroupSettingsProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       nielsenId3Behavior = Prelude.Nothing, scte35Type = Prelude.Nothing,
       segmentLength = Prelude.Nothing,
       segmentLengthUnits = Prelude.Nothing,
       sendDelayMs = Prelude.Nothing}
instance ToResourceProperties CmafIngestGroupSettingsProperty where
  toResourceProperties CmafIngestGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CmafIngestGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "Scte35Type" Prelude.<$> scte35Type,
                            (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
                            (JSON..=) "SegmentLengthUnits" Prelude.<$> segmentLengthUnits,
                            (JSON..=) "SendDelayMs" Prelude.<$> sendDelayMs])}
instance JSON.ToJSON CmafIngestGroupSettingsProperty where
  toJSON CmafIngestGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "Scte35Type" Prelude.<$> scte35Type,
               (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
               (JSON..=) "SegmentLengthUnits" Prelude.<$> segmentLengthUnits,
               (JSON..=) "SendDelayMs" Prelude.<$> sendDelayMs]))
instance Property "Destination" CmafIngestGroupSettingsProperty where
  type PropertyType "Destination" CmafIngestGroupSettingsProperty = OutputLocationRefProperty
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" CmafIngestGroupSettingsProperty where
  type PropertyType "NielsenId3Behavior" CmafIngestGroupSettingsProperty = Value Prelude.Text
  set newValue CmafIngestGroupSettingsProperty {..}
    = CmafIngestGroupSettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
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