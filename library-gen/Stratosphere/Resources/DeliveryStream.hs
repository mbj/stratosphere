{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::KinesisFirehose::DeliveryStream resource creates an Amazon
-- Kinesis Firehose (Firehose) delivery stream that delivers real-time
-- streaming data to an Amazon Simple Storage Service (Amazon S3), Amazon
-- Redshift, or Amazon Elasticsearch Service (Amazon ES) destination. For more
-- information, see Creating an Amazon Kinesis Firehose Delivery Stream in the
-- Amazon Kinesis Firehose Developer Guide.

module Stratosphere.Resources.DeliveryStream where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseElasticsearchDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseRedshiftDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseS3DestinationConfiguration

-- | Full data type definition for DeliveryStream. See 'deliveryStream' for a
-- more convenient constructor.
data DeliveryStream =
  DeliveryStream
  { _deliveryStreamDeliveryStreamName :: Maybe (Val Text)
  , _deliveryStreamElasticsearchDestinationConfiguration :: Maybe KinesisFirehoseElasticsearchDestinationConfiguration
  , _deliveryStreamRedshiftDestinationConfiguration :: Maybe KinesisFirehoseRedshiftDestinationConfiguration
  , _deliveryStreamS3DestinationConfiguration :: Maybe KinesisFirehoseS3DestinationConfiguration
  } deriving (Show, Generic)

instance ToJSON DeliveryStream where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON DeliveryStream where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'DeliveryStream' containing required fields as arguments.
deliveryStream
  :: DeliveryStream
deliveryStream  =
  DeliveryStream
  { _deliveryStreamDeliveryStreamName = Nothing
  , _deliveryStreamElasticsearchDestinationConfiguration = Nothing
  , _deliveryStreamRedshiftDestinationConfiguration = Nothing
  , _deliveryStreamS3DestinationConfiguration = Nothing
  }

-- | A name for the delivery stream.
dsDeliveryStreamName :: Lens' DeliveryStream (Maybe (Val Text))
dsDeliveryStreamName = lens _deliveryStreamDeliveryStreamName (\s a -> s { _deliveryStreamDeliveryStreamName = a })

-- | An Amazon ES destination for the delivery stream.
dsElasticsearchDestinationConfiguration :: Lens' DeliveryStream (Maybe KinesisFirehoseElasticsearchDestinationConfiguration)
dsElasticsearchDestinationConfiguration = lens _deliveryStreamElasticsearchDestinationConfiguration (\s a -> s { _deliveryStreamElasticsearchDestinationConfiguration = a })

-- | An Amazon Redshift destination for the delivery stream.
dsRedshiftDestinationConfiguration :: Lens' DeliveryStream (Maybe KinesisFirehoseRedshiftDestinationConfiguration)
dsRedshiftDestinationConfiguration = lens _deliveryStreamRedshiftDestinationConfiguration (\s a -> s { _deliveryStreamRedshiftDestinationConfiguration = a })

-- | An Amazon S3 destination for the delivery stream.
dsS3DestinationConfiguration :: Lens' DeliveryStream (Maybe KinesisFirehoseS3DestinationConfiguration)
dsS3DestinationConfiguration = lens _deliveryStreamS3DestinationConfiguration (\s a -> s { _deliveryStreamS3DestinationConfiguration = a })