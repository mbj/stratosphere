{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamInputFormatConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamDeserializer

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamInputFormatConfiguration. See
-- 'kinesisFirehoseDeliveryStreamInputFormatConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamInputFormatConfiguration =
  KinesisFirehoseDeliveryStreamInputFormatConfiguration
  { _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer :: KinesisFirehoseDeliveryStreamDeserializer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamInputFormatConfiguration where
  toJSON KinesisFirehoseDeliveryStreamInputFormatConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Deserializer",) . toJSON) _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamInputFormatConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamInputFormatConfiguration
  :: KinesisFirehoseDeliveryStreamDeserializer -- ^ 'kfdsifcDeserializer'
  -> KinesisFirehoseDeliveryStreamInputFormatConfiguration
kinesisFirehoseDeliveryStreamInputFormatConfiguration deserializerarg =
  KinesisFirehoseDeliveryStreamInputFormatConfiguration
  { _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer = deserializerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-inputformatconfiguration-deserializer
kfdsifcDeserializer :: Lens' KinesisFirehoseDeliveryStreamInputFormatConfiguration KinesisFirehoseDeliveryStreamDeserializer
kfdsifcDeserializer = lens _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer (\s a -> s { _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer = a })
