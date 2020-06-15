{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamElasticsearchBufferingHints. See
-- 'kinesisFirehoseDeliveryStreamElasticsearchBufferingHints' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchBufferingHints =
  KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints{..} =
    object $
    catMaybes
    [ fmap (("IntervalInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds
    , fmap (("SizeInMBs",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamElasticsearchBufferingHints' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  :: KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
kinesisFirehoseDeliveryStreamElasticsearchBufferingHints  =
  KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-intervalinseconds
kfdsebhIntervalInSeconds :: Lens' KinesisFirehoseDeliveryStreamElasticsearchBufferingHints (Maybe (Val Integer))
kfdsebhIntervalInSeconds = lens _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-sizeinmbs
kfdsebhSizeInMBs :: Lens' KinesisFirehoseDeliveryStreamElasticsearchBufferingHints (Maybe (Val Integer))
kfdsebhSizeInMBs = lens _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs = a })
