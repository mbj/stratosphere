{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availblanking.html

module Stratosphere.ResourceProperties.MediaLiveChannelAvailBlanking where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelAvailBlanking. See
-- 'mediaLiveChannelAvailBlanking' for a more convenient constructor.
data MediaLiveChannelAvailBlanking =
  MediaLiveChannelAvailBlanking
  { _mediaLiveChannelAvailBlankingAvailBlankingImage :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelAvailBlankingState :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAvailBlanking where
  toJSON MediaLiveChannelAvailBlanking{..} =
    object $
    catMaybes
    [ fmap (("AvailBlankingImage",) . toJSON) _mediaLiveChannelAvailBlankingAvailBlankingImage
    , fmap (("State",) . toJSON) _mediaLiveChannelAvailBlankingState
    ]

-- | Constructor for 'MediaLiveChannelAvailBlanking' containing required
-- fields as arguments.
mediaLiveChannelAvailBlanking
  :: MediaLiveChannelAvailBlanking
mediaLiveChannelAvailBlanking  =
  MediaLiveChannelAvailBlanking
  { _mediaLiveChannelAvailBlankingAvailBlankingImage = Nothing
  , _mediaLiveChannelAvailBlankingState = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availblanking.html#cfn-medialive-channel-availblanking-availblankingimage
mlcabAvailBlankingImage :: Lens' MediaLiveChannelAvailBlanking (Maybe MediaLiveChannelInputLocation)
mlcabAvailBlankingImage = lens _mediaLiveChannelAvailBlankingAvailBlankingImage (\s a -> s { _mediaLiveChannelAvailBlankingAvailBlankingImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availblanking.html#cfn-medialive-channel-availblanking-state
mlcabState :: Lens' MediaLiveChannelAvailBlanking (Maybe (Val Text))
mlcabState = lens _mediaLiveChannelAvailBlankingState (\s a -> s { _mediaLiveChannelAvailBlankingState = a })
