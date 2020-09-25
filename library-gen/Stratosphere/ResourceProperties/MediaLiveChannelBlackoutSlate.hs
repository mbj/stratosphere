{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-blackoutslate.html

module Stratosphere.ResourceProperties.MediaLiveChannelBlackoutSlate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelBlackoutSlate. See
-- 'mediaLiveChannelBlackoutSlate' for a more convenient constructor.
data MediaLiveChannelBlackoutSlate =
  MediaLiveChannelBlackoutSlate
  { _mediaLiveChannelBlackoutSlateBlackoutSlateImage :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelBlackoutSlateNetworkEndBlackout :: Maybe (Val Text)
  , _mediaLiveChannelBlackoutSlateNetworkEndBlackoutImage :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelBlackoutSlateNetworkId :: Maybe (Val Text)
  , _mediaLiveChannelBlackoutSlateState :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelBlackoutSlate where
  toJSON MediaLiveChannelBlackoutSlate{..} =
    object $
    catMaybes
    [ fmap (("BlackoutSlateImage",) . toJSON) _mediaLiveChannelBlackoutSlateBlackoutSlateImage
    , fmap (("NetworkEndBlackout",) . toJSON) _mediaLiveChannelBlackoutSlateNetworkEndBlackout
    , fmap (("NetworkEndBlackoutImage",) . toJSON) _mediaLiveChannelBlackoutSlateNetworkEndBlackoutImage
    , fmap (("NetworkId",) . toJSON) _mediaLiveChannelBlackoutSlateNetworkId
    , fmap (("State",) . toJSON) _mediaLiveChannelBlackoutSlateState
    ]

-- | Constructor for 'MediaLiveChannelBlackoutSlate' containing required
-- fields as arguments.
mediaLiveChannelBlackoutSlate
  :: MediaLiveChannelBlackoutSlate
mediaLiveChannelBlackoutSlate  =
  MediaLiveChannelBlackoutSlate
  { _mediaLiveChannelBlackoutSlateBlackoutSlateImage = Nothing
  , _mediaLiveChannelBlackoutSlateNetworkEndBlackout = Nothing
  , _mediaLiveChannelBlackoutSlateNetworkEndBlackoutImage = Nothing
  , _mediaLiveChannelBlackoutSlateNetworkId = Nothing
  , _mediaLiveChannelBlackoutSlateState = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-blackoutslate.html#cfn-medialive-channel-blackoutslate-blackoutslateimage
mlcbsBlackoutSlateImage :: Lens' MediaLiveChannelBlackoutSlate (Maybe MediaLiveChannelInputLocation)
mlcbsBlackoutSlateImage = lens _mediaLiveChannelBlackoutSlateBlackoutSlateImage (\s a -> s { _mediaLiveChannelBlackoutSlateBlackoutSlateImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-blackoutslate.html#cfn-medialive-channel-blackoutslate-networkendblackout
mlcbsNetworkEndBlackout :: Lens' MediaLiveChannelBlackoutSlate (Maybe (Val Text))
mlcbsNetworkEndBlackout = lens _mediaLiveChannelBlackoutSlateNetworkEndBlackout (\s a -> s { _mediaLiveChannelBlackoutSlateNetworkEndBlackout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-blackoutslate.html#cfn-medialive-channel-blackoutslate-networkendblackoutimage
mlcbsNetworkEndBlackoutImage :: Lens' MediaLiveChannelBlackoutSlate (Maybe MediaLiveChannelInputLocation)
mlcbsNetworkEndBlackoutImage = lens _mediaLiveChannelBlackoutSlateNetworkEndBlackoutImage (\s a -> s { _mediaLiveChannelBlackoutSlateNetworkEndBlackoutImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-blackoutslate.html#cfn-medialive-channel-blackoutslate-networkid
mlcbsNetworkId :: Lens' MediaLiveChannelBlackoutSlate (Maybe (Val Text))
mlcbsNetworkId = lens _mediaLiveChannelBlackoutSlateNetworkId (\s a -> s { _mediaLiveChannelBlackoutSlateNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-blackoutslate.html#cfn-medialive-channel-blackoutslate-state
mlcbsState :: Lens' MediaLiveChannelBlackoutSlate (Maybe (Val Text))
mlcbsState = lens _mediaLiveChannelBlackoutSlateState (\s a -> s { _mediaLiveChannelBlackoutSlateState = a })
