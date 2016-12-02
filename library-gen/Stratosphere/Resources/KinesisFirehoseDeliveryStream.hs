{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html

module Stratosphere.Resources.KinesisFirehoseDeliveryStream where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for KinesisFirehoseDeliveryStream. See
-- | 'kinesisFirehoseDeliveryStream' for a more convenient constructor.
data KinesisFirehoseDeliveryStream =
  KinesisFirehoseDeliveryStream
  { _kinesisFirehoseDeliveryStreamDeliveryStreamName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamS3DestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseDeliveryStream where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStream where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseDeliveryStream' containing required
-- | fields as arguments.
kinesisFirehoseDeliveryStream
  :: KinesisFirehoseDeliveryStream
kinesisFirehoseDeliveryStream  =
  KinesisFirehoseDeliveryStream
  { _kinesisFirehoseDeliveryStreamDeliveryStreamName = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamS3DestinationConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverstream-deliverystreamname
kfdsDeliveryStreamName :: Lens' KinesisFirehoseDeliveryStream (Maybe (Val Text))
kfdsDeliveryStreamName = lens _kinesisFirehoseDeliveryStreamDeliveryStreamName (\s a -> s { _kinesisFirehoseDeliveryStreamDeliveryStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverstream-elasticsearchdestinationconfiguration
kfdsElasticsearchDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration)
kfdsElasticsearchDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration
kfdsRedshiftDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration)
kfdsRedshiftDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration
kfdsS3DestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration)
kfdsS3DestinationConfiguration = lens _kinesisFirehoseDeliveryStreamS3DestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfiguration = a })
