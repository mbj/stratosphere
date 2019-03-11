{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions. See
-- 'kinesisFirehoseDeliveryStreamCloudWatchLoggingOptions' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions =
  KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled :: Maybe (Val Bool)
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions where
  toJSON KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON . fmap Bool') _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled
    , fmap (("LogGroupName",) . toJSON) _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName
    , fmap (("LogStreamName",) . toJSON) _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  :: KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
kinesisFirehoseDeliveryStreamCloudWatchLoggingOptions  =
  KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled = Nothing
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName = Nothing
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-enabled
kfdscwloEnabled :: Lens' KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions (Maybe (Val Bool))
kfdscwloEnabled = lens _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled (\s a -> s { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-loggroupname
kfdscwloLogGroupName :: Lens' KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions (Maybe (Val Text))
kfdscwloLogGroupName = lens _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName (\s a -> s { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-logstreamname
kfdscwloLogStreamName :: Lens' KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions (Maybe (Val Text))
kfdscwloLogStreamName = lens _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName (\s a -> s { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName = a })
