
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html

module Stratosphere.ResourceProperties.PinpointCampaignAttributeDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignAttributeDimension. See
-- 'pinpointCampaignAttributeDimension' for a more convenient constructor.
data PinpointCampaignAttributeDimension =
  PinpointCampaignAttributeDimension
  { _pinpointCampaignAttributeDimensionAttributeType :: Maybe (Val Text)
  , _pinpointCampaignAttributeDimensionValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignAttributeDimension where
  toJSON PinpointCampaignAttributeDimension{..} =
    object $
    catMaybes
    [ fmap (("AttributeType",) . toJSON) _pinpointCampaignAttributeDimensionAttributeType
    , fmap (("Values",) . toJSON) _pinpointCampaignAttributeDimensionValues
    ]

-- | Constructor for 'PinpointCampaignAttributeDimension' containing required
-- fields as arguments.
pinpointCampaignAttributeDimension
  :: PinpointCampaignAttributeDimension
pinpointCampaignAttributeDimension  =
  PinpointCampaignAttributeDimension
  { _pinpointCampaignAttributeDimensionAttributeType = Nothing
  , _pinpointCampaignAttributeDimensionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html#cfn-pinpoint-campaign-attributedimension-attributetype
pcadAttributeType :: Lens' PinpointCampaignAttributeDimension (Maybe (Val Text))
pcadAttributeType = lens _pinpointCampaignAttributeDimensionAttributeType (\s a -> s { _pinpointCampaignAttributeDimensionAttributeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html#cfn-pinpoint-campaign-attributedimension-values
pcadValues :: Lens' PinpointCampaignAttributeDimension (Maybe (ValList Text))
pcadValues = lens _pinpointCampaignAttributeDimensionValues (\s a -> s { _pinpointCampaignAttributeDimensionValues = a })
