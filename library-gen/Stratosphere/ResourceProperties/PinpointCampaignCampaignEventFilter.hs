{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html

module Stratosphere.ResourceProperties.PinpointCampaignCampaignEventFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointCampaignEventDimensions

-- | Full data type definition for PinpointCampaignCampaignEventFilter. See
-- 'pinpointCampaignCampaignEventFilter' for a more convenient constructor.
data PinpointCampaignCampaignEventFilter =
  PinpointCampaignCampaignEventFilter
  { _pinpointCampaignCampaignEventFilterDimensions :: Maybe PinpointCampaignEventDimensions
  , _pinpointCampaignCampaignEventFilterFilterType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignCampaignEventFilter where
  toJSON PinpointCampaignCampaignEventFilter{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _pinpointCampaignCampaignEventFilterDimensions
    , fmap (("FilterType",) . toJSON) _pinpointCampaignCampaignEventFilterFilterType
    ]

-- | Constructor for 'PinpointCampaignCampaignEventFilter' containing required
-- fields as arguments.
pinpointCampaignCampaignEventFilter
  :: PinpointCampaignCampaignEventFilter
pinpointCampaignCampaignEventFilter  =
  PinpointCampaignCampaignEventFilter
  { _pinpointCampaignCampaignEventFilterDimensions = Nothing
  , _pinpointCampaignCampaignEventFilterFilterType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html#cfn-pinpoint-campaign-campaigneventfilter-dimensions
pccefDimensions :: Lens' PinpointCampaignCampaignEventFilter (Maybe PinpointCampaignEventDimensions)
pccefDimensions = lens _pinpointCampaignCampaignEventFilterDimensions (\s a -> s { _pinpointCampaignCampaignEventFilterDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html#cfn-pinpoint-campaign-campaigneventfilter-filtertype
pccefFilterType :: Lens' PinpointCampaignCampaignEventFilter (Maybe (Val Text))
pccefFilterType = lens _pinpointCampaignCampaignEventFilterFilterType (\s a -> s { _pinpointCampaignCampaignEventFilterFilterType = a })
