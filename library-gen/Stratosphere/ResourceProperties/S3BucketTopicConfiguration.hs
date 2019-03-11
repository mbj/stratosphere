{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html

module Stratosphere.ResourceProperties.S3BucketTopicConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketNotificationFilter

-- | Full data type definition for S3BucketTopicConfiguration. See
-- 's3BucketTopicConfiguration' for a more convenient constructor.
data S3BucketTopicConfiguration =
  S3BucketTopicConfiguration
  { _s3BucketTopicConfigurationEvent :: Val Text
  , _s3BucketTopicConfigurationFilter :: Maybe S3BucketNotificationFilter
  , _s3BucketTopicConfigurationTopic :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketTopicConfiguration where
  toJSON S3BucketTopicConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Event",) . toJSON) _s3BucketTopicConfigurationEvent
    , fmap (("Filter",) . toJSON) _s3BucketTopicConfigurationFilter
    , (Just . ("Topic",) . toJSON) _s3BucketTopicConfigurationTopic
    ]

-- | Constructor for 'S3BucketTopicConfiguration' containing required fields
-- as arguments.
s3BucketTopicConfiguration
  :: Val Text -- ^ 'sbtcEvent'
  -> Val Text -- ^ 'sbtcTopic'
  -> S3BucketTopicConfiguration
s3BucketTopicConfiguration eventarg topicarg =
  S3BucketTopicConfiguration
  { _s3BucketTopicConfigurationEvent = eventarg
  , _s3BucketTopicConfigurationFilter = Nothing
  , _s3BucketTopicConfigurationTopic = topicarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-event
sbtcEvent :: Lens' S3BucketTopicConfiguration (Val Text)
sbtcEvent = lens _s3BucketTopicConfigurationEvent (\s a -> s { _s3BucketTopicConfigurationEvent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-filter
sbtcFilter :: Lens' S3BucketTopicConfiguration (Maybe S3BucketNotificationFilter)
sbtcFilter = lens _s3BucketTopicConfigurationFilter (\s a -> s { _s3BucketTopicConfigurationFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-topic
sbtcTopic :: Lens' S3BucketTopicConfiguration (Val Text)
sbtcTopic = lens _s3BucketTopicConfigurationTopic (\s a -> s { _s3BucketTopicConfigurationTopic = a })
