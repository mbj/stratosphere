
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html

module Stratosphere.ResourceProperties.PinpointCampaignSetDimension where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignSetDimension. See
-- 'pinpointCampaignSetDimension' for a more convenient constructor.
data PinpointCampaignSetDimension =
  PinpointCampaignSetDimension
  { _pinpointCampaignSetDimensionDimensionType :: Maybe (Val Text)
  , _pinpointCampaignSetDimensionValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignSetDimension where
  toJSON PinpointCampaignSetDimension{..} =
    object $
    catMaybes
    [ fmap (("DimensionType",) . toJSON) _pinpointCampaignSetDimensionDimensionType
    , fmap (("Values",) . toJSON) _pinpointCampaignSetDimensionValues
    ]

-- | Constructor for 'PinpointCampaignSetDimension' containing required fields
-- as arguments.
pinpointCampaignSetDimension
  :: PinpointCampaignSetDimension
pinpointCampaignSetDimension  =
  PinpointCampaignSetDimension
  { _pinpointCampaignSetDimensionDimensionType = Nothing
  , _pinpointCampaignSetDimensionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html#cfn-pinpoint-campaign-setdimension-dimensiontype
pcsdDimensionType :: Lens' PinpointCampaignSetDimension (Maybe (Val Text))
pcsdDimensionType = lens _pinpointCampaignSetDimensionDimensionType (\s a -> s { _pinpointCampaignSetDimensionDimensionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html#cfn-pinpoint-campaign-setdimension-values
pcsdValues :: Lens' PinpointCampaignSetDimension (Maybe (ValList Text))
pcsdValues = lens _pinpointCampaignSetDimensionValues (\s a -> s { _pinpointCampaignSetDimensionValues = a })
