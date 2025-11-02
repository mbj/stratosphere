module Stratosphere.MediaLive.Channel.M2tsSettingsProperty (
        module Exports, M2tsSettingsProperty(..), mkM2tsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.DvbNitSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.DvbSdtSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.DvbTdtSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data M2tsSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html>
    M2tsSettingsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-absentinputaudiobehavior>
                          absentInputAudioBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-arib>
                          arib :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-aribcaptionspid>
                          aribCaptionsPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-aribcaptionspidcontrol>
                          aribCaptionsPidControl :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audiobuffermodel>
                          audioBufferModel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audioframesperpes>
                          audioFramesPerPes :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audiopids>
                          audioPids :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audiostreamtype>
                          audioStreamType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-bitrate>
                          bitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-buffermodel>
                          bufferModel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ccdescriptor>
                          ccDescriptor :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbnitsettings>
                          dvbNitSettings :: (Prelude.Maybe DvbNitSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbsdtsettings>
                          dvbSdtSettings :: (Prelude.Maybe DvbSdtSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbsubpids>
                          dvbSubPids :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbtdtsettings>
                          dvbTdtSettings :: (Prelude.Maybe DvbTdtSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbteletextpid>
                          dvbTeletextPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebif>
                          ebif :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebpaudiointerval>
                          ebpAudioInterval :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebplookaheadms>
                          ebpLookaheadMs :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebpplacement>
                          ebpPlacement :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ecmpid>
                          ecmPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-esrateinpes>
                          esRateInPes :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-etvplatformpid>
                          etvPlatformPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-etvsignalpid>
                          etvSignalPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-fragmenttime>
                          fragmentTime :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-klv>
                          klv :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-klvdatapids>
                          klvDataPids :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-nielsenid3behavior>
                          nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-nullpacketbitrate>
                          nullPacketBitrate :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-patinterval>
                          patInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pcrcontrol>
                          pcrControl :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pcrperiod>
                          pcrPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pcrpid>
                          pcrPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pmtinterval>
                          pmtInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pmtpid>
                          pmtPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-programnum>
                          programNum :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ratemode>
                          rateMode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte27pids>
                          scte27Pids :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte35control>
                          scte35Control :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte35pid>
                          scte35Pid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte35prerollpullupmilliseconds>
                          scte35PrerollPullupMilliseconds :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-segmentationmarkers>
                          segmentationMarkers :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-segmentationstyle>
                          segmentationStyle :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-segmentationtime>
                          segmentationTime :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-timedmetadatabehavior>
                          timedMetadataBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-timedmetadatapid>
                          timedMetadataPid :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-transportstreamid>
                          transportStreamId :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-videopid>
                          videoPid :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkM2tsSettingsProperty :: M2tsSettingsProperty
mkM2tsSettingsProperty
  = M2tsSettingsProperty
      {haddock_workaround_ = (),
       absentInputAudioBehavior = Prelude.Nothing, arib = Prelude.Nothing,
       aribCaptionsPid = Prelude.Nothing,
       aribCaptionsPidControl = Prelude.Nothing,
       audioBufferModel = Prelude.Nothing,
       audioFramesPerPes = Prelude.Nothing, audioPids = Prelude.Nothing,
       audioStreamType = Prelude.Nothing, bitrate = Prelude.Nothing,
       bufferModel = Prelude.Nothing, ccDescriptor = Prelude.Nothing,
       dvbNitSettings = Prelude.Nothing, dvbSdtSettings = Prelude.Nothing,
       dvbSubPids = Prelude.Nothing, dvbTdtSettings = Prelude.Nothing,
       dvbTeletextPid = Prelude.Nothing, ebif = Prelude.Nothing,
       ebpAudioInterval = Prelude.Nothing,
       ebpLookaheadMs = Prelude.Nothing, ebpPlacement = Prelude.Nothing,
       ecmPid = Prelude.Nothing, esRateInPes = Prelude.Nothing,
       etvPlatformPid = Prelude.Nothing, etvSignalPid = Prelude.Nothing,
       fragmentTime = Prelude.Nothing, klv = Prelude.Nothing,
       klvDataPids = Prelude.Nothing,
       nielsenId3Behavior = Prelude.Nothing,
       nullPacketBitrate = Prelude.Nothing, patInterval = Prelude.Nothing,
       pcrControl = Prelude.Nothing, pcrPeriod = Prelude.Nothing,
       pcrPid = Prelude.Nothing, pmtInterval = Prelude.Nothing,
       pmtPid = Prelude.Nothing, programNum = Prelude.Nothing,
       rateMode = Prelude.Nothing, scte27Pids = Prelude.Nothing,
       scte35Control = Prelude.Nothing, scte35Pid = Prelude.Nothing,
       scte35PrerollPullupMilliseconds = Prelude.Nothing,
       segmentationMarkers = Prelude.Nothing,
       segmentationStyle = Prelude.Nothing,
       segmentationTime = Prelude.Nothing,
       timedMetadataBehavior = Prelude.Nothing,
       timedMetadataPid = Prelude.Nothing,
       transportStreamId = Prelude.Nothing, videoPid = Prelude.Nothing}
instance ToResourceProperties M2tsSettingsProperty where
  toResourceProperties M2tsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.M2tsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AbsentInputAudioBehavior"
                              Prelude.<$> absentInputAudioBehavior,
                            (JSON..=) "Arib" Prelude.<$> arib,
                            (JSON..=) "AribCaptionsPid" Prelude.<$> aribCaptionsPid,
                            (JSON..=) "AribCaptionsPidControl"
                              Prelude.<$> aribCaptionsPidControl,
                            (JSON..=) "AudioBufferModel" Prelude.<$> audioBufferModel,
                            (JSON..=) "AudioFramesPerPes" Prelude.<$> audioFramesPerPes,
                            (JSON..=) "AudioPids" Prelude.<$> audioPids,
                            (JSON..=) "AudioStreamType" Prelude.<$> audioStreamType,
                            (JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "BufferModel" Prelude.<$> bufferModel,
                            (JSON..=) "CcDescriptor" Prelude.<$> ccDescriptor,
                            (JSON..=) "DvbNitSettings" Prelude.<$> dvbNitSettings,
                            (JSON..=) "DvbSdtSettings" Prelude.<$> dvbSdtSettings,
                            (JSON..=) "DvbSubPids" Prelude.<$> dvbSubPids,
                            (JSON..=) "DvbTdtSettings" Prelude.<$> dvbTdtSettings,
                            (JSON..=) "DvbTeletextPid" Prelude.<$> dvbTeletextPid,
                            (JSON..=) "Ebif" Prelude.<$> ebif,
                            (JSON..=) "EbpAudioInterval" Prelude.<$> ebpAudioInterval,
                            (JSON..=) "EbpLookaheadMs" Prelude.<$> ebpLookaheadMs,
                            (JSON..=) "EbpPlacement" Prelude.<$> ebpPlacement,
                            (JSON..=) "EcmPid" Prelude.<$> ecmPid,
                            (JSON..=) "EsRateInPes" Prelude.<$> esRateInPes,
                            (JSON..=) "EtvPlatformPid" Prelude.<$> etvPlatformPid,
                            (JSON..=) "EtvSignalPid" Prelude.<$> etvSignalPid,
                            (JSON..=) "FragmentTime" Prelude.<$> fragmentTime,
                            (JSON..=) "Klv" Prelude.<$> klv,
                            (JSON..=) "KlvDataPids" Prelude.<$> klvDataPids,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "NullPacketBitrate" Prelude.<$> nullPacketBitrate,
                            (JSON..=) "PatInterval" Prelude.<$> patInterval,
                            (JSON..=) "PcrControl" Prelude.<$> pcrControl,
                            (JSON..=) "PcrPeriod" Prelude.<$> pcrPeriod,
                            (JSON..=) "PcrPid" Prelude.<$> pcrPid,
                            (JSON..=) "PmtInterval" Prelude.<$> pmtInterval,
                            (JSON..=) "PmtPid" Prelude.<$> pmtPid,
                            (JSON..=) "ProgramNum" Prelude.<$> programNum,
                            (JSON..=) "RateMode" Prelude.<$> rateMode,
                            (JSON..=) "Scte27Pids" Prelude.<$> scte27Pids,
                            (JSON..=) "Scte35Control" Prelude.<$> scte35Control,
                            (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
                            (JSON..=) "Scte35PrerollPullupMilliseconds"
                              Prelude.<$> scte35PrerollPullupMilliseconds,
                            (JSON..=) "SegmentationMarkers" Prelude.<$> segmentationMarkers,
                            (JSON..=) "SegmentationStyle" Prelude.<$> segmentationStyle,
                            (JSON..=) "SegmentationTime" Prelude.<$> segmentationTime,
                            (JSON..=) "TimedMetadataBehavior"
                              Prelude.<$> timedMetadataBehavior,
                            (JSON..=) "TimedMetadataPid" Prelude.<$> timedMetadataPid,
                            (JSON..=) "TransportStreamId" Prelude.<$> transportStreamId,
                            (JSON..=) "VideoPid" Prelude.<$> videoPid])}
instance JSON.ToJSON M2tsSettingsProperty where
  toJSON M2tsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AbsentInputAudioBehavior"
                 Prelude.<$> absentInputAudioBehavior,
               (JSON..=) "Arib" Prelude.<$> arib,
               (JSON..=) "AribCaptionsPid" Prelude.<$> aribCaptionsPid,
               (JSON..=) "AribCaptionsPidControl"
                 Prelude.<$> aribCaptionsPidControl,
               (JSON..=) "AudioBufferModel" Prelude.<$> audioBufferModel,
               (JSON..=) "AudioFramesPerPes" Prelude.<$> audioFramesPerPes,
               (JSON..=) "AudioPids" Prelude.<$> audioPids,
               (JSON..=) "AudioStreamType" Prelude.<$> audioStreamType,
               (JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "BufferModel" Prelude.<$> bufferModel,
               (JSON..=) "CcDescriptor" Prelude.<$> ccDescriptor,
               (JSON..=) "DvbNitSettings" Prelude.<$> dvbNitSettings,
               (JSON..=) "DvbSdtSettings" Prelude.<$> dvbSdtSettings,
               (JSON..=) "DvbSubPids" Prelude.<$> dvbSubPids,
               (JSON..=) "DvbTdtSettings" Prelude.<$> dvbTdtSettings,
               (JSON..=) "DvbTeletextPid" Prelude.<$> dvbTeletextPid,
               (JSON..=) "Ebif" Prelude.<$> ebif,
               (JSON..=) "EbpAudioInterval" Prelude.<$> ebpAudioInterval,
               (JSON..=) "EbpLookaheadMs" Prelude.<$> ebpLookaheadMs,
               (JSON..=) "EbpPlacement" Prelude.<$> ebpPlacement,
               (JSON..=) "EcmPid" Prelude.<$> ecmPid,
               (JSON..=) "EsRateInPes" Prelude.<$> esRateInPes,
               (JSON..=) "EtvPlatformPid" Prelude.<$> etvPlatformPid,
               (JSON..=) "EtvSignalPid" Prelude.<$> etvSignalPid,
               (JSON..=) "FragmentTime" Prelude.<$> fragmentTime,
               (JSON..=) "Klv" Prelude.<$> klv,
               (JSON..=) "KlvDataPids" Prelude.<$> klvDataPids,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "NullPacketBitrate" Prelude.<$> nullPacketBitrate,
               (JSON..=) "PatInterval" Prelude.<$> patInterval,
               (JSON..=) "PcrControl" Prelude.<$> pcrControl,
               (JSON..=) "PcrPeriod" Prelude.<$> pcrPeriod,
               (JSON..=) "PcrPid" Prelude.<$> pcrPid,
               (JSON..=) "PmtInterval" Prelude.<$> pmtInterval,
               (JSON..=) "PmtPid" Prelude.<$> pmtPid,
               (JSON..=) "ProgramNum" Prelude.<$> programNum,
               (JSON..=) "RateMode" Prelude.<$> rateMode,
               (JSON..=) "Scte27Pids" Prelude.<$> scte27Pids,
               (JSON..=) "Scte35Control" Prelude.<$> scte35Control,
               (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
               (JSON..=) "Scte35PrerollPullupMilliseconds"
                 Prelude.<$> scte35PrerollPullupMilliseconds,
               (JSON..=) "SegmentationMarkers" Prelude.<$> segmentationMarkers,
               (JSON..=) "SegmentationStyle" Prelude.<$> segmentationStyle,
               (JSON..=) "SegmentationTime" Prelude.<$> segmentationTime,
               (JSON..=) "TimedMetadataBehavior"
                 Prelude.<$> timedMetadataBehavior,
               (JSON..=) "TimedMetadataPid" Prelude.<$> timedMetadataPid,
               (JSON..=) "TransportStreamId" Prelude.<$> transportStreamId,
               (JSON..=) "VideoPid" Prelude.<$> videoPid]))
instance Property "AbsentInputAudioBehavior" M2tsSettingsProperty where
  type PropertyType "AbsentInputAudioBehavior" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {absentInputAudioBehavior = Prelude.pure newValue, ..}
instance Property "Arib" M2tsSettingsProperty where
  type PropertyType "Arib" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {arib = Prelude.pure newValue, ..}
instance Property "AribCaptionsPid" M2tsSettingsProperty where
  type PropertyType "AribCaptionsPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {aribCaptionsPid = Prelude.pure newValue, ..}
instance Property "AribCaptionsPidControl" M2tsSettingsProperty where
  type PropertyType "AribCaptionsPidControl" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {aribCaptionsPidControl = Prelude.pure newValue, ..}
instance Property "AudioBufferModel" M2tsSettingsProperty where
  type PropertyType "AudioBufferModel" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {audioBufferModel = Prelude.pure newValue, ..}
instance Property "AudioFramesPerPes" M2tsSettingsProperty where
  type PropertyType "AudioFramesPerPes" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {audioFramesPerPes = Prelude.pure newValue, ..}
instance Property "AudioPids" M2tsSettingsProperty where
  type PropertyType "AudioPids" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {audioPids = Prelude.pure newValue, ..}
instance Property "AudioStreamType" M2tsSettingsProperty where
  type PropertyType "AudioStreamType" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {audioStreamType = Prelude.pure newValue, ..}
instance Property "Bitrate" M2tsSettingsProperty where
  type PropertyType "Bitrate" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "BufferModel" M2tsSettingsProperty where
  type PropertyType "BufferModel" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {bufferModel = Prelude.pure newValue, ..}
instance Property "CcDescriptor" M2tsSettingsProperty where
  type PropertyType "CcDescriptor" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {ccDescriptor = Prelude.pure newValue, ..}
instance Property "DvbNitSettings" M2tsSettingsProperty where
  type PropertyType "DvbNitSettings" M2tsSettingsProperty = DvbNitSettingsProperty
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {dvbNitSettings = Prelude.pure newValue, ..}
instance Property "DvbSdtSettings" M2tsSettingsProperty where
  type PropertyType "DvbSdtSettings" M2tsSettingsProperty = DvbSdtSettingsProperty
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {dvbSdtSettings = Prelude.pure newValue, ..}
instance Property "DvbSubPids" M2tsSettingsProperty where
  type PropertyType "DvbSubPids" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {dvbSubPids = Prelude.pure newValue, ..}
instance Property "DvbTdtSettings" M2tsSettingsProperty where
  type PropertyType "DvbTdtSettings" M2tsSettingsProperty = DvbTdtSettingsProperty
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {dvbTdtSettings = Prelude.pure newValue, ..}
instance Property "DvbTeletextPid" M2tsSettingsProperty where
  type PropertyType "DvbTeletextPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {dvbTeletextPid = Prelude.pure newValue, ..}
instance Property "Ebif" M2tsSettingsProperty where
  type PropertyType "Ebif" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {ebif = Prelude.pure newValue, ..}
instance Property "EbpAudioInterval" M2tsSettingsProperty where
  type PropertyType "EbpAudioInterval" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {ebpAudioInterval = Prelude.pure newValue, ..}
instance Property "EbpLookaheadMs" M2tsSettingsProperty where
  type PropertyType "EbpLookaheadMs" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {ebpLookaheadMs = Prelude.pure newValue, ..}
instance Property "EbpPlacement" M2tsSettingsProperty where
  type PropertyType "EbpPlacement" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {ebpPlacement = Prelude.pure newValue, ..}
instance Property "EcmPid" M2tsSettingsProperty where
  type PropertyType "EcmPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {ecmPid = Prelude.pure newValue, ..}
instance Property "EsRateInPes" M2tsSettingsProperty where
  type PropertyType "EsRateInPes" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {esRateInPes = Prelude.pure newValue, ..}
instance Property "EtvPlatformPid" M2tsSettingsProperty where
  type PropertyType "EtvPlatformPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {etvPlatformPid = Prelude.pure newValue, ..}
instance Property "EtvSignalPid" M2tsSettingsProperty where
  type PropertyType "EtvSignalPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {etvSignalPid = Prelude.pure newValue, ..}
instance Property "FragmentTime" M2tsSettingsProperty where
  type PropertyType "FragmentTime" M2tsSettingsProperty = Value Prelude.Double
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {fragmentTime = Prelude.pure newValue, ..}
instance Property "Klv" M2tsSettingsProperty where
  type PropertyType "Klv" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {klv = Prelude.pure newValue, ..}
instance Property "KlvDataPids" M2tsSettingsProperty where
  type PropertyType "KlvDataPids" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {klvDataPids = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" M2tsSettingsProperty where
  type PropertyType "NielsenId3Behavior" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
instance Property "NullPacketBitrate" M2tsSettingsProperty where
  type PropertyType "NullPacketBitrate" M2tsSettingsProperty = Value Prelude.Double
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {nullPacketBitrate = Prelude.pure newValue, ..}
instance Property "PatInterval" M2tsSettingsProperty where
  type PropertyType "PatInterval" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {patInterval = Prelude.pure newValue, ..}
instance Property "PcrControl" M2tsSettingsProperty where
  type PropertyType "PcrControl" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {pcrControl = Prelude.pure newValue, ..}
instance Property "PcrPeriod" M2tsSettingsProperty where
  type PropertyType "PcrPeriod" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {pcrPeriod = Prelude.pure newValue, ..}
instance Property "PcrPid" M2tsSettingsProperty where
  type PropertyType "PcrPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {pcrPid = Prelude.pure newValue, ..}
instance Property "PmtInterval" M2tsSettingsProperty where
  type PropertyType "PmtInterval" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {pmtInterval = Prelude.pure newValue, ..}
instance Property "PmtPid" M2tsSettingsProperty where
  type PropertyType "PmtPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {pmtPid = Prelude.pure newValue, ..}
instance Property "ProgramNum" M2tsSettingsProperty where
  type PropertyType "ProgramNum" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {programNum = Prelude.pure newValue, ..}
instance Property "RateMode" M2tsSettingsProperty where
  type PropertyType "RateMode" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {rateMode = Prelude.pure newValue, ..}
instance Property "Scte27Pids" M2tsSettingsProperty where
  type PropertyType "Scte27Pids" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {scte27Pids = Prelude.pure newValue, ..}
instance Property "Scte35Control" M2tsSettingsProperty where
  type PropertyType "Scte35Control" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {scte35Control = Prelude.pure newValue, ..}
instance Property "Scte35Pid" M2tsSettingsProperty where
  type PropertyType "Scte35Pid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {scte35Pid = Prelude.pure newValue, ..}
instance Property "Scte35PrerollPullupMilliseconds" M2tsSettingsProperty where
  type PropertyType "Scte35PrerollPullupMilliseconds" M2tsSettingsProperty = Value Prelude.Double
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {scte35PrerollPullupMilliseconds = Prelude.pure newValue, ..}
instance Property "SegmentationMarkers" M2tsSettingsProperty where
  type PropertyType "SegmentationMarkers" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {segmentationMarkers = Prelude.pure newValue, ..}
instance Property "SegmentationStyle" M2tsSettingsProperty where
  type PropertyType "SegmentationStyle" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {segmentationStyle = Prelude.pure newValue, ..}
instance Property "SegmentationTime" M2tsSettingsProperty where
  type PropertyType "SegmentationTime" M2tsSettingsProperty = Value Prelude.Double
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {segmentationTime = Prelude.pure newValue, ..}
instance Property "TimedMetadataBehavior" M2tsSettingsProperty where
  type PropertyType "TimedMetadataBehavior" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {timedMetadataBehavior = Prelude.pure newValue, ..}
instance Property "TimedMetadataPid" M2tsSettingsProperty where
  type PropertyType "TimedMetadataPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {timedMetadataPid = Prelude.pure newValue, ..}
instance Property "TransportStreamId" M2tsSettingsProperty where
  type PropertyType "TransportStreamId" M2tsSettingsProperty = Value Prelude.Integer
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty
        {transportStreamId = Prelude.pure newValue, ..}
instance Property "VideoPid" M2tsSettingsProperty where
  type PropertyType "VideoPid" M2tsSettingsProperty = Value Prelude.Text
  set newValue M2tsSettingsProperty {..}
    = M2tsSettingsProperty {videoPid = Prelude.pure newValue, ..}