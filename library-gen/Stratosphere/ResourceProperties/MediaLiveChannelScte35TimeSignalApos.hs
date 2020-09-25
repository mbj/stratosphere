{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35timesignalapos.html

module Stratosphere.ResourceProperties.MediaLiveChannelScte35TimeSignalApos where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelScte35TimeSignalApos. See
-- 'mediaLiveChannelScte35TimeSignalApos' for a more convenient constructor.
data MediaLiveChannelScte35TimeSignalApos =
  MediaLiveChannelScte35TimeSignalApos
  { _mediaLiveChannelScte35TimeSignalAposAdAvailOffset :: Maybe (Val Integer)
  , _mediaLiveChannelScte35TimeSignalAposNoRegionalBlackoutFlag :: Maybe (Val Text)
  , _mediaLiveChannelScte35TimeSignalAposWebDeliveryAllowedFlag :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelScte35TimeSignalApos where
  toJSON MediaLiveChannelScte35TimeSignalApos{..} =
    object $
    catMaybes
    [ fmap (("AdAvailOffset",) . toJSON) _mediaLiveChannelScte35TimeSignalAposAdAvailOffset
    , fmap (("NoRegionalBlackoutFlag",) . toJSON) _mediaLiveChannelScte35TimeSignalAposNoRegionalBlackoutFlag
    , fmap (("WebDeliveryAllowedFlag",) . toJSON) _mediaLiveChannelScte35TimeSignalAposWebDeliveryAllowedFlag
    ]

-- | Constructor for 'MediaLiveChannelScte35TimeSignalApos' containing
-- required fields as arguments.
mediaLiveChannelScte35TimeSignalApos
  :: MediaLiveChannelScte35TimeSignalApos
mediaLiveChannelScte35TimeSignalApos  =
  MediaLiveChannelScte35TimeSignalApos
  { _mediaLiveChannelScte35TimeSignalAposAdAvailOffset = Nothing
  , _mediaLiveChannelScte35TimeSignalAposNoRegionalBlackoutFlag = Nothing
  , _mediaLiveChannelScte35TimeSignalAposWebDeliveryAllowedFlag = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35timesignalapos.html#cfn-medialive-channel-scte35timesignalapos-adavailoffset
mlcstsaAdAvailOffset :: Lens' MediaLiveChannelScte35TimeSignalApos (Maybe (Val Integer))
mlcstsaAdAvailOffset = lens _mediaLiveChannelScte35TimeSignalAposAdAvailOffset (\s a -> s { _mediaLiveChannelScte35TimeSignalAposAdAvailOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35timesignalapos.html#cfn-medialive-channel-scte35timesignalapos-noregionalblackoutflag
mlcstsaNoRegionalBlackoutFlag :: Lens' MediaLiveChannelScte35TimeSignalApos (Maybe (Val Text))
mlcstsaNoRegionalBlackoutFlag = lens _mediaLiveChannelScte35TimeSignalAposNoRegionalBlackoutFlag (\s a -> s { _mediaLiveChannelScte35TimeSignalAposNoRegionalBlackoutFlag = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte35timesignalapos.html#cfn-medialive-channel-scte35timesignalapos-webdeliveryallowedflag
mlcstsaWebDeliveryAllowedFlag :: Lens' MediaLiveChannelScte35TimeSignalApos (Maybe (Val Text))
mlcstsaWebDeliveryAllowedFlag = lens _mediaLiveChannelScte35TimeSignalAposWebDeliveryAllowedFlag (\s a -> s { _mediaLiveChannelScte35TimeSignalAposWebDeliveryAllowedFlag = a })
