module Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramPacketIdentifiersMapProperty (
        MultiplexProgramPacketIdentifiersMapProperty(..),
        mkMultiplexProgramPacketIdentifiersMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexProgramPacketIdentifiersMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html>
    MultiplexProgramPacketIdentifiersMapProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-audiopids>
                                                  audioPids :: (Prelude.Maybe (ValueList Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-dvbsubpids>
                                                  dvbSubPids :: (Prelude.Maybe (ValueList Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-dvbteletextpid>
                                                  dvbTeletextPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-etvplatformpid>
                                                  etvPlatformPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-etvsignalpid>
                                                  etvSignalPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-klvdatapids>
                                                  klvDataPids :: (Prelude.Maybe (ValueList Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-pcrpid>
                                                  pcrPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-pmtpid>
                                                  pmtPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-privatemetadatapid>
                                                  privateMetadataPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-scte27pids>
                                                  scte27Pids :: (Prelude.Maybe (ValueList Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-scte35pid>
                                                  scte35Pid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-timedmetadatapid>
                                                  timedMetadataPid :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap.html#cfn-medialive-multiplexprogram-multiplexprogrampacketidentifiersmap-videopid>
                                                  videoPid :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexProgramPacketIdentifiersMapProperty ::
  MultiplexProgramPacketIdentifiersMapProperty
mkMultiplexProgramPacketIdentifiersMapProperty
  = MultiplexProgramPacketIdentifiersMapProperty
      {haddock_workaround_ = (), audioPids = Prelude.Nothing,
       dvbSubPids = Prelude.Nothing, dvbTeletextPid = Prelude.Nothing,
       etvPlatformPid = Prelude.Nothing, etvSignalPid = Prelude.Nothing,
       klvDataPids = Prelude.Nothing, pcrPid = Prelude.Nothing,
       pmtPid = Prelude.Nothing, privateMetadataPid = Prelude.Nothing,
       scte27Pids = Prelude.Nothing, scte35Pid = Prelude.Nothing,
       timedMetadataPid = Prelude.Nothing, videoPid = Prelude.Nothing}
instance ToResourceProperties MultiplexProgramPacketIdentifiersMapProperty where
  toResourceProperties
    MultiplexProgramPacketIdentifiersMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram.MultiplexProgramPacketIdentifiersMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioPids" Prelude.<$> audioPids,
                            (JSON..=) "DvbSubPids" Prelude.<$> dvbSubPids,
                            (JSON..=) "DvbTeletextPid" Prelude.<$> dvbTeletextPid,
                            (JSON..=) "EtvPlatformPid" Prelude.<$> etvPlatformPid,
                            (JSON..=) "EtvSignalPid" Prelude.<$> etvSignalPid,
                            (JSON..=) "KlvDataPids" Prelude.<$> klvDataPids,
                            (JSON..=) "PcrPid" Prelude.<$> pcrPid,
                            (JSON..=) "PmtPid" Prelude.<$> pmtPid,
                            (JSON..=) "PrivateMetadataPid" Prelude.<$> privateMetadataPid,
                            (JSON..=) "Scte27Pids" Prelude.<$> scte27Pids,
                            (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
                            (JSON..=) "TimedMetadataPid" Prelude.<$> timedMetadataPid,
                            (JSON..=) "VideoPid" Prelude.<$> videoPid])}
instance JSON.ToJSON MultiplexProgramPacketIdentifiersMapProperty where
  toJSON MultiplexProgramPacketIdentifiersMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioPids" Prelude.<$> audioPids,
               (JSON..=) "DvbSubPids" Prelude.<$> dvbSubPids,
               (JSON..=) "DvbTeletextPid" Prelude.<$> dvbTeletextPid,
               (JSON..=) "EtvPlatformPid" Prelude.<$> etvPlatformPid,
               (JSON..=) "EtvSignalPid" Prelude.<$> etvSignalPid,
               (JSON..=) "KlvDataPids" Prelude.<$> klvDataPids,
               (JSON..=) "PcrPid" Prelude.<$> pcrPid,
               (JSON..=) "PmtPid" Prelude.<$> pmtPid,
               (JSON..=) "PrivateMetadataPid" Prelude.<$> privateMetadataPid,
               (JSON..=) "Scte27Pids" Prelude.<$> scte27Pids,
               (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
               (JSON..=) "TimedMetadataPid" Prelude.<$> timedMetadataPid,
               (JSON..=) "VideoPid" Prelude.<$> videoPid]))
instance Property "AudioPids" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "AudioPids" MultiplexProgramPacketIdentifiersMapProperty = ValueList Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {audioPids = Prelude.pure newValue, ..}
instance Property "DvbSubPids" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "DvbSubPids" MultiplexProgramPacketIdentifiersMapProperty = ValueList Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {dvbSubPids = Prelude.pure newValue, ..}
instance Property "DvbTeletextPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "DvbTeletextPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {dvbTeletextPid = Prelude.pure newValue, ..}
instance Property "EtvPlatformPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "EtvPlatformPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {etvPlatformPid = Prelude.pure newValue, ..}
instance Property "EtvSignalPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "EtvSignalPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {etvSignalPid = Prelude.pure newValue, ..}
instance Property "KlvDataPids" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "KlvDataPids" MultiplexProgramPacketIdentifiersMapProperty = ValueList Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {klvDataPids = Prelude.pure newValue, ..}
instance Property "PcrPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "PcrPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {pcrPid = Prelude.pure newValue, ..}
instance Property "PmtPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "PmtPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {pmtPid = Prelude.pure newValue, ..}
instance Property "PrivateMetadataPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "PrivateMetadataPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {privateMetadataPid = Prelude.pure newValue, ..}
instance Property "Scte27Pids" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "Scte27Pids" MultiplexProgramPacketIdentifiersMapProperty = ValueList Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {scte27Pids = Prelude.pure newValue, ..}
instance Property "Scte35Pid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "Scte35Pid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {scte35Pid = Prelude.pure newValue, ..}
instance Property "TimedMetadataPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "TimedMetadataPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {timedMetadataPid = Prelude.pure newValue, ..}
instance Property "VideoPid" MultiplexProgramPacketIdentifiersMapProperty where
  type PropertyType "VideoPid" MultiplexProgramPacketIdentifiersMapProperty = Value Prelude.Integer
  set newValue MultiplexProgramPacketIdentifiersMapProperty {..}
    = MultiplexProgramPacketIdentifiersMapProperty
        {videoPid = Prelude.pure newValue, ..}