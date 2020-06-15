{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-outputformatconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamOutputFormatConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSerializer

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamOutputFormatConfiguration. See
-- 'kinesisFirehoseDeliveryStreamOutputFormatConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamOutputFormatConfiguration =
  KinesisFirehoseDeliveryStreamOutputFormatConfiguration
  { _kinesisFirehoseDeliveryStreamOutputFormatConfigurationSerializer :: Maybe KinesisFirehoseDeliveryStreamSerializer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamOutputFormatConfiguration where
  toJSON KinesisFirehoseDeliveryStreamOutputFormatConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Serializer",) . toJSON) _kinesisFirehoseDeliveryStreamOutputFormatConfigurationSerializer
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamOutputFormatConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamOutputFormatConfiguration
  :: KinesisFirehoseDeliveryStreamOutputFormatConfiguration
kinesisFirehoseDeliveryStreamOutputFormatConfiguration  =
  KinesisFirehoseDeliveryStreamOutputFormatConfiguration
  { _kinesisFirehoseDeliveryStreamOutputFormatConfigurationSerializer = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-outputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-outputformatconfiguration-serializer
kfdsofcSerializer :: Lens' KinesisFirehoseDeliveryStreamOutputFormatConfiguration (Maybe KinesisFirehoseDeliveryStreamSerializer)
kfdsofcSerializer = lens _kinesisFirehoseDeliveryStreamOutputFormatConfigurationSerializer (\s a -> s { _kinesisFirehoseDeliveryStreamOutputFormatConfigurationSerializer = a })
