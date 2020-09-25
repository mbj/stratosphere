{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hdr10settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHdr10Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelHdr10Settings. See
-- 'mediaLiveChannelHdr10Settings' for a more convenient constructor.
data MediaLiveChannelHdr10Settings =
  MediaLiveChannelHdr10Settings
  { _mediaLiveChannelHdr10SettingsMaxCll :: Maybe (Val Integer)
  , _mediaLiveChannelHdr10SettingsMaxFall :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHdr10Settings where
  toJSON MediaLiveChannelHdr10Settings{..} =
    object $
    catMaybes
    [ fmap (("MaxCll",) . toJSON) _mediaLiveChannelHdr10SettingsMaxCll
    , fmap (("MaxFall",) . toJSON) _mediaLiveChannelHdr10SettingsMaxFall
    ]

-- | Constructor for 'MediaLiveChannelHdr10Settings' containing required
-- fields as arguments.
mediaLiveChannelHdr10Settings
  :: MediaLiveChannelHdr10Settings
mediaLiveChannelHdr10Settings  =
  MediaLiveChannelHdr10Settings
  { _mediaLiveChannelHdr10SettingsMaxCll = Nothing
  , _mediaLiveChannelHdr10SettingsMaxFall = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hdr10settings.html#cfn-medialive-channel-hdr10settings-maxcll
mlchsMaxCll :: Lens' MediaLiveChannelHdr10Settings (Maybe (Val Integer))
mlchsMaxCll = lens _mediaLiveChannelHdr10SettingsMaxCll (\s a -> s { _mediaLiveChannelHdr10SettingsMaxCll = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hdr10settings.html#cfn-medialive-channel-hdr10settings-maxfall
mlchsMaxFall :: Lens' MediaLiveChannelHdr10Settings (Maybe (Val Integer))
mlchsMaxFall = lens _mediaLiveChannelHdr10SettingsMaxFall (\s a -> s { _mediaLiveChannelHdr10SettingsMaxFall = a })
