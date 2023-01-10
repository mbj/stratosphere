
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html

module Stratosphere.ResourceProperties.PinpointCampaignMetricDimension where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignMetricDimension. See
-- 'pinpointCampaignMetricDimension' for a more convenient constructor.
data PinpointCampaignMetricDimension =
  PinpointCampaignMetricDimension
  { _pinpointCampaignMetricDimensionComparisonOperator :: Maybe (Val Text)
  , _pinpointCampaignMetricDimensionValue :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignMetricDimension where
  toJSON PinpointCampaignMetricDimension{..} =
    object $
    catMaybes
    [ fmap (("ComparisonOperator",) . toJSON) _pinpointCampaignMetricDimensionComparisonOperator
    , fmap (("Value",) . toJSON) _pinpointCampaignMetricDimensionValue
    ]

-- | Constructor for 'PinpointCampaignMetricDimension' containing required
-- fields as arguments.
pinpointCampaignMetricDimension
  :: PinpointCampaignMetricDimension
pinpointCampaignMetricDimension  =
  PinpointCampaignMetricDimension
  { _pinpointCampaignMetricDimensionComparisonOperator = Nothing
  , _pinpointCampaignMetricDimensionValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-comparisonoperator
pcmdComparisonOperator :: Lens' PinpointCampaignMetricDimension (Maybe (Val Text))
pcmdComparisonOperator = lens _pinpointCampaignMetricDimensionComparisonOperator (\s a -> s { _pinpointCampaignMetricDimensionComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-value
pcmdValue :: Lens' PinpointCampaignMetricDimension (Maybe (Val Double))
pcmdValue = lens _pinpointCampaignMetricDimensionValue (\s a -> s { _pinpointCampaignMetricDimensionValue = a })
