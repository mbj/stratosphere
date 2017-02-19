{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamElasticsearchBufferingHints. See
-- | 'kinesisFirehoseDeliveryStreamElasticsearchBufferingHints' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchBufferingHints =
  KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds :: Val Integer'
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints{..} =
    object $
    catMaybes
    [ Just ("IntervalInSeconds" .= _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds)
    , Just ("SizeInMBs" .= _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs)
    ]

instance FromJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamElasticsearchBufferingHints <$>
      obj .: "IntervalInSeconds" <*>
      obj .: "SizeInMBs"
  parseJSON _ = mempty

-- | Constructor for
-- | 'KinesisFirehoseDeliveryStreamElasticsearchBufferingHints' containing
-- | required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  :: Val Integer' -- ^ 'kfdsebhIntervalInSeconds'
  -> Val Integer' -- ^ 'kfdsebhSizeInMBs'
  -> KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
kinesisFirehoseDeliveryStreamElasticsearchBufferingHints intervalInSecondsarg sizeInMBsarg =
  KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds = intervalInSecondsarg
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs = sizeInMBsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-bufferinghints-intervalinseconds
kfdsebhIntervalInSeconds :: Lens' KinesisFirehoseDeliveryStreamElasticsearchBufferingHints (Val Integer')
kfdsebhIntervalInSeconds = lens _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-bufferinghints-sizeinmbs
kfdsebhSizeInMBs :: Lens' KinesisFirehoseDeliveryStreamElasticsearchBufferingHints (Val Integer')
kfdsebhSizeInMBs = lens _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs = a })
