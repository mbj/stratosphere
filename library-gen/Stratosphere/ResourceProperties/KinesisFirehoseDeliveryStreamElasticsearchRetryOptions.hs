{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamElasticsearchRetryOptions. See
-- 'kinesisFirehoseDeliveryStreamElasticsearchRetryOptions' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchRetryOptions =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds :: Val Integer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions{..} =
    object $
    catMaybes
    [ (Just . ("DurationInSeconds",) . toJSON . fmap Integer') _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamElasticsearchRetryOptions'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  :: Val Integer -- ^ 'kfdseroDurationInSeconds'
  -> KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
kinesisFirehoseDeliveryStreamElasticsearchRetryOptions durationInSecondsarg =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds = durationInSecondsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds
kfdseroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamElasticsearchRetryOptions (Val Integer)
kfdseroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds = a })
