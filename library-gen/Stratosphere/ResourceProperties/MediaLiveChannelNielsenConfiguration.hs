{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenconfiguration.html

module Stratosphere.ResourceProperties.MediaLiveChannelNielsenConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelNielsenConfiguration. See
-- 'mediaLiveChannelNielsenConfiguration' for a more convenient constructor.
data MediaLiveChannelNielsenConfiguration =
  MediaLiveChannelNielsenConfiguration
  { _mediaLiveChannelNielsenConfigurationDistributorId :: Maybe (Val Text)
  , _mediaLiveChannelNielsenConfigurationNielsenPcmToId3Tagging :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelNielsenConfiguration where
  toJSON MediaLiveChannelNielsenConfiguration{..} =
    object $
    catMaybes
    [ fmap (("DistributorId",) . toJSON) _mediaLiveChannelNielsenConfigurationDistributorId
    , fmap (("NielsenPcmToId3Tagging",) . toJSON) _mediaLiveChannelNielsenConfigurationNielsenPcmToId3Tagging
    ]

-- | Constructor for 'MediaLiveChannelNielsenConfiguration' containing
-- required fields as arguments.
mediaLiveChannelNielsenConfiguration
  :: MediaLiveChannelNielsenConfiguration
mediaLiveChannelNielsenConfiguration  =
  MediaLiveChannelNielsenConfiguration
  { _mediaLiveChannelNielsenConfigurationDistributorId = Nothing
  , _mediaLiveChannelNielsenConfigurationNielsenPcmToId3Tagging = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenconfiguration.html#cfn-medialive-channel-nielsenconfiguration-distributorid
mlcncDistributorId :: Lens' MediaLiveChannelNielsenConfiguration (Maybe (Val Text))
mlcncDistributorId = lens _mediaLiveChannelNielsenConfigurationDistributorId (\s a -> s { _mediaLiveChannelNielsenConfigurationDistributorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenconfiguration.html#cfn-medialive-channel-nielsenconfiguration-nielsenpcmtoid3tagging
mlcncNielsenPcmToId3Tagging :: Lens' MediaLiveChannelNielsenConfiguration (Maybe (Val Text))
mlcncNielsenPcmToId3Tagging = lens _mediaLiveChannelNielsenConfigurationNielsenPcmToId3Tagging (\s a -> s { _mediaLiveChannelNielsenConfigurationNielsenPcmToId3Tagging = a })
