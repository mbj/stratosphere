
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamInputFormatConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamDeserializer

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamInputFormatConfiguration. See
-- 'kinesisFirehoseDeliveryStreamInputFormatConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamInputFormatConfiguration =
  KinesisFirehoseDeliveryStreamInputFormatConfiguration
  { _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer :: Maybe KinesisFirehoseDeliveryStreamDeserializer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamInputFormatConfiguration where
  toJSON KinesisFirehoseDeliveryStreamInputFormatConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Deserializer",) . toJSON) _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamInputFormatConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamInputFormatConfiguration
  :: KinesisFirehoseDeliveryStreamInputFormatConfiguration
kinesisFirehoseDeliveryStreamInputFormatConfiguration  =
  KinesisFirehoseDeliveryStreamInputFormatConfiguration
  { _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-inputformatconfiguration-deserializer
kfdsifcDeserializer :: Lens' KinesisFirehoseDeliveryStreamInputFormatConfiguration (Maybe KinesisFirehoseDeliveryStreamDeserializer)
kfdsifcDeserializer = lens _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer (\s a -> s { _kinesisFirehoseDeliveryStreamInputFormatConfigurationDeserializer = a })
