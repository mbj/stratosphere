{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | CloudWatchLoggingOptions is a property of the Amazon Kinesis Firehose
-- DeliveryStream ElasticsearchDestinationConfiguration, Amazon Kinesis
-- Firehose DeliveryStream RedshiftDestinationConfiguration, and Amazon
-- Kinesis Firehose DeliveryStream S3DestinationConfiguration properties that
-- specifies Amazon CloudWatch Logs (CloudWatch Logs) logging options that
-- Amazon Kinesis Firehose (Firehose) uses for the delivery stream.

module Stratosphere.ResourceProperties.KinesisFirehoseCloudWatchLoggingOptions where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KinesisFirehoseCloudWatchLoggingOptions.
-- See 'kinesisFirehoseCloudWatchLoggingOptions' for a more convenient
-- constructor.
data KinesisFirehoseCloudWatchLoggingOptions =
  KinesisFirehoseCloudWatchLoggingOptions
  { _kinesisFirehoseCloudWatchLoggingOptionsEnabled :: Maybe (Val Bool')
  , _kinesisFirehoseCloudWatchLoggingOptionsLogGroupName :: Maybe (Val Text)
  , _kinesisFirehoseCloudWatchLoggingOptionsLogStreamName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseCloudWatchLoggingOptions where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 40, omitNothingFields = True }

instance FromJSON KinesisFirehoseCloudWatchLoggingOptions where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 40, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseCloudWatchLoggingOptions' containing
-- required fields as arguments.
kinesisFirehoseCloudWatchLoggingOptions
  :: KinesisFirehoseCloudWatchLoggingOptions
kinesisFirehoseCloudWatchLoggingOptions  =
  KinesisFirehoseCloudWatchLoggingOptions
  { _kinesisFirehoseCloudWatchLoggingOptionsEnabled = Nothing
  , _kinesisFirehoseCloudWatchLoggingOptionsLogGroupName = Nothing
  , _kinesisFirehoseCloudWatchLoggingOptionsLogStreamName = Nothing
  }

-- | Indicates whether CloudWatch Logs logging is enabled.
kfcwloEnabled :: Lens' KinesisFirehoseCloudWatchLoggingOptions (Maybe (Val Bool'))
kfcwloEnabled = lens _kinesisFirehoseCloudWatchLoggingOptionsEnabled (\s a -> s { _kinesisFirehoseCloudWatchLoggingOptionsEnabled = a })

-- | The name of the CloudWatch Logs log group that contains the log stream
-- that Firehose will use.
kfcwloLogGroupName :: Lens' KinesisFirehoseCloudWatchLoggingOptions (Maybe (Val Text))
kfcwloLogGroupName = lens _kinesisFirehoseCloudWatchLoggingOptionsLogGroupName (\s a -> s { _kinesisFirehoseCloudWatchLoggingOptionsLogGroupName = a })

-- | The name of the CloudWatch Logs log stream that Firehose uses to send
-- logs about data delivery.
kfcwloLogStreamName :: Lens' KinesisFirehoseCloudWatchLoggingOptions (Maybe (Val Text))
kfcwloLogStreamName = lens _kinesisFirehoseCloudWatchLoggingOptionsLogStreamName (\s a -> s { _kinesisFirehoseCloudWatchLoggingOptionsLogStreamName = a })