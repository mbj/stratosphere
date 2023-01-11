
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamElasticsearchRetryOptions. See
-- 'kinesisFirehoseDeliveryStreamElasticsearchRetryOptions' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchRetryOptions =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions{..} =
    object $
    catMaybes
    [ fmap (("DurationInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamElasticsearchRetryOptions'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  :: KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
kinesisFirehoseDeliveryStreamElasticsearchRetryOptions  =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds
kfdseroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamElasticsearchRetryOptions (Maybe (Val Integer))
kfdseroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds = a })
