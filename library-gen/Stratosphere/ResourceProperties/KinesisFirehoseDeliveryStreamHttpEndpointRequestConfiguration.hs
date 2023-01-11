
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointrequestconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration. See
-- 'kinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration' for a
-- more convenient constructor.
data KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration =
  KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration
  { _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationCommonAttributes :: Maybe [KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute]
  , _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationContentEncoding :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration where
  toJSON KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CommonAttributes",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationCommonAttributes
    , fmap (("ContentEncoding",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationContentEncoding
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration
  :: KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration
kinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration  =
  KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration
  { _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationCommonAttributes = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationContentEncoding = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointrequestconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointrequestconfiguration-commonattributes
kfdshercCommonAttributes :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration (Maybe [KinesisFirehoseDeliveryStreamHttpEndpointCommonAttribute])
kfdshercCommonAttributes = lens _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationCommonAttributes (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationCommonAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointrequestconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointrequestconfiguration-contentencoding
kfdshercContentEncoding :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration (Maybe (Val Text))
kfdshercContentEncoding = lens _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationContentEncoding (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointRequestConfigurationContentEncoding = a })
