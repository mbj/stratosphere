
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamDeserializer where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHiveJsonSerDe
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamOpenXJsonSerDe

-- | Full data type definition for KinesisFirehoseDeliveryStreamDeserializer.
-- See 'kinesisFirehoseDeliveryStreamDeserializer' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamDeserializer =
  KinesisFirehoseDeliveryStreamDeserializer
  { _kinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe :: Maybe KinesisFirehoseDeliveryStreamHiveJsonSerDe
  , _kinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe :: Maybe KinesisFirehoseDeliveryStreamOpenXJsonSerDe
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamDeserializer where
  toJSON KinesisFirehoseDeliveryStreamDeserializer{..} =
    object $
    catMaybes
    [ fmap (("HiveJsonSerDe",) . toJSON) _kinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe
    , fmap (("OpenXJsonSerDe",) . toJSON) _kinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamDeserializer' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamDeserializer
  :: KinesisFirehoseDeliveryStreamDeserializer
kinesisFirehoseDeliveryStreamDeserializer  =
  KinesisFirehoseDeliveryStreamDeserializer
  { _kinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe = Nothing
  , _kinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-hivejsonserde
kfdsdHiveJsonSerDe :: Lens' KinesisFirehoseDeliveryStreamDeserializer (Maybe KinesisFirehoseDeliveryStreamHiveJsonSerDe)
kfdsdHiveJsonSerDe = lens _kinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe (\s a -> s { _kinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-openxjsonserde
kfdsdOpenXJsonSerDe :: Lens' KinesisFirehoseDeliveryStreamDeserializer (Maybe KinesisFirehoseDeliveryStreamOpenXJsonSerDe)
kfdsdOpenXJsonSerDe = lens _kinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe (\s a -> s { _kinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe = a })
