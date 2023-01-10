
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHiveJsonSerDe where

import Stratosphere.ResourceImports


-- | Full data type definition for KinesisFirehoseDeliveryStreamHiveJsonSerDe.
-- See 'kinesisFirehoseDeliveryStreamHiveJsonSerDe' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamHiveJsonSerDe =
  KinesisFirehoseDeliveryStreamHiveJsonSerDe
  { _kinesisFirehoseDeliveryStreamHiveJsonSerDeTimestampFormats :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamHiveJsonSerDe where
  toJSON KinesisFirehoseDeliveryStreamHiveJsonSerDe{..} =
    object $
    catMaybes
    [ fmap (("TimestampFormats",) . toJSON) _kinesisFirehoseDeliveryStreamHiveJsonSerDeTimestampFormats
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamHiveJsonSerDe' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamHiveJsonSerDe
  :: KinesisFirehoseDeliveryStreamHiveJsonSerDe
kinesisFirehoseDeliveryStreamHiveJsonSerDe  =
  KinesisFirehoseDeliveryStreamHiveJsonSerDe
  { _kinesisFirehoseDeliveryStreamHiveJsonSerDeTimestampFormats = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html#cfn-kinesisfirehose-deliverystream-hivejsonserde-timestampformats
kfdshjsdTimestampFormats :: Lens' KinesisFirehoseDeliveryStreamHiveJsonSerDe (Maybe (ValList Text))
kfdshjsdTimestampFormats = lens _kinesisFirehoseDeliveryStreamHiveJsonSerDeTimestampFormats (\s a -> s { _kinesisFirehoseDeliveryStreamHiveJsonSerDeTimestampFormats = a })
