{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelDvbSubSourceSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelDvbSubSourceSettings. See
-- 'mediaLiveChannelDvbSubSourceSettings' for a more convenient constructor.
data MediaLiveChannelDvbSubSourceSettings =
  MediaLiveChannelDvbSubSourceSettings
  { _mediaLiveChannelDvbSubSourceSettingsPid :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelDvbSubSourceSettings where
  toJSON MediaLiveChannelDvbSubSourceSettings{..} =
    object $
    catMaybes
    [ fmap (("Pid",) . toJSON) _mediaLiveChannelDvbSubSourceSettingsPid
    ]

-- | Constructor for 'MediaLiveChannelDvbSubSourceSettings' containing
-- required fields as arguments.
mediaLiveChannelDvbSubSourceSettings
  :: MediaLiveChannelDvbSubSourceSettings
mediaLiveChannelDvbSubSourceSettings  =
  MediaLiveChannelDvbSubSourceSettings
  { _mediaLiveChannelDvbSubSourceSettingsPid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html#cfn-medialive-channel-dvbsubsourcesettings-pid
mlcdsssPid :: Lens' MediaLiveChannelDvbSubSourceSettings (Maybe (Val Integer))
mlcdsssPid = lens _mediaLiveChannelDvbSubSourceSettingsPid (\s a -> s { _mediaLiveChannelDvbSubSourceSettingsPid = a })
