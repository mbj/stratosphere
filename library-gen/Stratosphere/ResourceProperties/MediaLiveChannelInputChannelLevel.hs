{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputchannellevel.html

module Stratosphere.ResourceProperties.MediaLiveChannelInputChannelLevel where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelInputChannelLevel. See
-- 'mediaLiveChannelInputChannelLevel' for a more convenient constructor.
data MediaLiveChannelInputChannelLevel =
  MediaLiveChannelInputChannelLevel
  { _mediaLiveChannelInputChannelLevelGain :: Maybe (Val Integer)
  , _mediaLiveChannelInputChannelLevelInputChannel :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelInputChannelLevel where
  toJSON MediaLiveChannelInputChannelLevel{..} =
    object $
    catMaybes
    [ fmap (("Gain",) . toJSON) _mediaLiveChannelInputChannelLevelGain
    , fmap (("InputChannel",) . toJSON) _mediaLiveChannelInputChannelLevelInputChannel
    ]

-- | Constructor for 'MediaLiveChannelInputChannelLevel' containing required
-- fields as arguments.
mediaLiveChannelInputChannelLevel
  :: MediaLiveChannelInputChannelLevel
mediaLiveChannelInputChannelLevel  =
  MediaLiveChannelInputChannelLevel
  { _mediaLiveChannelInputChannelLevelGain = Nothing
  , _mediaLiveChannelInputChannelLevelInputChannel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputchannellevel.html#cfn-medialive-channel-inputchannellevel-gain
mlciclGain :: Lens' MediaLiveChannelInputChannelLevel (Maybe (Val Integer))
mlciclGain = lens _mediaLiveChannelInputChannelLevelGain (\s a -> s { _mediaLiveChannelInputChannelLevelGain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputchannellevel.html#cfn-medialive-channel-inputchannellevel-inputchannel
mlciclInputChannel :: Lens' MediaLiveChannelInputChannelLevel (Maybe (Val Integer))
mlciclInputChannel = lens _mediaLiveChannelInputChannelLevelInputChannel (\s a -> s { _mediaLiveChannelInputChannelLevelInputChannel = a })
