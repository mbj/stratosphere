{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | RetryOptions is a property of the Amazon Kinesis Firehose DeliveryStream
-- ElasticsearchDestinationConfiguration property that configures the retry
-- behavior when Amazon Kinesis Firehose (Firehose) can't deliver data to
-- Amazon Elasticsearch Service (Amazon ES).

module Stratosphere.ResourceProperties.KinesisFirehoseElasticsearchRetryOptions where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KinesisFirehoseElasticsearchRetryOptions.
-- See 'kinesisFirehoseElasticsearchRetryOptions' for a more convenient
-- constructor.
data KinesisFirehoseElasticsearchRetryOptions =
  KinesisFirehoseElasticsearchRetryOptions
  { _kinesisFirehoseElasticsearchRetryOptionsDurationInSeconds :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseElasticsearchRetryOptions where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON KinesisFirehoseElasticsearchRetryOptions where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseElasticsearchRetryOptions' containing
-- required fields as arguments.
kinesisFirehoseElasticsearchRetryOptions
  :: Val Integer' -- ^ 'kferoDurationInSeconds'
  -> KinesisFirehoseElasticsearchRetryOptions
kinesisFirehoseElasticsearchRetryOptions durationInSecondsarg =
  KinesisFirehoseElasticsearchRetryOptions
  { _kinesisFirehoseElasticsearchRetryOptionsDurationInSeconds = durationInSecondsarg
  }

-- | After an initial failure to deliver to Amazon ES, the total amount of
-- time during which Firehose re-attempts delivery (including the first
-- attempt). If Firehose can't deliver the data within the specified time, it
-- writes the data to the backup S3 bucket. For valid values, see the
-- DurationInSeconds content for the ElasticsearchRetryOptions data type in
-- the Amazon Kinesis Firehose API Reference.
kferoDurationInSeconds :: Lens' KinesisFirehoseElasticsearchRetryOptions (Val Integer')
kferoDurationInSeconds = lens _kinesisFirehoseElasticsearchRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseElasticsearchRetryOptionsDurationInSeconds = a })