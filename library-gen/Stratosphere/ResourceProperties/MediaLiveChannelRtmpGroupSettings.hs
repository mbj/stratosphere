{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelRtmpGroupSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelRtmpGroupSettings. See
-- 'mediaLiveChannelRtmpGroupSettings' for a more convenient constructor.
data MediaLiveChannelRtmpGroupSettings =
  MediaLiveChannelRtmpGroupSettings
  { _mediaLiveChannelRtmpGroupSettingsAuthenticationScheme :: Maybe (Val Text)
  , _mediaLiveChannelRtmpGroupSettingsCacheFullBehavior :: Maybe (Val Text)
  , _mediaLiveChannelRtmpGroupSettingsCacheLength :: Maybe (Val Integer)
  , _mediaLiveChannelRtmpGroupSettingsCaptionData :: Maybe (Val Text)
  , _mediaLiveChannelRtmpGroupSettingsInputLossAction :: Maybe (Val Text)
  , _mediaLiveChannelRtmpGroupSettingsRestartDelay :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelRtmpGroupSettings where
  toJSON MediaLiveChannelRtmpGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("AuthenticationScheme",) . toJSON) _mediaLiveChannelRtmpGroupSettingsAuthenticationScheme
    , fmap (("CacheFullBehavior",) . toJSON) _mediaLiveChannelRtmpGroupSettingsCacheFullBehavior
    , fmap (("CacheLength",) . toJSON) _mediaLiveChannelRtmpGroupSettingsCacheLength
    , fmap (("CaptionData",) . toJSON) _mediaLiveChannelRtmpGroupSettingsCaptionData
    , fmap (("InputLossAction",) . toJSON) _mediaLiveChannelRtmpGroupSettingsInputLossAction
    , fmap (("RestartDelay",) . toJSON) _mediaLiveChannelRtmpGroupSettingsRestartDelay
    ]

-- | Constructor for 'MediaLiveChannelRtmpGroupSettings' containing required
-- fields as arguments.
mediaLiveChannelRtmpGroupSettings
  :: MediaLiveChannelRtmpGroupSettings
mediaLiveChannelRtmpGroupSettings  =
  MediaLiveChannelRtmpGroupSettings
  { _mediaLiveChannelRtmpGroupSettingsAuthenticationScheme = Nothing
  , _mediaLiveChannelRtmpGroupSettingsCacheFullBehavior = Nothing
  , _mediaLiveChannelRtmpGroupSettingsCacheLength = Nothing
  , _mediaLiveChannelRtmpGroupSettingsCaptionData = Nothing
  , _mediaLiveChannelRtmpGroupSettingsInputLossAction = Nothing
  , _mediaLiveChannelRtmpGroupSettingsRestartDelay = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-authenticationscheme
mlcrgsAuthenticationScheme :: Lens' MediaLiveChannelRtmpGroupSettings (Maybe (Val Text))
mlcrgsAuthenticationScheme = lens _mediaLiveChannelRtmpGroupSettingsAuthenticationScheme (\s a -> s { _mediaLiveChannelRtmpGroupSettingsAuthenticationScheme = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-cachefullbehavior
mlcrgsCacheFullBehavior :: Lens' MediaLiveChannelRtmpGroupSettings (Maybe (Val Text))
mlcrgsCacheFullBehavior = lens _mediaLiveChannelRtmpGroupSettingsCacheFullBehavior (\s a -> s { _mediaLiveChannelRtmpGroupSettingsCacheFullBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-cachelength
mlcrgsCacheLength :: Lens' MediaLiveChannelRtmpGroupSettings (Maybe (Val Integer))
mlcrgsCacheLength = lens _mediaLiveChannelRtmpGroupSettingsCacheLength (\s a -> s { _mediaLiveChannelRtmpGroupSettingsCacheLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-captiondata
mlcrgsCaptionData :: Lens' MediaLiveChannelRtmpGroupSettings (Maybe (Val Text))
mlcrgsCaptionData = lens _mediaLiveChannelRtmpGroupSettingsCaptionData (\s a -> s { _mediaLiveChannelRtmpGroupSettingsCaptionData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-inputlossaction
mlcrgsInputLossAction :: Lens' MediaLiveChannelRtmpGroupSettings (Maybe (Val Text))
mlcrgsInputLossAction = lens _mediaLiveChannelRtmpGroupSettingsInputLossAction (\s a -> s { _mediaLiveChannelRtmpGroupSettingsInputLossAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-restartdelay
mlcrgsRestartDelay :: Lens' MediaLiveChannelRtmpGroupSettings (Maybe (Val Integer))
mlcrgsRestartDelay = lens _mediaLiveChannelRtmpGroupSettingsRestartDelay (\s a -> s { _mediaLiveChannelRtmpGroupSettingsRestartDelay = a })
