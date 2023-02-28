module Stratosphere.MediaLive.Channel.MsSmoothGroupSettingsProperty (
        module Exports, MsSmoothGroupSettingsProperty(..),
        mkMsSmoothGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MsSmoothGroupSettingsProperty
  = MsSmoothGroupSettingsProperty {acquisitionPointId :: (Prelude.Maybe (Value Prelude.Text)),
                                   audioOnlyTimecodeControl :: (Prelude.Maybe (Value Prelude.Text)),
                                   certificateMode :: (Prelude.Maybe (Value Prelude.Text)),
                                   connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                   destination :: (Prelude.Maybe OutputLocationRefProperty),
                                   eventId :: (Prelude.Maybe (Value Prelude.Text)),
                                   eventIdMode :: (Prelude.Maybe (Value Prelude.Text)),
                                   eventStopBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                   filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                                   fragmentLength :: (Prelude.Maybe (Value Prelude.Integer)),
                                   inputLossAction :: (Prelude.Maybe (Value Prelude.Text)),
                                   numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                                   restartDelay :: (Prelude.Maybe (Value Prelude.Integer)),
                                   segmentationMode :: (Prelude.Maybe (Value Prelude.Text)),
                                   sendDelayMs :: (Prelude.Maybe (Value Prelude.Integer)),
                                   sparseTrackType :: (Prelude.Maybe (Value Prelude.Text)),
                                   streamManifestBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                   timestampOffset :: (Prelude.Maybe (Value Prelude.Text)),
                                   timestampOffsetMode :: (Prelude.Maybe (Value Prelude.Text))}
mkMsSmoothGroupSettingsProperty :: MsSmoothGroupSettingsProperty
mkMsSmoothGroupSettingsProperty
  = MsSmoothGroupSettingsProperty
      {acquisitionPointId = Prelude.Nothing,
       audioOnlyTimecodeControl = Prelude.Nothing,
       certificateMode = Prelude.Nothing,
       connectionRetryInterval = Prelude.Nothing,
       destination = Prelude.Nothing, eventId = Prelude.Nothing,
       eventIdMode = Prelude.Nothing, eventStopBehavior = Prelude.Nothing,
       filecacheDuration = Prelude.Nothing,
       fragmentLength = Prelude.Nothing,
       inputLossAction = Prelude.Nothing, numRetries = Prelude.Nothing,
       restartDelay = Prelude.Nothing, segmentationMode = Prelude.Nothing,
       sendDelayMs = Prelude.Nothing, sparseTrackType = Prelude.Nothing,
       streamManifestBehavior = Prelude.Nothing,
       timestampOffset = Prelude.Nothing,
       timestampOffsetMode = Prelude.Nothing}
instance ToResourceProperties MsSmoothGroupSettingsProperty where
  toResourceProperties MsSmoothGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MsSmoothGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcquisitionPointId" Prelude.<$> acquisitionPointId,
                            (JSON..=) "AudioOnlyTimecodeControl"
                              Prelude.<$> audioOnlyTimecodeControl,
                            (JSON..=) "CertificateMode" Prelude.<$> certificateMode,
                            (JSON..=) "ConnectionRetryInterval"
                              Prelude.<$> connectionRetryInterval,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "EventId" Prelude.<$> eventId,
                            (JSON..=) "EventIdMode" Prelude.<$> eventIdMode,
                            (JSON..=) "EventStopBehavior" Prelude.<$> eventStopBehavior,
                            (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
                            (JSON..=) "FragmentLength" Prelude.<$> fragmentLength,
                            (JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
                            (JSON..=) "NumRetries" Prelude.<$> numRetries,
                            (JSON..=) "RestartDelay" Prelude.<$> restartDelay,
                            (JSON..=) "SegmentationMode" Prelude.<$> segmentationMode,
                            (JSON..=) "SendDelayMs" Prelude.<$> sendDelayMs,
                            (JSON..=) "SparseTrackType" Prelude.<$> sparseTrackType,
                            (JSON..=) "StreamManifestBehavior"
                              Prelude.<$> streamManifestBehavior,
                            (JSON..=) "TimestampOffset" Prelude.<$> timestampOffset,
                            (JSON..=) "TimestampOffsetMode" Prelude.<$> timestampOffsetMode])}
