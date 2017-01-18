{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamElasticsearchRetryOptions. See
-- | 'kinesisFirehoseDeliveryStreamElasticsearchRetryOptions' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchRetryOptions =
  KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  { _kinesisFirehoseDeliveryStreamElasticsearchRetryOptionsDurationInSeconds :: Val Integer'
  } deriving (Show, Eq, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 55, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamElasticsearchRetryOptions where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 55, omitNothingFields = True }

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
