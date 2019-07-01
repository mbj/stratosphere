{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html

module Stratosphere.ResourceProperties.MediaLiveChannelInputSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelInputSpecification. See
-- 'mediaLiveChannelInputSpecification' for a more convenient constructor.
data MediaLiveChannelInputSpecification =
  MediaLiveChannelInputSpecification
  { _mediaLiveChannelInputSpecificationCodec :: Maybe (Val Text)
  , _mediaLiveChannelInputSpecificationMaximumBitrate :: Maybe (Val Text)
  , _mediaLiveChannelInputSpecificationResolution :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelInputSpecification where
  toJSON MediaLiveChannelInputSpecification{..} =
    object $
    catMaybes
    [ fmap (("Codec",) . toJSON) _mediaLiveChannelInputSpecificationCodec
    , fmap (("MaximumBitrate",) . toJSON) _mediaLiveChannelInputSpecificationMaximumBitrate
    , fmap (("Resolution",) . toJSON) _mediaLiveChannelInputSpecificationResolution
    ]

-- | Constructor for 'MediaLiveChannelInputSpecification' containing required
-- fields as arguments.
mediaLiveChannelInputSpecification
  :: MediaLiveChannelInputSpecification
mediaLiveChannelInputSpecification  =
  MediaLiveChannelInputSpecification
  { _mediaLiveChannelInputSpecificationCodec = Nothing
  , _mediaLiveChannelInputSpecificationMaximumBitrate = Nothing
  , _mediaLiveChannelInputSpecificationResolution = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-codec
mlcisCodec :: Lens' MediaLiveChannelInputSpecification (Maybe (Val Text))
mlcisCodec = lens _mediaLiveChannelInputSpecificationCodec (\s a -> s { _mediaLiveChannelInputSpecificationCodec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-maximumbitrate
mlcisMaximumBitrate :: Lens' MediaLiveChannelInputSpecification (Maybe (Val Text))
mlcisMaximumBitrate = lens _mediaLiveChannelInputSpecificationMaximumBitrate (\s a -> s { _mediaLiveChannelInputSpecificationMaximumBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-resolution
mlcisResolution :: Lens' MediaLiveChannelInputSpecification (Maybe (Val Text))
mlcisResolution = lens _mediaLiveChannelInputSpecificationResolution (\s a -> s { _mediaLiveChannelInputSpecificationResolution = a })
