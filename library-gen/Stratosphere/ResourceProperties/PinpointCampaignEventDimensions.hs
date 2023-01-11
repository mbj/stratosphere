
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html

module Stratosphere.ResourceProperties.PinpointCampaignEventDimensions where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointCampaignSetDimension

-- | Full data type definition for PinpointCampaignEventDimensions. See
-- 'pinpointCampaignEventDimensions' for a more convenient constructor.
data PinpointCampaignEventDimensions =
  PinpointCampaignEventDimensions
  { _pinpointCampaignEventDimensionsAttributes :: Maybe Object
  , _pinpointCampaignEventDimensionsEventType :: Maybe PinpointCampaignSetDimension
  , _pinpointCampaignEventDimensionsMetrics :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignEventDimensions where
  toJSON PinpointCampaignEventDimensions{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _pinpointCampaignEventDimensionsAttributes
    , fmap (("EventType",) . toJSON) _pinpointCampaignEventDimensionsEventType
    , fmap (("Metrics",) . toJSON) _pinpointCampaignEventDimensionsMetrics
    ]

-- | Constructor for 'PinpointCampaignEventDimensions' containing required
-- fields as arguments.
pinpointCampaignEventDimensions
  :: PinpointCampaignEventDimensions
pinpointCampaignEventDimensions  =
  PinpointCampaignEventDimensions
  { _pinpointCampaignEventDimensionsAttributes = Nothing
  , _pinpointCampaignEventDimensionsEventType = Nothing
  , _pinpointCampaignEventDimensionsMetrics = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-attributes
pcedAttributes :: Lens' PinpointCampaignEventDimensions (Maybe Object)
pcedAttributes = lens _pinpointCampaignEventDimensionsAttributes (\s a -> s { _pinpointCampaignEventDimensionsAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-eventtype
pcedEventType :: Lens' PinpointCampaignEventDimensions (Maybe PinpointCampaignSetDimension)
pcedEventType = lens _pinpointCampaignEventDimensionsEventType (\s a -> s { _pinpointCampaignEventDimensionsEventType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-metrics
pcedMetrics :: Lens' PinpointCampaignEventDimensions (Maybe Object)
pcedMetrics = lens _pinpointCampaignEventDimensionsMetrics (\s a -> s { _pinpointCampaignEventDimensionsMetrics = a })
