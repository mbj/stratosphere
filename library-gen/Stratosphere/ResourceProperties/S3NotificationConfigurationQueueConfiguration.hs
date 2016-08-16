{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | QueueConfigurations is a property of the Amazon S3
-- NotificationConfiguration property that describes the S3 bucket events
-- about which you want to send messages to Amazon SQS and the queues to which
-- you want to send them.

module Stratosphere.ResourceProperties.S3NotificationConfigurationQueueConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilter

-- | Full data type definition for
-- S3NotificationConfigurationQueueConfiguration. See
-- 's3NotificationConfigurationQueueConfiguration' for a more convenient
-- constructor.
data S3NotificationConfigurationQueueConfiguration =
  S3NotificationConfigurationQueueConfiguration
  { _s3NotificationConfigurationQueueConfigurationEvent :: Val Text
  , _s3NotificationConfigurationQueueConfigurationFilter :: Maybe S3NotificationConfigurationConfigFilter
  , _s3NotificationConfigurationQueueConfigurationQueue :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfigurationQueueConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

instance FromJSON S3NotificationConfigurationQueueConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfigurationQueueConfiguration'
-- containing required fields as arguments.
s3NotificationConfigurationQueueConfiguration
  :: Val Text -- ^ 'sncqcEvent'
  -> Val Text -- ^ 'sncqcQueue'
  -> S3NotificationConfigurationQueueConfiguration
s3NotificationConfigurationQueueConfiguration eventarg queuearg =
  S3NotificationConfigurationQueueConfiguration
  { _s3NotificationConfigurationQueueConfigurationEvent = eventarg
  , _s3NotificationConfigurationQueueConfigurationFilter = Nothing
  , _s3NotificationConfigurationQueueConfigurationQueue = queuearg
  }

-- | The S3 bucket event about which you want to publish messages to Amazon
-- Simple Queue Service ( Amazon SQS). For more information, see Supported
-- Event Types in the Amazon Simple Storage Service Developer Guide.
sncqcEvent :: Lens' S3NotificationConfigurationQueueConfiguration (Val Text)
sncqcEvent = lens _s3NotificationConfigurationQueueConfigurationEvent (\s a -> s { _s3NotificationConfigurationQueueConfigurationEvent = a })

-- | The filtering rules that determine for which objects to send
-- notifications. For example, you can create a filter so that Amazon Simple
-- Storage Service (Amazon S3) sends notifications only when image files with
-- a .jpg extension are added to the bucket.
sncqcFilter :: Lens' S3NotificationConfigurationQueueConfiguration (Maybe S3NotificationConfigurationConfigFilter)
sncqcFilter = lens _s3NotificationConfigurationQueueConfigurationFilter (\s a -> s { _s3NotificationConfigurationQueueConfigurationFilter = a })

-- | The Amazon Resource Name (ARN) of the Amazon SQS queue that Amazon S3
-- publishes messages to when the specified event type occurs.
sncqcQueue :: Lens' S3NotificationConfigurationQueueConfiguration (Val Text)
sncqcQueue = lens _s3NotificationConfigurationQueueConfigurationQueue (\s a -> s { _s3NotificationConfigurationQueueConfigurationQueue = a })