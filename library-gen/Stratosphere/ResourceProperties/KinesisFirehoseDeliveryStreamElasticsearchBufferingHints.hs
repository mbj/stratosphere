{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamElasticsearchBufferingHints. See
-- | 'kinesisFirehoseDeliveryStreamElasticsearchBufferingHints' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchBufferingHints =
  KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  { _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsIntervalInSeconds :: Val Integer'
  , _kinesisFirehoseDeliveryStreamElasticsearchBufferingHintsSizeInMBs :: Val Integer'
  } deriving (Show, Eq, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamElasticsearchBufferingHints where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

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
