{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35spliceinsert.html

module Stratosphere.ResourceProperties.MediaLiveChannelScte35SpliceInsert where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelScte35SpliceInsert. See
-- 'mediaLiveChannelScte35SpliceInsert' for a more convenient constructor.
data MediaLiveChannelScte35SpliceInsert =
  MediaLiveChannelScte35SpliceInsert
  { _mediaLiveChannelScte35SpliceInsertAdAvailOffset :: Maybe (Val Integer)
  , _mediaLiveChannelScte35SpliceInsertNoRegionalBlackoutFlag :: Maybe (Val Text)
  , _mediaLiveChannelScte35SpliceInsertWebDeliveryAllowedFlag :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelScte35SpliceInsert where
  toJSON MediaLiveChannelScte35SpliceInsert{..} =
    object $
    catMaybes
    [ fmap (("AdAvailOffset",) . toJSON) _mediaLiveChannelScte35SpliceInsertAdAvailOffset
    , fmap (("NoRegionalBlackoutFlag",) . toJSON) _mediaLiveChannelScte35SpliceInsertNoRegionalBlackoutFlag
    , fmap (("WebDeliveryAllowedFlag",) . toJSON) _mediaLiveChannelScte35SpliceInsertWebDeliveryAllowedFlag
    ]

-- | Constructor for 'MediaLiveChannelScte35SpliceInsert' containing required
-- fields as arguments.
mediaLiveChannelScte35SpliceInsert
  :: MediaLiveChannelScte35SpliceInsert
mediaLiveChannelScte35SpliceInsert  =
  MediaLiveChannelScte35SpliceInsert
  { _mediaLiveChannelScte35SpliceInsertAdAvailOffset = Nothing
  , _mediaLiveChannelScte35SpliceInsertNoRegionalBlackoutFlag = Nothing
  , _mediaLiveChannelScte35SpliceInsertWebDeliveryAllowedFlag = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35spliceinsert.html#cfn-medialive-channel-scte35spliceinsert-adavailoffset
mlcssiAdAvailOffset :: Lens' MediaLiveChannelScte35SpliceInsert (Maybe (Val Integer))
mlcssiAdAvailOffset = lens _mediaLiveChannelScte35SpliceInsertAdAvailOffset (\s a -> s { _mediaLiveChannelScte35SpliceInsertAdAvailOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35spliceinsert.html#cfn-medialive-channel-scte35spliceinsert-noregionalblackoutflag
mlcssiNoRegionalBlackoutFlag :: Lens' MediaLiveChannelScte35SpliceInsert (Maybe (Val Text))
mlcssiNoRegionalBlackoutFlag = lens _mediaLiveChannelScte35SpliceInsertNoRegionalBlackoutFlag (\s a -> s { _mediaLiveChannelScte35SpliceInsertNoRegionalBlackoutFlag = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35spliceinsert.html#cfn-medialive-channel-scte35spliceinsert-webdeliveryallowedflag
mlcssiWebDeliveryAllowedFlag :: Lens' MediaLiveChannelScte35SpliceInsert (Maybe (Val Text))
mlcssiWebDeliveryAllowedFlag = lens _mediaLiveChannelScte35SpliceInsertWebDeliveryAllowedFlag (\s a -> s { _mediaLiveChannelScte35SpliceInsertWebDeliveryAllowedFlag = a })
