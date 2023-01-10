
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointcommonattribute.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute. See
-- 'kinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute =
  KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute
  { _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeName :: Val Text
  , _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute where
  toJSON KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute{..} =
    object $
    catMaybes
    [ (Just . ("AttributeName",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeName
    , (Just . ("AttributeValue",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeValue
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute
  :: Val Text -- ^ 'kfdshecaAttributeName'
  -> Val Text -- ^ 'kfdshecaAttributeValue'
  -> KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute
kinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute attributeNamearg attributeValuearg =
  KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute
  { _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeName = attributeNamearg
  , _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeValue = attributeValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointcommonattribute.html#cfn-kinesisfirehose-deliverystream-httpendpointcommonattribute-attributename
kfdshecaAttributeName :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute (Val Text)
kfdshecaAttributeName = lens _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeName (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointcommonattribute.html#cfn-kinesisfirehose-deliverystream-httpendpointcommonattribute-attributevalue
kfdshecaAttributeValue :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute (Val Text)
kfdshecaAttributeValue = lens _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeValue (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointCommonAttributeAttributeValue = a })
