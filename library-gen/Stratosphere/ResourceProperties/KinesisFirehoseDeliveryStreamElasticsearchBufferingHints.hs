{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
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
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds :: Val Integer
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs :: Val Integer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints{..} =
    object $
    catMaybes
    [ (Just . ("IntervalInSeconds",) . toJSON . fmap Integer') _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds
    , (Just . ("SizeInMBs",) . toJSON . fmap Integer') _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs
    ]

instance FromJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamElasticsearchBufferingHints <$>
      fmap (fmap unInteger') (obj .: "IntervalInSeconds") <*>
      fmap (fmap unInteger') (obj .: "SizeInMBs")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamElasticsearchBufferingHints' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  :: Val Integer -- ^ 'kfdsebhIntervalInSeconds'
  -> Val Integer -- ^ 'kfdsebhSizeInMBs'
  -> KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
kinesisFirehoseDeliveryStreamElasticsearchBufferingHints intervalInSecondsarg sizeInMBsarg =
  KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds = intervalInSecondsarg
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs = sizeInMBsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-intervalinseconds
kfdsebhIntervalInSeconds :: Lens' KinesisFirehoseDeliveryStreamElasticsearchBufferingHints (Val Integer)
kfdsebhIntervalInSeconds = lens _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-sizeinmbs
kfdsebhSizeInMBs :: Lens' KinesisFirehoseDeliveryStreamElasticsearchBufferingHints (Val Integer)
kfdsebhSizeInMBs = lens _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs = a })
