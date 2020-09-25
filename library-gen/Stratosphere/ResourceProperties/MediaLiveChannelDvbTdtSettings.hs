{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbtdtsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelDvbTdtSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelDvbTdtSettings. See
-- 'mediaLiveChannelDvbTdtSettings' for a more convenient constructor.
data MediaLiveChannelDvbTdtSettings =
  MediaLiveChannelDvbTdtSettings
  { _mediaLiveChannelDvbTdtSettingsRepInterval :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelDvbTdtSettings where
  toJSON MediaLiveChannelDvbTdtSettings{..} =
    object $
    catMaybes
    [ fmap (("RepInterval",) . toJSON) _mediaLiveChannelDvbTdtSettingsRepInterval
    ]

-- | Constructor for 'MediaLiveChannelDvbTdtSettings' containing required
-- fields as arguments.
mediaLiveChannelDvbTdtSettings
  :: MediaLiveChannelDvbTdtSettings
mediaLiveChannelDvbTdtSettings  =
  MediaLiveChannelDvbTdtSettings
  { _mediaLiveChannelDvbTdtSettingsRepInterval = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbtdtsettings.html#cfn-medialive-channel-dvbtdtsettings-repinterval
mlcdtsRepInterval :: Lens' MediaLiveChannelDvbTdtSettings (Maybe (Val Integer))
mlcdtsRepInterval = lens _mediaLiveChannelDvbTdtSettingsRepInterval (\s a -> s { _mediaLiveChannelDvbTdtSettingsRepInterval = a })
