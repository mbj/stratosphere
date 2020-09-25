{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMsSmoothGroupSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef

-- | Full data type definition for MediaLiveChannelMsSmoothGroupSettings. See
-- 'mediaLiveChannelMsSmoothGroupSettings' for a more convenient
-- constructor.
data MediaLiveChannelMsSmoothGroupSettings =
  MediaLiveChannelMsSmoothGroupSettings
  { _mediaLiveChannelMsSmoothGroupSettingsAcquisitionPointId :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsAudioOnlyTimecodeControl :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsCertificateMode :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsConnectionRetryInterval :: Maybe (Val Integer)
  , _mediaLiveChannelMsSmoothGroupSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  , _mediaLiveChannelMsSmoothGroupSettingsEventId :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsEventIdMode :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsEventStopBehavior :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsFilecacheDuration :: Maybe (Val Integer)
  , _mediaLiveChannelMsSmoothGroupSettingsFragmentLength :: Maybe (Val Integer)
  , _mediaLiveChannelMsSmoothGroupSettingsInputLossAction :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsNumRetries :: Maybe (Val Integer)
  , _mediaLiveChannelMsSmoothGroupSettingsRestartDelay :: Maybe (Val Integer)
  , _mediaLiveChannelMsSmoothGroupSettingsSegmentationMode :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsSendDelayMs :: Maybe (Val Integer)
  , _mediaLiveChannelMsSmoothGroupSettingsSparseTrackType :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsStreamManifestBehavior :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsTimestampOffset :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothGroupSettingsTimestampOffsetMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMsSmoothGroupSettings where
  toJSON MediaLiveChannelMsSmoothGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("AcquisitionPointId",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsAcquisitionPointId
    , fmap (("AudioOnlyTimecodeControl",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsAudioOnlyTimecodeControl
    , fmap (("CertificateMode",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsCertificateMode
    , fmap (("ConnectionRetryInterval",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsConnectionRetryInterval
    , fmap (("Destination",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsDestination
    , fmap (("EventId",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsEventId
    , fmap (("EventIdMode",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsEventIdMode
    , fmap (("EventStopBehavior",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsEventStopBehavior
    , fmap (("FilecacheDuration",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsFilecacheDuration
    , fmap (("FragmentLength",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsFragmentLength
    , fmap (("InputLossAction",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsInputLossAction
    , fmap (("NumRetries",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsNumRetries
    , fmap (("RestartDelay",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsRestartDelay
    , fmap (("SegmentationMode",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsSegmentationMode
    , fmap (("SendDelayMs",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsSendDelayMs
    , fmap (("SparseTrackType",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsSparseTrackType
    , fmap (("StreamManifestBehavior",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsStreamManifestBehavior
    , fmap (("TimestampOffset",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsTimestampOffset
    , fmap (("TimestampOffsetMode",) . toJSON) _mediaLiveChannelMsSmoothGroupSettingsTimestampOffsetMode
    ]

-- | Constructor for 'MediaLiveChannelMsSmoothGroupSettings' containing
-- required fields as arguments.
mediaLiveChannelMsSmoothGroupSettings
  :: MediaLiveChannelMsSmoothGroupSettings
mediaLiveChannelMsSmoothGroupSettings  =
  MediaLiveChannelMsSmoothGroupSettings
  { _mediaLiveChannelMsSmoothGroupSettingsAcquisitionPointId = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsAudioOnlyTimecodeControl = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsCertificateMode = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsConnectionRetryInterval = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsDestination = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsEventId = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsEventIdMode = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsEventStopBehavior = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsFilecacheDuration = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsFragmentLength = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsInputLossAction = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsNumRetries = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsRestartDelay = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsSegmentationMode = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsSendDelayMs = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsSparseTrackType = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsStreamManifestBehavior = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsTimestampOffset = Nothing
  , _mediaLiveChannelMsSmoothGroupSettingsTimestampOffsetMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-acquisitionpointid
mlcmsgsAcquisitionPointId :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsAcquisitionPointId = lens _mediaLiveChannelMsSmoothGroupSettingsAcquisitionPointId (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsAcquisitionPointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-audioonlytimecodecontrol
mlcmsgsAudioOnlyTimecodeControl :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsAudioOnlyTimecodeControl = lens _mediaLiveChannelMsSmoothGroupSettingsAudioOnlyTimecodeControl (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsAudioOnlyTimecodeControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-certificatemode
mlcmsgsCertificateMode :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsCertificateMode = lens _mediaLiveChannelMsSmoothGroupSettingsCertificateMode (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsCertificateMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-connectionretryinterval
mlcmsgsConnectionRetryInterval :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Integer))
mlcmsgsConnectionRetryInterval = lens _mediaLiveChannelMsSmoothGroupSettingsConnectionRetryInterval (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsConnectionRetryInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-destination
mlcmsgsDestination :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcmsgsDestination = lens _mediaLiveChannelMsSmoothGroupSettingsDestination (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-eventid
mlcmsgsEventId :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsEventId = lens _mediaLiveChannelMsSmoothGroupSettingsEventId (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsEventId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-eventidmode
mlcmsgsEventIdMode :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsEventIdMode = lens _mediaLiveChannelMsSmoothGroupSettingsEventIdMode (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsEventIdMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-eventstopbehavior
mlcmsgsEventStopBehavior :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsEventStopBehavior = lens _mediaLiveChannelMsSmoothGroupSettingsEventStopBehavior (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsEventStopBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-filecacheduration
mlcmsgsFilecacheDuration :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Integer))
mlcmsgsFilecacheDuration = lens _mediaLiveChannelMsSmoothGroupSettingsFilecacheDuration (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsFilecacheDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-fragmentlength
mlcmsgsFragmentLength :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Integer))
mlcmsgsFragmentLength = lens _mediaLiveChannelMsSmoothGroupSettingsFragmentLength (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsFragmentLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-inputlossaction
mlcmsgsInputLossAction :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsInputLossAction = lens _mediaLiveChannelMsSmoothGroupSettingsInputLossAction (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsInputLossAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-numretries
mlcmsgsNumRetries :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Integer))
mlcmsgsNumRetries = lens _mediaLiveChannelMsSmoothGroupSettingsNumRetries (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsNumRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-restartdelay
mlcmsgsRestartDelay :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Integer))
mlcmsgsRestartDelay = lens _mediaLiveChannelMsSmoothGroupSettingsRestartDelay (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsRestartDelay = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-segmentationmode
mlcmsgsSegmentationMode :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsSegmentationMode = lens _mediaLiveChannelMsSmoothGroupSettingsSegmentationMode (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsSegmentationMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-senddelayms
mlcmsgsSendDelayMs :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Integer))
mlcmsgsSendDelayMs = lens _mediaLiveChannelMsSmoothGroupSettingsSendDelayMs (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsSendDelayMs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-sparsetracktype
mlcmsgsSparseTrackType :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsSparseTrackType = lens _mediaLiveChannelMsSmoothGroupSettingsSparseTrackType (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsSparseTrackType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-streammanifestbehavior
mlcmsgsStreamManifestBehavior :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsStreamManifestBehavior = lens _mediaLiveChannelMsSmoothGroupSettingsStreamManifestBehavior (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsStreamManifestBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-timestampoffset
mlcmsgsTimestampOffset :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsTimestampOffset = lens _mediaLiveChannelMsSmoothGroupSettingsTimestampOffset (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsTimestampOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothgroupsettings.html#cfn-medialive-channel-mssmoothgroupsettings-timestampoffsetmode
mlcmsgsTimestampOffsetMode :: Lens' MediaLiveChannelMsSmoothGroupSettings (Maybe (Val Text))
mlcmsgsTimestampOffsetMode = lens _mediaLiveChannelMsSmoothGroupSettingsTimestampOffsetMode (\s a -> s { _mediaLiveChannelMsSmoothGroupSettingsTimestampOffsetMode = a })
