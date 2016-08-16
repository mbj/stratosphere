{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes the notification configuration for an AWS::S3::Bucket resource.

module Stratosphere.ResourceProperties.S3NotificationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3NotificationConfigurationLambdaConfiguration
import Stratosphere.ResourceProperties.S3NotificationConfigurationQueueConfiguration
import Stratosphere.ResourceProperties.S3NotificationConfigurationTopicConfiguration

-- | Full data type definition for S3NotificationConfiguration. See
-- 's3NotificationConfiguration' for a more convenient constructor.
data S3NotificationConfiguration =
  S3NotificationConfiguration
  { _s3NotificationConfigurationLambdaConfigurations :: Maybe [S3NotificationConfigurationLambdaConfiguration]
  , _s3NotificationConfigurationQueueConfigurations :: Maybe [S3NotificationConfigurationQueueConfiguration]
  , _s3NotificationConfigurationTopicConfigurations :: Maybe [S3NotificationConfigurationTopicConfiguration]
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON S3NotificationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfiguration' containing required fields
-- as arguments.
s3NotificationConfiguration
  :: S3NotificationConfiguration
s3NotificationConfiguration  =
  S3NotificationConfiguration
  { _s3NotificationConfigurationLambdaConfigurations = Nothing
  , _s3NotificationConfigurationQueueConfigurations = Nothing
  , _s3NotificationConfigurationTopicConfigurations = Nothing
  }

-- | The AWS Lambda functions to invoke and the events for which to invoke the
-- functions.
sncLambdaConfigurations :: Lens' S3NotificationConfiguration (Maybe [S3NotificationConfigurationLambdaConfiguration])
sncLambdaConfigurations = lens _s3NotificationConfigurationLambdaConfigurations (\s a -> s { _s3NotificationConfigurationLambdaConfigurations = a })

-- | The Amazon Simple Queue Service queues to publish messages to and the
-- events for which to publish messages.
sncQueueConfigurations :: Lens' S3NotificationConfiguration (Maybe [S3NotificationConfigurationQueueConfiguration])
sncQueueConfigurations = lens _s3NotificationConfigurationQueueConfigurations (\s a -> s { _s3NotificationConfigurationQueueConfigurations = a })

-- | The topic to which notifications are sent and the events for which
-- notification are generated.
sncTopicConfigurations :: Lens' S3NotificationConfiguration (Maybe [S3NotificationConfigurationTopicConfiguration])
sncTopicConfigurations = lens _s3NotificationConfigurationTopicConfigurations (\s a -> s { _s3NotificationConfigurationTopicConfigurations = a })