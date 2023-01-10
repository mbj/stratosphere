
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamOpenXJsonSerDe where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamOpenXJsonSerDe. See
-- 'kinesisFirehoseDeliveryStreamOpenXJsonSerDe' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamOpenXJsonSerDe =
  KinesisFirehoseDeliveryStreamOpenXJsonSerDe
  { _kinesisFirehoseDeliveryStreamOpenXJsonSerDeCaseInsensitive :: Maybe (Val Bool)
  , _kinesisFirehoseDeliveryStreamOpenXJsonSerDeColumnToJsonKeyMappings :: Maybe Object
  , _kinesisFirehoseDeliveryStreamOpenXJsonSerDeConvertDotsInJsonKeysToUnderscores :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamOpenXJsonSerDe where
  toJSON KinesisFirehoseDeliveryStreamOpenXJsonSerDe{..} =
    object $
    catMaybes
    [ fmap (("CaseInsensitive",) . toJSON) _kinesisFirehoseDeliveryStreamOpenXJsonSerDeCaseInsensitive
    , fmap (("ColumnToJsonKeyMappings",) . toJSON) _kinesisFirehoseDeliveryStreamOpenXJsonSerDeColumnToJsonKeyMappings
    , fmap (("ConvertDotsInJsonKeysToUnderscores",) . toJSON) _kinesisFirehoseDeliveryStreamOpenXJsonSerDeConvertDotsInJsonKeysToUnderscores
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamOpenXJsonSerDe' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamOpenXJsonSerDe
  :: KinesisFirehoseDeliveryStreamOpenXJsonSerDe
kinesisFirehoseDeliveryStreamOpenXJsonSerDe  =
  KinesisFirehoseDeliveryStreamOpenXJsonSerDe
  { _kinesisFirehoseDeliveryStreamOpenXJsonSerDeCaseInsensitive = Nothing
  , _kinesisFirehoseDeliveryStreamOpenXJsonSerDeColumnToJsonKeyMappings = Nothing
  , _kinesisFirehoseDeliveryStreamOpenXJsonSerDeConvertDotsInJsonKeysToUnderscores = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-caseinsensitive
kfdsoxjsdCaseInsensitive :: Lens' KinesisFirehoseDeliveryStreamOpenXJsonSerDe (Maybe (Val Bool))
kfdsoxjsdCaseInsensitive = lens _kinesisFirehoseDeliveryStreamOpenXJsonSerDeCaseInsensitive (\s a -> s { _kinesisFirehoseDeliveryStreamOpenXJsonSerDeCaseInsensitive = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-columntojsonkeymappings
kfdsoxjsdColumnToJsonKeyMappings :: Lens' KinesisFirehoseDeliveryStreamOpenXJsonSerDe (Maybe Object)
kfdsoxjsdColumnToJsonKeyMappings = lens _kinesisFirehoseDeliveryStreamOpenXJsonSerDeColumnToJsonKeyMappings (\s a -> s { _kinesisFirehoseDeliveryStreamOpenXJsonSerDeColumnToJsonKeyMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-convertdotsinjsonkeystounderscores
kfdsoxjsdConvertDotsInJsonKeysToUnderscores :: Lens' KinesisFirehoseDeliveryStreamOpenXJsonSerDe (Maybe (Val Bool))
kfdsoxjsdConvertDotsInJsonKeysToUnderscores = lens _kinesisFirehoseDeliveryStreamOpenXJsonSerDeConvertDotsInJsonKeysToUnderscores (\s a -> s { _kinesisFirehoseDeliveryStreamOpenXJsonSerDeConvertDotsInJsonKeysToUnderscores = a })
