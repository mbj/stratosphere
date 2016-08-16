{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes the topic and events for the Amazon S3
-- NotificationConfiguration property.

module Stratosphere.ResourceProperties.S3NotificationConfigurationTopicConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilter

-- | Full data type definition for
-- S3NotificationConfigurationTopicConfiguration. See
-- 's3NotificationConfigurationTopicConfiguration' for a more convenient
-- constructor.
data S3NotificationConfigurationTopicConfiguration =
  S3NotificationConfigurationTopicConfiguration
  { _s3NotificationConfigurationTopicConfigurationEvent :: Val Text
  , _s3NotificationConfigurationTopicConfigurationFilter :: Maybe S3NotificationConfigurationConfigFilter
  , _s3NotificationConfigurationTopicConfigurationTopic :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfigurationTopicConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

instance FromJSON S3NotificationConfigurationTopicConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfigurationTopicConfiguration'
-- containing required fields as arguments.
s3NotificationConfigurationTopicConfiguration
  :: Val Text -- ^ 'snctcEvent'
  -> Val Text -- ^ 'snctcTopic'
  -> S3NotificationConfigurationTopicConfiguration
s3NotificationConfigurationTopicConfiguration eventarg topicarg =
  S3NotificationConfigurationTopicConfiguration
  { _s3NotificationConfigurationTopicConfigurationEvent = eventarg
  , _s3NotificationConfigurationTopicConfigurationFilter = Nothing
  , _s3NotificationConfigurationTopicConfigurationTopic = topicarg
  }

-- | The Amazon Simple Storage Service (Amazon S3) bucket event about which to
-- send notifications. For more information, see Supported Event Types in the
-- Amazon Simple Storage Service Developer Guide.
snctcEvent :: Lens' S3NotificationConfigurationTopicConfiguration (Val Text)
snctcEvent = lens _s3NotificationConfigurationTopicConfigurationEvent (\s a -> s { _s3NotificationConfigurationTopicConfigurationEvent = a })

-- | The filtering rules that determine for which objects to send
-- notifications. For example, you can create a filter so that Amazon Simple
-- Storage Service (Amazon S3) sends notifications only when image files with
-- a .jpg extension are added to the bucket.
snctcFilter :: Lens' S3NotificationConfigurationTopicConfiguration (Maybe S3NotificationConfigurationConfigFilter)
snctcFilter = lens _s3NotificationConfigurationTopicConfigurationFilter (\s a -> s { _s3NotificationConfigurationTopicConfigurationFilter = a })

-- | The Amazon SNS topic Amazon Resource Name (ARN) to which Amazon S3
-- reports the specified events.
snctcTopic :: Lens' S3NotificationConfigurationTopicConfiguration (Val Text)
snctcTopic = lens _s3NotificationConfigurationTopicConfigurationTopic (\s a -> s { _s3NotificationConfigurationTopicConfigurationTopic = a })