{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlocationref.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelOutputLocationRef. See
-- 'mediaLiveChannelOutputLocationRef' for a more convenient constructor.
data MediaLiveChannelOutputLocationRef =
  MediaLiveChannelOutputLocationRef
  { _mediaLiveChannelOutputLocationRefDestinationRefId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutputLocationRef where
  toJSON MediaLiveChannelOutputLocationRef{..} =
    object $
    catMaybes
    [ fmap (("DestinationRefId",) . toJSON) _mediaLiveChannelOutputLocationRefDestinationRefId
    ]

-- | Constructor for 'MediaLiveChannelOutputLocationRef' containing required
-- fields as arguments.
mediaLiveChannelOutputLocationRef
  :: MediaLiveChannelOutputLocationRef
mediaLiveChannelOutputLocationRef  =
  MediaLiveChannelOutputLocationRef
  { _mediaLiveChannelOutputLocationRefDestinationRefId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlocationref.html#cfn-medialive-channel-outputlocationref-destinationrefid
mlcolrDestinationRefId :: Lens' MediaLiveChannelOutputLocationRef (Maybe (Val Text))
mlcolrDestinationRefId = lens _mediaLiveChannelOutputLocationRefDestinationRefId (\s a -> s { _mediaLiveChannelOutputLocationRefDestinationRefId = a })
