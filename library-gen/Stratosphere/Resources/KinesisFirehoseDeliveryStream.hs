{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html

module Stratosphere.Resources.KinesisFirehoseDeliveryStream where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for KinesisFirehoseDeliveryStream. See
-- 'kinesisFirehoseDeliveryStream' for a more convenient constructor.
data KinesisFirehoseDeliveryStream =
  KinesisFirehoseDeliveryStream
  { _kinesisFirehoseDeliveryStreamDeliveryStreamName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamS3DestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStream where
  toJSON KinesisFirehoseDeliveryStream{..} =
    object $
    catMaybes
    [ fmap (("DeliveryStreamName",) . toJSON) _kinesisFirehoseDeliveryStreamDeliveryStreamName
    , fmap (("ElasticsearchDestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
    , fmap (("ExtendedS3DestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
    , fmap (("RedshiftDestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
    , fmap (("S3DestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamS3DestinationConfiguration
    ]

instance FromJSON KinesisFirehoseDeliveryStream where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStream <$>
      (obj .:? "DeliveryStreamName") <*>
      (obj .:? "ElasticsearchDestinationConfiguration") <*>
      (obj .:? "ExtendedS3DestinationConfiguration") <*>
      (obj .:? "RedshiftDestinationConfiguration") <*>
      (obj .:? "S3DestinationConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStream' containing required
-- fields as arguments.
kinesisFirehoseDeliveryStream
  :: KinesisFirehoseDeliveryStream
kinesisFirehoseDeliveryStream  =
  KinesisFirehoseDeliveryStream
  { _kinesisFirehoseDeliveryStreamDeliveryStreamName = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamS3DestinationConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverstream-deliverystreamname
kfdsDeliveryStreamName :: Lens' KinesisFirehoseDeliveryStream (Maybe (Val Text))
kfdsDeliveryStreamName = lens _kinesisFirehoseDeliveryStreamDeliveryStreamName (\s a -> s { _kinesisFirehoseDeliveryStreamDeliveryStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverstream-elasticsearchdestinationconfiguration
kfdsElasticsearchDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration)
kfdsElasticsearchDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration
kfdsExtendedS3DestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration)
kfdsExtendedS3DestinationConfiguration = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration
kfdsRedshiftDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration)
kfdsRedshiftDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration
kfdsS3DestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration)
kfdsS3DestinationConfiguration = lens _kinesisFirehoseDeliveryStreamS3DestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfiguration = a })
