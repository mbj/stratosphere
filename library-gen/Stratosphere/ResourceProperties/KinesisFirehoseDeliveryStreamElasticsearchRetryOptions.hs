{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamElasticsearchRetryOptions. See
-- | 'kinesisFirehoseDeliveryStreamElasticsearchRetryOptions' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchRetryOptions =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions{..} =
    object
    [ "DurationInSeconds" .= _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds
    ]

instance FromJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamElasticsearchRetryOptions <$>
      obj .: "DurationInSeconds"
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamElasticsearchRetryOptions'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  :: Val Integer' -- ^ 'kfdseroDurationInSeconds'
  -> KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
kinesisFirehoseDeliveryStreamElasticsearchRetryOptions durationInSecondsarg =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds = durationInSecondsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions-durationinseconds
kfdseroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamElasticsearchRetryOptions (Val Integer')
kfdseroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds = a })
