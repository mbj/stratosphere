{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html

module Stratosphere.ResourceProperties.MediaLiveChannelVideoDescription where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelVideoCodecSettings

-- | Full data type definition for MediaLiveChannelVideoDescription. See
-- 'mediaLiveChannelVideoDescription' for a more convenient constructor.
data MediaLiveChannelVideoDescription =
  MediaLiveChannelVideoDescription
  { _mediaLiveChannelVideoDescriptionCodecSettings :: Maybe MediaLiveChannelVideoCodecSettings
  , _mediaLiveChannelVideoDescriptionHeight :: Maybe (Val Integer)
  , _mediaLiveChannelVideoDescriptionName :: Maybe (Val Text)
  , _mediaLiveChannelVideoDescriptionRespondToAfd :: Maybe (Val Text)
  , _mediaLiveChannelVideoDescriptionScalingBehavior :: Maybe (Val Text)
  , _mediaLiveChannelVideoDescriptionSharpness :: Maybe (Val Integer)
  , _mediaLiveChannelVideoDescriptionWidth :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelVideoDescription where
  toJSON MediaLiveChannelVideoDescription{..} =
    object $
    catMaybes
    [ fmap (("CodecSettings",) . toJSON) _mediaLiveChannelVideoDescriptionCodecSettings
    , fmap (("Height",) . toJSON) _mediaLiveChannelVideoDescriptionHeight
    , fmap (("Name",) . toJSON) _mediaLiveChannelVideoDescriptionName
    , fmap (("RespondToAfd",) . toJSON) _mediaLiveChannelVideoDescriptionRespondToAfd
    , fmap (("ScalingBehavior",) . toJSON) _mediaLiveChannelVideoDescriptionScalingBehavior
    , fmap (("Sharpness",) . toJSON) _mediaLiveChannelVideoDescriptionSharpness
    , fmap (("Width",) . toJSON) _mediaLiveChannelVideoDescriptionWidth
    ]

-- | Constructor for 'MediaLiveChannelVideoDescription' containing required
-- fields as arguments.
mediaLiveChannelVideoDescription
  :: MediaLiveChannelVideoDescription
mediaLiveChannelVideoDescription  =
  MediaLiveChannelVideoDescription
  { _mediaLiveChannelVideoDescriptionCodecSettings = Nothing
  , _mediaLiveChannelVideoDescriptionHeight = Nothing
  , _mediaLiveChannelVideoDescriptionName = Nothing
  , _mediaLiveChannelVideoDescriptionRespondToAfd = Nothing
  , _mediaLiveChannelVideoDescriptionScalingBehavior = Nothing
  , _mediaLiveChannelVideoDescriptionSharpness = Nothing
  , _mediaLiveChannelVideoDescriptionWidth = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-codecsettings
mlcvdCodecSettings :: Lens' MediaLiveChannelVideoDescription (Maybe MediaLiveChannelVideoCodecSettings)
mlcvdCodecSettings = lens _mediaLiveChannelVideoDescriptionCodecSettings (\s a -> s { _mediaLiveChannelVideoDescriptionCodecSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-height
mlcvdHeight :: Lens' MediaLiveChannelVideoDescription (Maybe (Val Integer))
mlcvdHeight = lens _mediaLiveChannelVideoDescriptionHeight (\s a -> s { _mediaLiveChannelVideoDescriptionHeight = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-name
mlcvdName :: Lens' MediaLiveChannelVideoDescription (Maybe (Val Text))
mlcvdName = lens _mediaLiveChannelVideoDescriptionName (\s a -> s { _mediaLiveChannelVideoDescriptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-respondtoafd
mlcvdRespondToAfd :: Lens' MediaLiveChannelVideoDescription (Maybe (Val Text))
mlcvdRespondToAfd = lens _mediaLiveChannelVideoDescriptionRespondToAfd (\s a -> s { _mediaLiveChannelVideoDescriptionRespondToAfd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-scalingbehavior
mlcvdScalingBehavior :: Lens' MediaLiveChannelVideoDescription (Maybe (Val Text))
mlcvdScalingBehavior = lens _mediaLiveChannelVideoDescriptionScalingBehavior (\s a -> s { _mediaLiveChannelVideoDescriptionScalingBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-sharpness
mlcvdSharpness :: Lens' MediaLiveChannelVideoDescription (Maybe (Val Integer))
mlcvdSharpness = lens _mediaLiveChannelVideoDescriptionSharpness (\s a -> s { _mediaLiveChannelVideoDescriptionSharpness = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-width
mlcvdWidth :: Lens' MediaLiveChannelVideoDescription (Maybe (Val Integer))
mlcvdWidth = lens _mediaLiveChannelVideoDescriptionWidth (\s a -> s { _mediaLiveChannelVideoDescriptionWidth = a })
