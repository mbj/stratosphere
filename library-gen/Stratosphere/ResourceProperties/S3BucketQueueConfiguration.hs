{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html

module Stratosphere.ResourceProperties.S3BucketQueueConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketNotificationFilter

-- | Full data type definition for S3BucketQueueConfiguration. See
-- | 's3BucketQueueConfiguration' for a more convenient constructor.
data S3BucketQueueConfiguration =
  S3BucketQueueConfiguration
  { _s3BucketQueueConfigurationEvent :: Val Text
  , _s3BucketQueueConfigurationFilter :: Maybe S3BucketNotificationFilter
  , _s3BucketQueueConfigurationQueue :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketQueueConfiguration where
  toJSON S3BucketQueueConfiguration{..} =
    object $
    catMaybes
    [ Just ("Event" .= _s3BucketQueueConfigurationEvent)
    , ("Filter" .=) <$> _s3BucketQueueConfigurationFilter
    , Just ("Queue" .= _s3BucketQueueConfigurationQueue)
    ]

instance FromJSON S3BucketQueueConfiguration where
  parseJSON (Object obj) =
    S3BucketQueueConfiguration <$>
      obj .: "Event" <*>
      obj .:? "Filter" <*>
      obj .: "Queue"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketQueueConfiguration' containing required fields
-- | as arguments.
s3BucketQueueConfiguration
  :: Val Text -- ^ 'sbqcEvent'
  -> Val Text -- ^ 'sbqcQueue'
  -> S3BucketQueueConfiguration
s3BucketQueueConfiguration eventarg queuearg =
  S3BucketQueueConfiguration
  { _s3BucketQueueConfigurationEvent = eventarg
  , _s3BucketQueueConfigurationFilter = Nothing
  , _s3BucketQueueConfigurationQueue = queuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-event
sbqcEvent :: Lens' S3BucketQueueConfiguration (Val Text)
sbqcEvent = lens _s3BucketQueueConfigurationEvent (\s a -> s { _s3BucketQueueConfigurationEvent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-filter
sbqcFilter :: Lens' S3BucketQueueConfiguration (Maybe S3BucketNotificationFilter)
sbqcFilter = lens _s3BucketQueueConfigurationFilter (\s a -> s { _s3BucketQueueConfigurationFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-queue
sbqcQueue :: Lens' S3BucketQueueConfiguration (Val Text)
sbqcQueue = lens _s3BucketQueueConfigurationQueue (\s a -> s { _s3BucketQueueConfigurationQueue = a })
