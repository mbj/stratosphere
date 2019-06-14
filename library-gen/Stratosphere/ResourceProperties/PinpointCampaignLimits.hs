{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html

module Stratosphere.ResourceProperties.PinpointCampaignLimits where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignLimits. See
-- 'pinpointCampaignLimits' for a more convenient constructor.
data PinpointCampaignLimits =
  PinpointCampaignLimits
  { _pinpointCampaignLimitsDaily :: Maybe (Val Integer)
  , _pinpointCampaignLimitsMaximumDuration :: Maybe (Val Integer)
  , _pinpointCampaignLimitsMessagesPerSecond :: Maybe (Val Integer)
  , _pinpointCampaignLimitsTotal :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignLimits where
  toJSON PinpointCampaignLimits{..} =
    object $
    catMaybes
    [ fmap (("Daily",) . toJSON) _pinpointCampaignLimitsDaily
    , fmap (("MaximumDuration",) . toJSON) _pinpointCampaignLimitsMaximumDuration
    , fmap (("MessagesPerSecond",) . toJSON) _pinpointCampaignLimitsMessagesPerSecond
    , fmap (("Total",) . toJSON) _pinpointCampaignLimitsTotal
    ]

-- | Constructor for 'PinpointCampaignLimits' containing required fields as
-- arguments.
pinpointCampaignLimits
  :: PinpointCampaignLimits
pinpointCampaignLimits  =
  PinpointCampaignLimits
  { _pinpointCampaignLimitsDaily = Nothing
  , _pinpointCampaignLimitsMaximumDuration = Nothing
  , _pinpointCampaignLimitsMessagesPerSecond = Nothing
  , _pinpointCampaignLimitsTotal = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-daily
pclDaily :: Lens' PinpointCampaignLimits (Maybe (Val Integer))
pclDaily = lens _pinpointCampaignLimitsDaily (\s a -> s { _pinpointCampaignLimitsDaily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-maximumduration
pclMaximumDuration :: Lens' PinpointCampaignLimits (Maybe (Val Integer))
pclMaximumDuration = lens _pinpointCampaignLimitsMaximumDuration (\s a -> s { _pinpointCampaignLimitsMaximumDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-messagespersecond
pclMessagesPerSecond :: Lens' PinpointCampaignLimits (Maybe (Val Integer))
pclMessagesPerSecond = lens _pinpointCampaignLimitsMessagesPerSecond (\s a -> s { _pinpointCampaignLimitsMessagesPerSecond = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-total
pclTotal :: Lens' PinpointCampaignLimits (Maybe (Val Integer))
pclTotal = lens _pinpointCampaignLimitsTotal (\s a -> s { _pinpointCampaignLimitsTotal = a })
