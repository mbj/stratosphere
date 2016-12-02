{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions. See
-- | 'kinesisFirehoseDeliveryStreamCloudWatchLoggingOptions' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions =
  KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled :: Maybe (Val Bool')
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 54, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 54, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  :: KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
kinesisFirehoseDeliveryStreamCloudWatchLoggingOptions  =
  KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled = Nothing
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName = Nothing
  , _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions.html#cfn-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions-enabled
kfdscwloEnabled :: Lens' KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions (Maybe (Val Bool'))
kfdscwloEnabled = lens _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled (\s a -> s { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions.html#cfn-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions-loggroupname
kfdscwloLogGroupName :: Lens' KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions (Maybe (Val Text))
kfdscwloLogGroupName = lens _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName (\s a -> s { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions.html#cfn-kinesisfirehose-kinesisdeliverystream-destination-cloudwatchloggingoptions-logstreamname
kfdscwloLogStreamName :: Lens' KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions (Maybe (Val Text))
kfdscwloLogStreamName = lens _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName (\s a -> s { _kinesisFirehoseDeliveryStreamCloudWatchLoggingOptionsLogStreamName = a })
