{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html

module Stratosphere.ResourceProperties.PinpointCampaignQuietTime where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignQuietTime. See
-- 'pinpointCampaignQuietTime' for a more convenient constructor.
data PinpointCampaignQuietTime =
  PinpointCampaignQuietTime
  { _pinpointCampaignQuietTimeEnd :: Val Text
  , _pinpointCampaignQuietTimeStart :: Val Text
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignQuietTime where
  toJSON PinpointCampaignQuietTime{..} =
    object $
    catMaybes
    [ (Just . ("End",) . toJSON) _pinpointCampaignQuietTimeEnd
    , (Just . ("Start",) . toJSON) _pinpointCampaignQuietTimeStart
    ]

-- | Constructor for 'PinpointCampaignQuietTime' containing required fields as
-- arguments.
pinpointCampaignQuietTime
  :: Val Text -- ^ 'pcqtEnd'
  -> Val Text -- ^ 'pcqtStart'
  -> PinpointCampaignQuietTime
pinpointCampaignQuietTime endarg startarg =
  PinpointCampaignQuietTime
  { _pinpointCampaignQuietTimeEnd = endarg
  , _pinpointCampaignQuietTimeStart = startarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html#cfn-pinpoint-campaign-schedule-quiettime-end
pcqtEnd :: Lens' PinpointCampaignQuietTime (Val Text)
pcqtEnd = lens _pinpointCampaignQuietTimeEnd (\s a -> s { _pinpointCampaignQuietTimeEnd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html#cfn-pinpoint-campaign-schedule-quiettime-start
pcqtStart :: Lens' PinpointCampaignQuietTime (Val Text)
pcqtStart = lens _pinpointCampaignQuietTimeStart (\s a -> s { _pinpointCampaignQuietTimeStart = a })