instance JSON.ToJSON MsSmoothGroupSettingsProperty where
  toJSON MsSmoothGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcquisitionPointId" Prelude.<$> acquisitionPointId,
               (JSON..=) "AudioOnlyTimecodeControl"
                 Prelude.<$> audioOnlyTimecodeControl,
               (JSON..=) "CertificateMode" Prelude.<$> certificateMode,
               (JSON..=) "ConnectionRetryInterval"
                 Prelude.<$> connectionRetryInterval,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "EventId" Prelude.<$> eventId,
               (JSON..=) "EventIdMode" Prelude.<$> eventIdMode,
               (JSON..=) "EventStopBehavior" Prelude.<$> eventStopBehavior,
               (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
               (JSON..=) "FragmentLength" Prelude.<$> fragmentLength,
               (JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
               (JSON..=) "NumRetries" Prelude.<$> numRetries,
               (JSON..=) "RestartDelay" Prelude.<$> restartDelay,
               (JSON..=) "SegmentationMode" Prelude.<$> segmentationMode,
               (JSON..=) "SendDelayMs" Prelude.<$> sendDelayMs,
               (JSON..=) "SparseTrackType" Prelude.<$> sparseTrackType,
               (JSON..=) "StreamManifestBehavior"
                 Prelude.<$> streamManifestBehavior,
               (JSON..=) "TimestampOffset" Prelude.<$> timestampOffset,
               (JSON..=) "TimestampOffsetMode" Prelude.<$> timestampOffsetMode]))
instance Property "AcquisitionPointId" MsSmoothGroupSettingsProperty where
  type PropertyType "AcquisitionPointId" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {acquisitionPointId = Prelude.pure newValue, ..}
instance Property "AudioOnlyTimecodeControl" MsSmoothGroupSettingsProperty where
  type PropertyType "AudioOnlyTimecodeControl" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {audioOnlyTimecodeControl = Prelude.pure newValue, ..}
instance Property "CertificateMode" MsSmoothGroupSettingsProperty where
  type PropertyType "CertificateMode" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {certificateMode = Prelude.pure newValue, ..}
instance Property "ConnectionRetryInterval" MsSmoothGroupSettingsProperty where
  type PropertyType "ConnectionRetryInterval" MsSmoothGroupSettingsProperty = Value Prelude.Integer
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {connectionRetryInterval = Prelude.pure newValue, ..}
instance Property "Destination" MsSmoothGroupSettingsProperty where
  type PropertyType "Destination" MsSmoothGroupSettingsProperty = OutputLocationRefProperty
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "EventId" MsSmoothGroupSettingsProperty where
  type PropertyType "EventId" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {eventId = Prelude.pure newValue, ..}
instance Property "EventIdMode" MsSmoothGroupSettingsProperty where
  type PropertyType "EventIdMode" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {eventIdMode = Prelude.pure newValue, ..}
instance Property "EventStopBehavior" MsSmoothGroupSettingsProperty where
  type PropertyType "EventStopBehavior" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {eventStopBehavior = Prelude.pure newValue, ..}
instance Property "FilecacheDuration" MsSmoothGroupSettingsProperty where
  type PropertyType "FilecacheDuration" MsSmoothGroupSettingsProperty = Value Prelude.Integer
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {filecacheDuration = Prelude.pure newValue, ..}
instance Property "FragmentLength" MsSmoothGroupSettingsProperty where
  type PropertyType "FragmentLength" MsSmoothGroupSettingsProperty = Value Prelude.Integer
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {fragmentLength = Prelude.pure newValue, ..}
instance Property "InputLossAction" MsSmoothGroupSettingsProperty where
  type PropertyType "InputLossAction" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {inputLossAction = Prelude.pure newValue, ..}
instance Property "NumRetries" MsSmoothGroupSettingsProperty where
  type PropertyType "NumRetries" MsSmoothGroupSettingsProperty = Value Prelude.Integer
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {numRetries = Prelude.pure newValue, ..}
instance Property "RestartDelay" MsSmoothGroupSettingsProperty where
  type PropertyType "RestartDelay" MsSmoothGroupSettingsProperty = Value Prelude.Integer
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {restartDelay = Prelude.pure newValue, ..}
instance Property "SegmentationMode" MsSmoothGroupSettingsProperty where
  type PropertyType "SegmentationMode" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {segmentationMode = Prelude.pure newValue, ..}
instance Property "SendDelayMs" MsSmoothGroupSettingsProperty where
  type PropertyType "SendDelayMs" MsSmoothGroupSettingsProperty = Value Prelude.Integer
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {sendDelayMs = Prelude.pure newValue, ..}
instance Property "SparseTrackType" MsSmoothGroupSettingsProperty where
  type PropertyType "SparseTrackType" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {sparseTrackType = Prelude.pure newValue, ..}
instance Property "StreamManifestBehavior" MsSmoothGroupSettingsProperty where
  type PropertyType "StreamManifestBehavior" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {streamManifestBehavior = Prelude.pure newValue, ..}
instance Property "TimestampOffset" MsSmoothGroupSettingsProperty where
  type PropertyType "TimestampOffset" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {timestampOffset = Prelude.pure newValue, ..}
instance Property "TimestampOffsetMode" MsSmoothGroupSettingsProperty where
  type PropertyType "TimestampOffsetMode" MsSmoothGroupSettingsProperty = Value Prelude.Text
  set newValue MsSmoothGroupSettingsProperty {..}
    = MsSmoothGroupSettingsProperty
        {timestampOffsetMode = Prelude.pure newValue, ..}