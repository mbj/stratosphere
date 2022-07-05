{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html

module Stratosphere.Resources.KinesisFirehoseDeliveryStream where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration

-- | Full data type definition for KinesisFirehoseDeliveryStream. See
-- 'kinesisFirehoseDeliveryStream' for a more convenient constructor.
data KinesisFirehoseDeliveryStream =
  KinesisFirehoseDeliveryStream
  { _kinesisFirehoseDeliveryStreamDeliveryStreamName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamDeliveryStreamType :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration :: Maybe KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
  , _kinesisFirehoseDeliveryStreamS3DestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration :: Maybe KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties KinesisFirehoseDeliveryStream where
  toResourceProperties KinesisFirehoseDeliveryStream{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::KinesisFirehose::DeliveryStream"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeliveryStreamName",) . toJSON) _kinesisFirehoseDeliveryStreamDeliveryStreamName
        , fmap (("DeliveryStreamType",) . toJSON) _kinesisFirehoseDeliveryStreamDeliveryStreamType
        , fmap (("ElasticsearchDestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
        , fmap (("ExtendedS3DestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
        , fmap (("HttpEndpointDestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
        , fmap (("KinesisStreamSourceConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
        , fmap (("RedshiftDestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
        , fmap (("S3DestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamS3DestinationConfiguration
        , fmap (("SplunkDestinationConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration
        ]
    }

-- | Constructor for 'KinesisFirehoseDeliveryStream' containing required
-- fields as arguments.
kinesisFirehoseDeliveryStream
  :: KinesisFirehoseDeliveryStream
kinesisFirehoseDeliveryStream  =
  KinesisFirehoseDeliveryStream
  { _kinesisFirehoseDeliveryStreamDeliveryStreamName = Nothing
  , _kinesisFirehoseDeliveryStreamDeliveryStreamType = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamS3DestinationConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamname
kfdsDeliveryStreamName :: Lens' KinesisFirehoseDeliveryStream (Maybe (Val Text))
kfdsDeliveryStreamName = lens _kinesisFirehoseDeliveryStreamDeliveryStreamName (\s a -> s { _kinesisFirehoseDeliveryStreamDeliveryStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamtype
kfdsDeliveryStreamType :: Lens' KinesisFirehoseDeliveryStream (Maybe (Val Text))
kfdsDeliveryStreamType = lens _kinesisFirehoseDeliveryStreamDeliveryStreamType (\s a -> s { _kinesisFirehoseDeliveryStreamDeliveryStreamType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration
kfdsElasticsearchDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration)
kfdsElasticsearchDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration
kfdsExtendedS3DestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration)
kfdsExtendedS3DestinationConfiguration = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration
kfdsHttpEndpointDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration)
kfdsHttpEndpointDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration
kfdsKinesisStreamSourceConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration)
kfdsKinesisStreamSourceConfiguration = lens _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration
kfdsRedshiftDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration)
kfdsRedshiftDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration
kfdsS3DestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration)
kfdsS3DestinationConfiguration = lens _kinesisFirehoseDeliveryStreamS3DestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration
kfdsSplunkDestinationConfiguration :: Lens' KinesisFirehoseDeliveryStream (Maybe KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration)
kfdsSplunkDestinationConfiguration = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration = a })
