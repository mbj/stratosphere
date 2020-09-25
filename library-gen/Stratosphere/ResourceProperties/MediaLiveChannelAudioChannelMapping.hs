{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiochannelmapping.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioChannelMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputChannelLevel

-- | Full data type definition for MediaLiveChannelAudioChannelMapping. See
-- 'mediaLiveChannelAudioChannelMapping' for a more convenient constructor.
data MediaLiveChannelAudioChannelMapping =
  MediaLiveChannelAudioChannelMapping
  { _mediaLiveChannelAudioChannelMappingInputChannelLevels :: Maybe [MediaLiveChannelInputChannelLevel]
  , _mediaLiveChannelAudioChannelMappingOutputChannel :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioChannelMapping where
  toJSON MediaLiveChannelAudioChannelMapping{..} =
    object $
    catMaybes
    [ fmap (("InputChannelLevels",) . toJSON) _mediaLiveChannelAudioChannelMappingInputChannelLevels
    , fmap (("OutputChannel",) . toJSON) _mediaLiveChannelAudioChannelMappingOutputChannel
    ]

-- | Constructor for 'MediaLiveChannelAudioChannelMapping' containing required
-- fields as arguments.
mediaLiveChannelAudioChannelMapping
  :: MediaLiveChannelAudioChannelMapping
mediaLiveChannelAudioChannelMapping  =
  MediaLiveChannelAudioChannelMapping
  { _mediaLiveChannelAudioChannelMappingInputChannelLevels = Nothing
  , _mediaLiveChannelAudioChannelMappingOutputChannel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiochannelmapping.html#cfn-medialive-channel-audiochannelmapping-inputchannellevels
mlcacmInputChannelLevels :: Lens' MediaLiveChannelAudioChannelMapping (Maybe [MediaLiveChannelInputChannelLevel])
mlcacmInputChannelLevels = lens _mediaLiveChannelAudioChannelMappingInputChannelLevels (\s a -> s { _mediaLiveChannelAudioChannelMappingInputChannelLevels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiochannelmapping.html#cfn-medialive-channel-audiochannelmapping-outputchannel
mlcacmOutputChannel :: Lens' MediaLiveChannelAudioChannelMapping (Maybe (Val Integer))
mlcacmOutputChannel = lens _mediaLiveChannelAudioChannelMappingOutputChannel (\s a -> s { _mediaLiveChannelAudioChannelMappingOutputChannel = a })
