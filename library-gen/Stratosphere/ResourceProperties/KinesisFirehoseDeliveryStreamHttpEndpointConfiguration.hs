{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamHttpEndpointConfiguration. See
-- 'kinesisFirehoseDeliveryStreamHttpEndpointConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamHttpEndpointConfiguration =
  KinesisFirehoseDeliveryStreamHttpEndpointConfiguration
  { _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationAccessKey :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamHttpEndpointConfiguration where
  toJSON KinesisFirehoseDeliveryStreamHttpEndpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AccessKey",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationAccessKey
    , fmap (("Name",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationName
    , (Just . ("Url",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationUrl
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamHttpEndpointConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamHttpEndpointConfiguration
  :: Val Text -- ^ 'kfdshecUrl'
  -> KinesisFirehoseDeliveryStreamHttpEndpointConfiguration
kinesisFirehoseDeliveryStreamHttpEndpointConfiguration urlarg =
  KinesisFirehoseDeliveryStreamHttpEndpointConfiguration
  { _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationAccessKey = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationName = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationUrl = urlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointconfiguration-accesskey
kfdshecAccessKey :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointConfiguration (Maybe (Val Text))
kfdshecAccessKey = lens _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationAccessKey (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationAccessKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointconfiguration-name
kfdshecName :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointConfiguration (Maybe (Val Text))
kfdshecName = lens _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationName (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointconfiguration-url
kfdshecUrl :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointConfiguration (Val Text)
kfdshecUrl = lens _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationUrl (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointConfigurationUrl = a })
