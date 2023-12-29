module Stratosphere.MediaLive.Channel.M3u8SettingsProperty (
        M3u8SettingsProperty(..), mkM3u8SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data M3u8SettingsProperty
  = M3u8SettingsProperty {audioFramesPerPes :: (Prelude.Maybe (Value Prelude.Integer)),
                          audioPids :: (Prelude.Maybe (Value Prelude.Text)),
                          ecmPid :: (Prelude.Maybe (Value Prelude.Text)),
                          nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                          patInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          pcrControl :: (Prelude.Maybe (Value Prelude.Text)),
                          pcrPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                          pcrPid :: (Prelude.Maybe (Value Prelude.Text)),
                          pmtInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          pmtPid :: (Prelude.Maybe (Value Prelude.Text)),
                          programNum :: (Prelude.Maybe (Value Prelude.Integer)),
                          scte35Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                          scte35Pid :: (Prelude.Maybe (Value Prelude.Text)),
                          timedMetadataBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                          timedMetadataPid :: (Prelude.Maybe (Value Prelude.Text)),
                          transportStreamId :: (Prelude.Maybe (Value Prelude.Integer)),
                          videoPid :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkM3u8SettingsProperty :: M3u8SettingsProperty
mkM3u8SettingsProperty
  = M3u8SettingsProperty
      {audioFramesPerPes = Prelude.Nothing, audioPids = Prelude.Nothing,
       ecmPid = Prelude.Nothing, nielsenId3Behavior = Prelude.Nothing,
       patInterval = Prelude.Nothing, pcrControl = Prelude.Nothing,
       pcrPeriod = Prelude.Nothing, pcrPid = Prelude.Nothing,
       pmtInterval = Prelude.Nothing, pmtPid = Prelude.Nothing,
       programNum = Prelude.Nothing, scte35Behavior = Prelude.Nothing,
       scte35Pid = Prelude.Nothing,
       timedMetadataBehavior = Prelude.Nothing,
       timedMetadataPid = Prelude.Nothing,
       transportStreamId = Prelude.Nothing, videoPid = Prelude.Nothing}
instance ToResourceProperties M3u8SettingsProperty where
  toResourceProperties M3u8SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.M3u8Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioFramesPerPes" Prelude.<$> audioFramesPerPes,
                            (JSON..=) "AudioPids" Prelude.<$> audioPids,
                            (JSON..=) "EcmPid" Prelude.<$> ecmPid,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "PatInterval" Prelude.<$> patInterval,
                            (JSON..=) "PcrControl" Prelude.<$> pcrControl,
                            (JSON..=) "PcrPeriod" Prelude.<$> pcrPeriod,
                            (JSON..=) "PcrPid" Prelude.<$> pcrPid,
                            (JSON..=) "PmtInterval" Prelude.<$> pmtInterval,
                            (JSON..=) "PmtPid" Prelude.<$> pmtPid,
                            (JSON..=) "ProgramNum" Prelude.<$> programNum,
                            (JSON..=) "Scte35Behavior" Prelude.<$> scte35Behavior,
                            (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
                            (JSON..=) "TimedMetadataBehavior"
                              Prelude.<$> timedMetadataBehavior,
                            (JSON..=) "TimedMetadataPid" Prelude.<$> timedMetadataPid,
                            (JSON..=) "TransportStreamId" Prelude.<$> transportStreamId,
                            (JSON..=) "VideoPid" Prelude.<$> videoPid])}
instance JSON.ToJSON M3u8SettingsProperty where
  toJSON M3u8SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioFramesPerPes" Prelude.<$> audioFramesPerPes,
               (JSON..=) "AudioPids" Prelude.<$> audioPids,
               (JSON..=) "EcmPid" Prelude.<$> ecmPid,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "PatInterval" Prelude.<$> patInterval,
               (JSON..=) "PcrControl" Prelude.<$> pcrControl,
               (JSON..=) "PcrPeriod" Prelude.<$> pcrPeriod,
               (JSON..=) "PcrPid" Prelude.<$> pcrPid,
               (JSON..=) "PmtInterval" Prelude.<$> pmtInterval,
               (JSON..=) "PmtPid" Prelude.<$> pmtPid,
               (JSON..=) "ProgramNum" Prelude.<$> programNum,
               (JSON..=) "Scte35Behavior" Prelude.<$> scte35Behavior,
               (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
               (JSON..=) "TimedMetadataBehavior"
                 Prelude.<$> timedMetadataBehavior,
               (JSON..=) "TimedMetadataPid" Prelude.<$> timedMetadataPid,
               (JSON..=) "TransportStreamId" Prelude.<$> transportStreamId,
               (JSON..=) "VideoPid" Prelude.<$> videoPid]))
instance Property "AudioFramesPerPes" M3u8SettingsProperty where
  type PropertyType "AudioFramesPerPes" M3u8SettingsProperty = Value Prelude.Integer
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty
        {audioFramesPerPes = Prelude.pure newValue, ..}
instance Property "AudioPids" M3u8SettingsProperty where
  type PropertyType "AudioPids" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {audioPids = Prelude.pure newValue, ..}
instance Property "EcmPid" M3u8SettingsProperty where
  type PropertyType "EcmPid" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {ecmPid = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" M3u8SettingsProperty where
  type PropertyType "NielsenId3Behavior" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
instance Property "PatInterval" M3u8SettingsProperty where
  type PropertyType "PatInterval" M3u8SettingsProperty = Value Prelude.Integer
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {patInterval = Prelude.pure newValue, ..}
instance Property "PcrControl" M3u8SettingsProperty where
  type PropertyType "PcrControl" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {pcrControl = Prelude.pure newValue, ..}
instance Property "PcrPeriod" M3u8SettingsProperty where
  type PropertyType "PcrPeriod" M3u8SettingsProperty = Value Prelude.Integer
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {pcrPeriod = Prelude.pure newValue, ..}
instance Property "PcrPid" M3u8SettingsProperty where
  type PropertyType "PcrPid" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {pcrPid = Prelude.pure newValue, ..}
instance Property "PmtInterval" M3u8SettingsProperty where
  type PropertyType "PmtInterval" M3u8SettingsProperty = Value Prelude.Integer
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {pmtInterval = Prelude.pure newValue, ..}
instance Property "PmtPid" M3u8SettingsProperty where
  type PropertyType "PmtPid" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {pmtPid = Prelude.pure newValue, ..}
instance Property "ProgramNum" M3u8SettingsProperty where
  type PropertyType "ProgramNum" M3u8SettingsProperty = Value Prelude.Integer
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {programNum = Prelude.pure newValue, ..}
instance Property "Scte35Behavior" M3u8SettingsProperty where
  type PropertyType "Scte35Behavior" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {scte35Behavior = Prelude.pure newValue, ..}
instance Property "Scte35Pid" M3u8SettingsProperty where
  type PropertyType "Scte35Pid" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {scte35Pid = Prelude.pure newValue, ..}
instance Property "TimedMetadataBehavior" M3u8SettingsProperty where
  type PropertyType "TimedMetadataBehavior" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty
        {timedMetadataBehavior = Prelude.pure newValue, ..}
instance Property "TimedMetadataPid" M3u8SettingsProperty where
  type PropertyType "TimedMetadataPid" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty
        {timedMetadataPid = Prelude.pure newValue, ..}
instance Property "TransportStreamId" M3u8SettingsProperty where
  type PropertyType "TransportStreamId" M3u8SettingsProperty = Value Prelude.Integer
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty
        {transportStreamId = Prelude.pure newValue, ..}
instance Property "VideoPid" M3u8SettingsProperty where
  type PropertyType "VideoPid" M3u8SettingsProperty = Value Prelude.Text
  set newValue M3u8SettingsProperty {..}
    = M3u8SettingsProperty {videoPid = Prelude.pure newValue, ..}