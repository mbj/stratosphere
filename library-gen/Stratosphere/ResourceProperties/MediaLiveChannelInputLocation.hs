{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html

module Stratosphere.ResourceProperties.MediaLiveChannelInputLocation where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelInputLocation. See
-- 'mediaLiveChannelInputLocation' for a more convenient constructor.
data MediaLiveChannelInputLocation =
  MediaLiveChannelInputLocation
  { _mediaLiveChannelInputLocationPasswordParam :: Maybe (Val Text)
  , _mediaLiveChannelInputLocationUri :: Maybe (Val Text)
  , _mediaLiveChannelInputLocationUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelInputLocation where
  toJSON MediaLiveChannelInputLocation{..} =
    object $
    catMaybes
    [ fmap (("PasswordParam",) . toJSON) _mediaLiveChannelInputLocationPasswordParam
    , fmap (("Uri",) . toJSON) _mediaLiveChannelInputLocationUri
    , fmap (("Username",) . toJSON) _mediaLiveChannelInputLocationUsername
    ]

-- | Constructor for 'MediaLiveChannelInputLocation' containing required
-- fields as arguments.
mediaLiveChannelInputLocation
  :: MediaLiveChannelInputLocation
mediaLiveChannelInputLocation  =
  MediaLiveChannelInputLocation
  { _mediaLiveChannelInputLocationPasswordParam = Nothing
  , _mediaLiveChannelInputLocationUri = Nothing
  , _mediaLiveChannelInputLocationUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html#cfn-medialive-channel-inputlocation-passwordparam
mlcilPasswordParam :: Lens' MediaLiveChannelInputLocation (Maybe (Val Text))
mlcilPasswordParam = lens _mediaLiveChannelInputLocationPasswordParam (\s a -> s { _mediaLiveChannelInputLocationPasswordParam = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html#cfn-medialive-channel-inputlocation-uri
mlcilUri :: Lens' MediaLiveChannelInputLocation (Maybe (Val Text))
mlcilUri = lens _mediaLiveChannelInputLocationUri (\s a -> s { _mediaLiveChannelInputLocationUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html#cfn-medialive-channel-inputlocation-username
mlcilUsername :: Lens' MediaLiveChannelInputLocation (Maybe (Val Text))
mlcilUsername = lens _mediaLiveChannelInputLocationUsername (\s a -> s { _mediaLiveChannelInputLocationUsername = a })
