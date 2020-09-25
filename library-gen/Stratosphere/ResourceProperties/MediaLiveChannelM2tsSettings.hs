{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelM2tsSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelDvbNitSettings
import Stratosphere.ResourceProperties.MediaLiveChannelDvbSdtSettings
import Stratosphere.ResourceProperties.MediaLiveChannelDvbTdtSettings

-- | Full data type definition for MediaLiveChannelM2tsSettings. See
-- 'mediaLiveChannelM2tsSettings' for a more convenient constructor.
data MediaLiveChannelM2tsSettings =
  MediaLiveChannelM2tsSettings
  { _mediaLiveChannelM2tsSettingsAbsentInputAudioBehavior :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsArib :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsAribCaptionsPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsAribCaptionsPidControl :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsAudioBufferModel :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsAudioFramesPerPes :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsAudioPids :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsAudioStreamType :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsBitrate :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsBufferModel :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsCcDescriptor :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsDvbNitSettings :: Maybe MediaLiveChannelDvbNitSettings
  , _mediaLiveChannelM2tsSettingsDvbSdtSettings :: Maybe MediaLiveChannelDvbSdtSettings
  , _mediaLiveChannelM2tsSettingsDvbSubPids :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsDvbTdtSettings :: Maybe MediaLiveChannelDvbTdtSettings
  , _mediaLiveChannelM2tsSettingsDvbTeletextPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEbif :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEbpAudioInterval :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEbpLookaheadMs :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsEbpPlacement :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEcmPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEsRateInPes :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEtvPlatformPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsEtvSignalPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsFragmentTime :: Maybe (Val Double)
  , _mediaLiveChannelM2tsSettingsKlv :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsKlvDataPids :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsNielsenId3Behavior :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsNullPacketBitrate :: Maybe (Val Double)
  , _mediaLiveChannelM2tsSettingsPatInterval :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsPcrControl :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsPcrPeriod :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsPcrPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsPmtInterval :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsPmtPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsProgramNum :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsRateMode :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsScte27Pids :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsScte35Control :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsScte35Pid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsSegmentationMarkers :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsSegmentationStyle :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsSegmentationTime :: Maybe (Val Double)
  , _mediaLiveChannelM2tsSettingsTimedMetadataBehavior :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsTimedMetadataPid :: Maybe (Val Text)
  , _mediaLiveChannelM2tsSettingsTransportStreamId :: Maybe (Val Integer)
  , _mediaLiveChannelM2tsSettingsVideoPid :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelM2tsSettings where
  toJSON MediaLiveChannelM2tsSettings{..} =
    object $
    catMaybes
    [ fmap (("AbsentInputAudioBehavior",) . toJSON) _mediaLiveChannelM2tsSettingsAbsentInputAudioBehavior
    , fmap (("Arib",) . toJSON) _mediaLiveChannelM2tsSettingsArib
    , fmap (("AribCaptionsPid",) . toJSON) _mediaLiveChannelM2tsSettingsAribCaptionsPid
    , fmap (("AribCaptionsPidControl",) . toJSON) _mediaLiveChannelM2tsSettingsAribCaptionsPidControl
    , fmap (("AudioBufferModel",) . toJSON) _mediaLiveChannelM2tsSettingsAudioBufferModel
    , fmap (("AudioFramesPerPes",) . toJSON) _mediaLiveChannelM2tsSettingsAudioFramesPerPes
    , fmap (("AudioPids",) . toJSON) _mediaLiveChannelM2tsSettingsAudioPids
    , fmap (("AudioStreamType",) . toJSON) _mediaLiveChannelM2tsSettingsAudioStreamType
    , fmap (("Bitrate",) . toJSON) _mediaLiveChannelM2tsSettingsBitrate
    , fmap (("BufferModel",) . toJSON) _mediaLiveChannelM2tsSettingsBufferModel
    , fmap (("CcDescriptor",) . toJSON) _mediaLiveChannelM2tsSettingsCcDescriptor
    , fmap (("DvbNitSettings",) . toJSON) _mediaLiveChannelM2tsSettingsDvbNitSettings
    , fmap (("DvbSdtSettings",) . toJSON) _mediaLiveChannelM2tsSettingsDvbSdtSettings
    , fmap (("DvbSubPids",) . toJSON) _mediaLiveChannelM2tsSettingsDvbSubPids
    , fmap (("DvbTdtSettings",) . toJSON) _mediaLiveChannelM2tsSettingsDvbTdtSettings
    , fmap (("DvbTeletextPid",) . toJSON) _mediaLiveChannelM2tsSettingsDvbTeletextPid
    , fmap (("Ebif",) . toJSON) _mediaLiveChannelM2tsSettingsEbif
    , fmap (("EbpAudioInterval",) . toJSON) _mediaLiveChannelM2tsSettingsEbpAudioInterval
    , fmap (("EbpLookaheadMs",) . toJSON) _mediaLiveChannelM2tsSettingsEbpLookaheadMs
    , fmap (("EbpPlacement",) . toJSON) _mediaLiveChannelM2tsSettingsEbpPlacement
    , fmap (("EcmPid",) . toJSON) _mediaLiveChannelM2tsSettingsEcmPid
    , fmap (("EsRateInPes",) . toJSON) _mediaLiveChannelM2tsSettingsEsRateInPes
    , fmap (("EtvPlatformPid",) . toJSON) _mediaLiveChannelM2tsSettingsEtvPlatformPid
    , fmap (("EtvSignalPid",) . toJSON) _mediaLiveChannelM2tsSettingsEtvSignalPid
    , fmap (("FragmentTime",) . toJSON) _mediaLiveChannelM2tsSettingsFragmentTime
    , fmap (("Klv",) . toJSON) _mediaLiveChannelM2tsSettingsKlv
    , fmap (("KlvDataPids",) . toJSON) _mediaLiveChannelM2tsSettingsKlvDataPids
    , fmap (("NielsenId3Behavior",) . toJSON) _mediaLiveChannelM2tsSettingsNielsenId3Behavior
    , fmap (("NullPacketBitrate",) . toJSON) _mediaLiveChannelM2tsSettingsNullPacketBitrate
    , fmap (("PatInterval",) . toJSON) _mediaLiveChannelM2tsSettingsPatInterval
    , fmap (("PcrControl",) . toJSON) _mediaLiveChannelM2tsSettingsPcrControl
    , fmap (("PcrPeriod",) . toJSON) _mediaLiveChannelM2tsSettingsPcrPeriod
    , fmap (("PcrPid",) . toJSON) _mediaLiveChannelM2tsSettingsPcrPid
    , fmap (("PmtInterval",) . toJSON) _mediaLiveChannelM2tsSettingsPmtInterval
    , fmap (("PmtPid",) . toJSON) _mediaLiveChannelM2tsSettingsPmtPid
    , fmap (("ProgramNum",) . toJSON) _mediaLiveChannelM2tsSettingsProgramNum
    , fmap (("RateMode",) . toJSON) _mediaLiveChannelM2tsSettingsRateMode
    , fmap (("Scte27Pids",) . toJSON) _mediaLiveChannelM2tsSettingsScte27Pids
    , fmap (("Scte35Control",) . toJSON) _mediaLiveChannelM2tsSettingsScte35Control
    , fmap (("Scte35Pid",) . toJSON) _mediaLiveChannelM2tsSettingsScte35Pid
    , fmap (("SegmentationMarkers",) . toJSON) _mediaLiveChannelM2tsSettingsSegmentationMarkers
    , fmap (("SegmentationStyle",) . toJSON) _mediaLiveChannelM2tsSettingsSegmentationStyle
    , fmap (("SegmentationTime",) . toJSON) _mediaLiveChannelM2tsSettingsSegmentationTime
    , fmap (("TimedMetadataBehavior",) . toJSON) _mediaLiveChannelM2tsSettingsTimedMetadataBehavior
    , fmap (("TimedMetadataPid",) . toJSON) _mediaLiveChannelM2tsSettingsTimedMetadataPid
    , fmap (("TransportStreamId",) . toJSON) _mediaLiveChannelM2tsSettingsTransportStreamId
    , fmap (("VideoPid",) . toJSON) _mediaLiveChannelM2tsSettingsVideoPid
    ]

-- | Constructor for 'MediaLiveChannelM2tsSettings' containing required fields
-- as arguments.
mediaLiveChannelM2tsSettings
  :: MediaLiveChannelM2tsSettings
mediaLiveChannelM2tsSettings  =
  MediaLiveChannelM2tsSettings
  { _mediaLiveChannelM2tsSettingsAbsentInputAudioBehavior = Nothing
  , _mediaLiveChannelM2tsSettingsArib = Nothing
  , _mediaLiveChannelM2tsSettingsAribCaptionsPid = Nothing
  , _mediaLiveChannelM2tsSettingsAribCaptionsPidControl = Nothing
  , _mediaLiveChannelM2tsSettingsAudioBufferModel = Nothing
  , _mediaLiveChannelM2tsSettingsAudioFramesPerPes = Nothing
  , _mediaLiveChannelM2tsSettingsAudioPids = Nothing
  , _mediaLiveChannelM2tsSettingsAudioStreamType = Nothing
  , _mediaLiveChannelM2tsSettingsBitrate = Nothing
  , _mediaLiveChannelM2tsSettingsBufferModel = Nothing
  , _mediaLiveChannelM2tsSettingsCcDescriptor = Nothing
  , _mediaLiveChannelM2tsSettingsDvbNitSettings = Nothing
  , _mediaLiveChannelM2tsSettingsDvbSdtSettings = Nothing
  , _mediaLiveChannelM2tsSettingsDvbSubPids = Nothing
  , _mediaLiveChannelM2tsSettingsDvbTdtSettings = Nothing
  , _mediaLiveChannelM2tsSettingsDvbTeletextPid = Nothing
  , _mediaLiveChannelM2tsSettingsEbif = Nothing
  , _mediaLiveChannelM2tsSettingsEbpAudioInterval = Nothing
  , _mediaLiveChannelM2tsSettingsEbpLookaheadMs = Nothing
  , _mediaLiveChannelM2tsSettingsEbpPlacement = Nothing
  , _mediaLiveChannelM2tsSettingsEcmPid = Nothing
  , _mediaLiveChannelM2tsSettingsEsRateInPes = Nothing
  , _mediaLiveChannelM2tsSettingsEtvPlatformPid = Nothing
  , _mediaLiveChannelM2tsSettingsEtvSignalPid = Nothing
  , _mediaLiveChannelM2tsSettingsFragmentTime = Nothing
  , _mediaLiveChannelM2tsSettingsKlv = Nothing
  , _mediaLiveChannelM2tsSettingsKlvDataPids = Nothing
  , _mediaLiveChannelM2tsSettingsNielsenId3Behavior = Nothing
  , _mediaLiveChannelM2tsSettingsNullPacketBitrate = Nothing
  , _mediaLiveChannelM2tsSettingsPatInterval = Nothing
  , _mediaLiveChannelM2tsSettingsPcrControl = Nothing
  , _mediaLiveChannelM2tsSettingsPcrPeriod = Nothing
  , _mediaLiveChannelM2tsSettingsPcrPid = Nothing
  , _mediaLiveChannelM2tsSettingsPmtInterval = Nothing
  , _mediaLiveChannelM2tsSettingsPmtPid = Nothing
  , _mediaLiveChannelM2tsSettingsProgramNum = Nothing
  , _mediaLiveChannelM2tsSettingsRateMode = Nothing
  , _mediaLiveChannelM2tsSettingsScte27Pids = Nothing
  , _mediaLiveChannelM2tsSettingsScte35Control = Nothing
  , _mediaLiveChannelM2tsSettingsScte35Pid = Nothing
  , _mediaLiveChannelM2tsSettingsSegmentationMarkers = Nothing
  , _mediaLiveChannelM2tsSettingsSegmentationStyle = Nothing
  , _mediaLiveChannelM2tsSettingsSegmentationTime = Nothing
  , _mediaLiveChannelM2tsSettingsTimedMetadataBehavior = Nothing
  , _mediaLiveChannelM2tsSettingsTimedMetadataPid = Nothing
  , _mediaLiveChannelM2tsSettingsTransportStreamId = Nothing
  , _mediaLiveChannelM2tsSettingsVideoPid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-absentinputaudiobehavior
mlcmsAbsentInputAudioBehavior :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsAbsentInputAudioBehavior = lens _mediaLiveChannelM2tsSettingsAbsentInputAudioBehavior (\s a -> s { _mediaLiveChannelM2tsSettingsAbsentInputAudioBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-arib
mlcmsArib :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsArib = lens _mediaLiveChannelM2tsSettingsArib (\s a -> s { _mediaLiveChannelM2tsSettingsArib = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-aribcaptionspid
mlcmsAribCaptionsPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsAribCaptionsPid = lens _mediaLiveChannelM2tsSettingsAribCaptionsPid (\s a -> s { _mediaLiveChannelM2tsSettingsAribCaptionsPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-aribcaptionspidcontrol
mlcmsAribCaptionsPidControl :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsAribCaptionsPidControl = lens _mediaLiveChannelM2tsSettingsAribCaptionsPidControl (\s a -> s { _mediaLiveChannelM2tsSettingsAribCaptionsPidControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audiobuffermodel
mlcmsAudioBufferModel :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsAudioBufferModel = lens _mediaLiveChannelM2tsSettingsAudioBufferModel (\s a -> s { _mediaLiveChannelM2tsSettingsAudioBufferModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audioframesperpes
mlcmsAudioFramesPerPes :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsAudioFramesPerPes = lens _mediaLiveChannelM2tsSettingsAudioFramesPerPes (\s a -> s { _mediaLiveChannelM2tsSettingsAudioFramesPerPes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audiopids
mlcmsAudioPids :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsAudioPids = lens _mediaLiveChannelM2tsSettingsAudioPids (\s a -> s { _mediaLiveChannelM2tsSettingsAudioPids = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-audiostreamtype
mlcmsAudioStreamType :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsAudioStreamType = lens _mediaLiveChannelM2tsSettingsAudioStreamType (\s a -> s { _mediaLiveChannelM2tsSettingsAudioStreamType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-bitrate
mlcmsBitrate :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsBitrate = lens _mediaLiveChannelM2tsSettingsBitrate (\s a -> s { _mediaLiveChannelM2tsSettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-buffermodel
mlcmsBufferModel :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsBufferModel = lens _mediaLiveChannelM2tsSettingsBufferModel (\s a -> s { _mediaLiveChannelM2tsSettingsBufferModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ccdescriptor
mlcmsCcDescriptor :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsCcDescriptor = lens _mediaLiveChannelM2tsSettingsCcDescriptor (\s a -> s { _mediaLiveChannelM2tsSettingsCcDescriptor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbnitsettings
mlcmsDvbNitSettings :: Lens' MediaLiveChannelM2tsSettings (Maybe MediaLiveChannelDvbNitSettings)
mlcmsDvbNitSettings = lens _mediaLiveChannelM2tsSettingsDvbNitSettings (\s a -> s { _mediaLiveChannelM2tsSettingsDvbNitSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbsdtsettings
mlcmsDvbSdtSettings :: Lens' MediaLiveChannelM2tsSettings (Maybe MediaLiveChannelDvbSdtSettings)
mlcmsDvbSdtSettings = lens _mediaLiveChannelM2tsSettingsDvbSdtSettings (\s a -> s { _mediaLiveChannelM2tsSettingsDvbSdtSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbsubpids
mlcmsDvbSubPids :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsDvbSubPids = lens _mediaLiveChannelM2tsSettingsDvbSubPids (\s a -> s { _mediaLiveChannelM2tsSettingsDvbSubPids = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbtdtsettings
mlcmsDvbTdtSettings :: Lens' MediaLiveChannelM2tsSettings (Maybe MediaLiveChannelDvbTdtSettings)
mlcmsDvbTdtSettings = lens _mediaLiveChannelM2tsSettingsDvbTdtSettings (\s a -> s { _mediaLiveChannelM2tsSettingsDvbTdtSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-dvbteletextpid
mlcmsDvbTeletextPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsDvbTeletextPid = lens _mediaLiveChannelM2tsSettingsDvbTeletextPid (\s a -> s { _mediaLiveChannelM2tsSettingsDvbTeletextPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebif
mlcmsEbif :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEbif = lens _mediaLiveChannelM2tsSettingsEbif (\s a -> s { _mediaLiveChannelM2tsSettingsEbif = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebpaudiointerval
mlcmsEbpAudioInterval :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEbpAudioInterval = lens _mediaLiveChannelM2tsSettingsEbpAudioInterval (\s a -> s { _mediaLiveChannelM2tsSettingsEbpAudioInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebplookaheadms
mlcmsEbpLookaheadMs :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsEbpLookaheadMs = lens _mediaLiveChannelM2tsSettingsEbpLookaheadMs (\s a -> s { _mediaLiveChannelM2tsSettingsEbpLookaheadMs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ebpplacement
mlcmsEbpPlacement :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEbpPlacement = lens _mediaLiveChannelM2tsSettingsEbpPlacement (\s a -> s { _mediaLiveChannelM2tsSettingsEbpPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ecmpid
mlcmsEcmPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEcmPid = lens _mediaLiveChannelM2tsSettingsEcmPid (\s a -> s { _mediaLiveChannelM2tsSettingsEcmPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-esrateinpes
mlcmsEsRateInPes :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEsRateInPes = lens _mediaLiveChannelM2tsSettingsEsRateInPes (\s a -> s { _mediaLiveChannelM2tsSettingsEsRateInPes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-etvplatformpid
mlcmsEtvPlatformPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEtvPlatformPid = lens _mediaLiveChannelM2tsSettingsEtvPlatformPid (\s a -> s { _mediaLiveChannelM2tsSettingsEtvPlatformPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-etvsignalpid
mlcmsEtvSignalPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsEtvSignalPid = lens _mediaLiveChannelM2tsSettingsEtvSignalPid (\s a -> s { _mediaLiveChannelM2tsSettingsEtvSignalPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-fragmenttime
mlcmsFragmentTime :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Double))
mlcmsFragmentTime = lens _mediaLiveChannelM2tsSettingsFragmentTime (\s a -> s { _mediaLiveChannelM2tsSettingsFragmentTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-klv
mlcmsKlv :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsKlv = lens _mediaLiveChannelM2tsSettingsKlv (\s a -> s { _mediaLiveChannelM2tsSettingsKlv = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-klvdatapids
mlcmsKlvDataPids :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsKlvDataPids = lens _mediaLiveChannelM2tsSettingsKlvDataPids (\s a -> s { _mediaLiveChannelM2tsSettingsKlvDataPids = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-nielsenid3behavior
mlcmsNielsenId3Behavior :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsNielsenId3Behavior = lens _mediaLiveChannelM2tsSettingsNielsenId3Behavior (\s a -> s { _mediaLiveChannelM2tsSettingsNielsenId3Behavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-nullpacketbitrate
mlcmsNullPacketBitrate :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Double))
mlcmsNullPacketBitrate = lens _mediaLiveChannelM2tsSettingsNullPacketBitrate (\s a -> s { _mediaLiveChannelM2tsSettingsNullPacketBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-patinterval
mlcmsPatInterval :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsPatInterval = lens _mediaLiveChannelM2tsSettingsPatInterval (\s a -> s { _mediaLiveChannelM2tsSettingsPatInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pcrcontrol
mlcmsPcrControl :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsPcrControl = lens _mediaLiveChannelM2tsSettingsPcrControl (\s a -> s { _mediaLiveChannelM2tsSettingsPcrControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pcrperiod
mlcmsPcrPeriod :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsPcrPeriod = lens _mediaLiveChannelM2tsSettingsPcrPeriod (\s a -> s { _mediaLiveChannelM2tsSettingsPcrPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pcrpid
mlcmsPcrPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsPcrPid = lens _mediaLiveChannelM2tsSettingsPcrPid (\s a -> s { _mediaLiveChannelM2tsSettingsPcrPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pmtinterval
mlcmsPmtInterval :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsPmtInterval = lens _mediaLiveChannelM2tsSettingsPmtInterval (\s a -> s { _mediaLiveChannelM2tsSettingsPmtInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-pmtpid
mlcmsPmtPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsPmtPid = lens _mediaLiveChannelM2tsSettingsPmtPid (\s a -> s { _mediaLiveChannelM2tsSettingsPmtPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-programnum
mlcmsProgramNum :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsProgramNum = lens _mediaLiveChannelM2tsSettingsProgramNum (\s a -> s { _mediaLiveChannelM2tsSettingsProgramNum = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-ratemode
mlcmsRateMode :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsRateMode = lens _mediaLiveChannelM2tsSettingsRateMode (\s a -> s { _mediaLiveChannelM2tsSettingsRateMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte27pids
mlcmsScte27Pids :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsScte27Pids = lens _mediaLiveChannelM2tsSettingsScte27Pids (\s a -> s { _mediaLiveChannelM2tsSettingsScte27Pids = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte35control
mlcmsScte35Control :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsScte35Control = lens _mediaLiveChannelM2tsSettingsScte35Control (\s a -> s { _mediaLiveChannelM2tsSettingsScte35Control = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-scte35pid
mlcmsScte35Pid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsScte35Pid = lens _mediaLiveChannelM2tsSettingsScte35Pid (\s a -> s { _mediaLiveChannelM2tsSettingsScte35Pid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-segmentationmarkers
mlcmsSegmentationMarkers :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsSegmentationMarkers = lens _mediaLiveChannelM2tsSettingsSegmentationMarkers (\s a -> s { _mediaLiveChannelM2tsSettingsSegmentationMarkers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-segmentationstyle
mlcmsSegmentationStyle :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsSegmentationStyle = lens _mediaLiveChannelM2tsSettingsSegmentationStyle (\s a -> s { _mediaLiveChannelM2tsSettingsSegmentationStyle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-segmentationtime
mlcmsSegmentationTime :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Double))
mlcmsSegmentationTime = lens _mediaLiveChannelM2tsSettingsSegmentationTime (\s a -> s { _mediaLiveChannelM2tsSettingsSegmentationTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-timedmetadatabehavior
mlcmsTimedMetadataBehavior :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsTimedMetadataBehavior = lens _mediaLiveChannelM2tsSettingsTimedMetadataBehavior (\s a -> s { _mediaLiveChannelM2tsSettingsTimedMetadataBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-timedmetadatapid
mlcmsTimedMetadataPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsTimedMetadataPid = lens _mediaLiveChannelM2tsSettingsTimedMetadataPid (\s a -> s { _mediaLiveChannelM2tsSettingsTimedMetadataPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-transportstreamid
mlcmsTransportStreamId :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Integer))
mlcmsTransportStreamId = lens _mediaLiveChannelM2tsSettingsTransportStreamId (\s a -> s { _mediaLiveChannelM2tsSettingsTransportStreamId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html#cfn-medialive-channel-m2tssettings-videopid
mlcmsVideoPid :: Lens' MediaLiveChannelM2tsSettings (Maybe (Val Text))
mlcmsVideoPid = lens _mediaLiveChannelM2tsSettingsVideoPid (\s a -> s { _mediaLiveChannelM2tsSettingsVideoPid = a })
