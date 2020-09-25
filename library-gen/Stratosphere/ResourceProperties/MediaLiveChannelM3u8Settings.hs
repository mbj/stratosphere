{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelM3u8Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelM3u8Settings. See
-- 'mediaLiveChannelM3u8Settings' for a more convenient constructor.
data MediaLiveChannelM3u8Settings =
  MediaLiveChannelM3u8Settings
  { _mediaLiveChannelM3u8SettingsAudioFramesPerPes :: Maybe (Val Integer)
  , _mediaLiveChannelM3u8SettingsAudioPids :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsEcmPid :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsNielsenId3Behavior :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsPatInterval :: Maybe (Val Integer)
  , _mediaLiveChannelM3u8SettingsPcrControl :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsPcrPeriod :: Maybe (Val Integer)
  , _mediaLiveChannelM3u8SettingsPcrPid :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsPmtInterval :: Maybe (Val Integer)
  , _mediaLiveChannelM3u8SettingsPmtPid :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsProgramNum :: Maybe (Val Integer)
  , _mediaLiveChannelM3u8SettingsScte35Behavior :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsScte35Pid :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsTimedMetadataBehavior :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsTimedMetadataPid :: Maybe (Val Text)
  , _mediaLiveChannelM3u8SettingsTransportStreamId :: Maybe (Val Integer)
  , _mediaLiveChannelM3u8SettingsVideoPid :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelM3u8Settings where
  toJSON MediaLiveChannelM3u8Settings{..} =
    object $
    catMaybes
    [ fmap (("AudioFramesPerPes",) . toJSON) _mediaLiveChannelM3u8SettingsAudioFramesPerPes
    , fmap (("AudioPids",) . toJSON) _mediaLiveChannelM3u8SettingsAudioPids
    , fmap (("EcmPid",) . toJSON) _mediaLiveChannelM3u8SettingsEcmPid
    , fmap (("NielsenId3Behavior",) . toJSON) _mediaLiveChannelM3u8SettingsNielsenId3Behavior
    , fmap (("PatInterval",) . toJSON) _mediaLiveChannelM3u8SettingsPatInterval
    , fmap (("PcrControl",) . toJSON) _mediaLiveChannelM3u8SettingsPcrControl
    , fmap (("PcrPeriod",) . toJSON) _mediaLiveChannelM3u8SettingsPcrPeriod
    , fmap (("PcrPid",) . toJSON) _mediaLiveChannelM3u8SettingsPcrPid
    , fmap (("PmtInterval",) . toJSON) _mediaLiveChannelM3u8SettingsPmtInterval
    , fmap (("PmtPid",) . toJSON) _mediaLiveChannelM3u8SettingsPmtPid
    , fmap (("ProgramNum",) . toJSON) _mediaLiveChannelM3u8SettingsProgramNum
    , fmap (("Scte35Behavior",) . toJSON) _mediaLiveChannelM3u8SettingsScte35Behavior
    , fmap (("Scte35Pid",) . toJSON) _mediaLiveChannelM3u8SettingsScte35Pid
    , fmap (("TimedMetadataBehavior",) . toJSON) _mediaLiveChannelM3u8SettingsTimedMetadataBehavior
    , fmap (("TimedMetadataPid",) . toJSON) _mediaLiveChannelM3u8SettingsTimedMetadataPid
    , fmap (("TransportStreamId",) . toJSON) _mediaLiveChannelM3u8SettingsTransportStreamId
    , fmap (("VideoPid",) . toJSON) _mediaLiveChannelM3u8SettingsVideoPid
    ]

-- | Constructor for 'MediaLiveChannelM3u8Settings' containing required fields
-- as arguments.
mediaLiveChannelM3u8Settings
  :: MediaLiveChannelM3u8Settings
mediaLiveChannelM3u8Settings  =
  MediaLiveChannelM3u8Settings
  { _mediaLiveChannelM3u8SettingsAudioFramesPerPes = Nothing
  , _mediaLiveChannelM3u8SettingsAudioPids = Nothing
  , _mediaLiveChannelM3u8SettingsEcmPid = Nothing
  , _mediaLiveChannelM3u8SettingsNielsenId3Behavior = Nothing
  , _mediaLiveChannelM3u8SettingsPatInterval = Nothing
  , _mediaLiveChannelM3u8SettingsPcrControl = Nothing
  , _mediaLiveChannelM3u8SettingsPcrPeriod = Nothing
  , _mediaLiveChannelM3u8SettingsPcrPid = Nothing
  , _mediaLiveChannelM3u8SettingsPmtInterval = Nothing
  , _mediaLiveChannelM3u8SettingsPmtPid = Nothing
  , _mediaLiveChannelM3u8SettingsProgramNum = Nothing
  , _mediaLiveChannelM3u8SettingsScte35Behavior = Nothing
  , _mediaLiveChannelM3u8SettingsScte35Pid = Nothing
  , _mediaLiveChannelM3u8SettingsTimedMetadataBehavior = Nothing
  , _mediaLiveChannelM3u8SettingsTimedMetadataPid = Nothing
  , _mediaLiveChannelM3u8SettingsTransportStreamId = Nothing
  , _mediaLiveChannelM3u8SettingsVideoPid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-audioframesperpes
mlcmsAudioFramesPerPes :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Integer))
mlcmsAudioFramesPerPes = lens _mediaLiveChannelM3u8SettingsAudioFramesPerPes (\s a -> s { _mediaLiveChannelM3u8SettingsAudioFramesPerPes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-audiopids
mlcmsAudioPids :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsAudioPids = lens _mediaLiveChannelM3u8SettingsAudioPids (\s a -> s { _mediaLiveChannelM3u8SettingsAudioPids = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-ecmpid
mlcmsEcmPid :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsEcmPid = lens _mediaLiveChannelM3u8SettingsEcmPid (\s a -> s { _mediaLiveChannelM3u8SettingsEcmPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-nielsenid3behavior
mlcmsNielsenId3Behavior :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsNielsenId3Behavior = lens _mediaLiveChannelM3u8SettingsNielsenId3Behavior (\s a -> s { _mediaLiveChannelM3u8SettingsNielsenId3Behavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-patinterval
mlcmsPatInterval :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Integer))
mlcmsPatInterval = lens _mediaLiveChannelM3u8SettingsPatInterval (\s a -> s { _mediaLiveChannelM3u8SettingsPatInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-pcrcontrol
mlcmsPcrControl :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsPcrControl = lens _mediaLiveChannelM3u8SettingsPcrControl (\s a -> s { _mediaLiveChannelM3u8SettingsPcrControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-pcrperiod
mlcmsPcrPeriod :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Integer))
mlcmsPcrPeriod = lens _mediaLiveChannelM3u8SettingsPcrPeriod (\s a -> s { _mediaLiveChannelM3u8SettingsPcrPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-pcrpid
mlcmsPcrPid :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsPcrPid = lens _mediaLiveChannelM3u8SettingsPcrPid (\s a -> s { _mediaLiveChannelM3u8SettingsPcrPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-pmtinterval
mlcmsPmtInterval :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Integer))
mlcmsPmtInterval = lens _mediaLiveChannelM3u8SettingsPmtInterval (\s a -> s { _mediaLiveChannelM3u8SettingsPmtInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-pmtpid
mlcmsPmtPid :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsPmtPid = lens _mediaLiveChannelM3u8SettingsPmtPid (\s a -> s { _mediaLiveChannelM3u8SettingsPmtPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-programnum
mlcmsProgramNum :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Integer))
mlcmsProgramNum = lens _mediaLiveChannelM3u8SettingsProgramNum (\s a -> s { _mediaLiveChannelM3u8SettingsProgramNum = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-scte35behavior
mlcmsScte35Behavior :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsScte35Behavior = lens _mediaLiveChannelM3u8SettingsScte35Behavior (\s a -> s { _mediaLiveChannelM3u8SettingsScte35Behavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-scte35pid
mlcmsScte35Pid :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsScte35Pid = lens _mediaLiveChannelM3u8SettingsScte35Pid (\s a -> s { _mediaLiveChannelM3u8SettingsScte35Pid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-timedmetadatabehavior
mlcmsTimedMetadataBehavior :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsTimedMetadataBehavior = lens _mediaLiveChannelM3u8SettingsTimedMetadataBehavior (\s a -> s { _mediaLiveChannelM3u8SettingsTimedMetadataBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-timedmetadatapid
mlcmsTimedMetadataPid :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsTimedMetadataPid = lens _mediaLiveChannelM3u8SettingsTimedMetadataPid (\s a -> s { _mediaLiveChannelM3u8SettingsTimedMetadataPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-transportstreamid
mlcmsTransportStreamId :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Integer))
mlcmsTransportStreamId = lens _mediaLiveChannelM3u8SettingsTransportStreamId (\s a -> s { _mediaLiveChannelM3u8SettingsTransportStreamId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m3u8settings.html#cfn-medialive-channel-m3u8settings-videopid
mlcmsVideoPid :: Lens' MediaLiveChannelM3u8Settings (Maybe (Val Text))
mlcmsVideoPid = lens _mediaLiveChannelM3u8SettingsVideoPid (\s a -> s { _mediaLiveChannelM3u8SettingsVideoPid = a })
