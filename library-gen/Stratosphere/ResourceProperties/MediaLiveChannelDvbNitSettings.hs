{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelDvbNitSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelDvbNitSettings. See
-- 'mediaLiveChannelDvbNitSettings' for a more convenient constructor.
data MediaLiveChannelDvbNitSettings =
  MediaLiveChannelDvbNitSettings
  { _mediaLiveChannelDvbNitSettingsNetworkId :: Maybe (Val Integer)
  , _mediaLiveChannelDvbNitSettingsNetworkName :: Maybe (Val Text)
  , _mediaLiveChannelDvbNitSettingsRepInterval :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelDvbNitSettings where
  toJSON MediaLiveChannelDvbNitSettings{..} =
    object $
    catMaybes
    [ fmap (("NetworkId",) . toJSON) _mediaLiveChannelDvbNitSettingsNetworkId
    , fmap (("NetworkName",) . toJSON) _mediaLiveChannelDvbNitSettingsNetworkName
    , fmap (("RepInterval",) . toJSON) _mediaLiveChannelDvbNitSettingsRepInterval
    ]

-- | Constructor for 'MediaLiveChannelDvbNitSettings' containing required
-- fields as arguments.
mediaLiveChannelDvbNitSettings
  :: MediaLiveChannelDvbNitSettings
mediaLiveChannelDvbNitSettings  =
  MediaLiveChannelDvbNitSettings
  { _mediaLiveChannelDvbNitSettingsNetworkId = Nothing
  , _mediaLiveChannelDvbNitSettingsNetworkName = Nothing
  , _mediaLiveChannelDvbNitSettingsRepInterval = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html#cfn-medialive-channel-dvbnitsettings-networkid
mlcdnsNetworkId :: Lens' MediaLiveChannelDvbNitSettings (Maybe (Val Integer))
mlcdnsNetworkId = lens _mediaLiveChannelDvbNitSettingsNetworkId (\s a -> s { _mediaLiveChannelDvbNitSettingsNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html#cfn-medialive-channel-dvbnitsettings-networkname
mlcdnsNetworkName :: Lens' MediaLiveChannelDvbNitSettings (Maybe (Val Text))
mlcdnsNetworkName = lens _mediaLiveChannelDvbNitSettingsNetworkName (\s a -> s { _mediaLiveChannelDvbNitSettingsNetworkName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html#cfn-medialive-channel-dvbnitsettings-repinterval
mlcdnsRepInterval :: Lens' MediaLiveChannelDvbNitSettings (Maybe (Val Integer))
mlcdnsRepInterval = lens _mediaLiveChannelDvbNitSettingsRepInterval (\s a -> s { _mediaLiveChannelDvbNitSettingsRepInterval = a })
