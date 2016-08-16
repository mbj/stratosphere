{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Filter is a property of the LambdaConfigurations, QueueConfigurations,
-- and TopicConfigurations properties that describes the filtering rules that
-- determine the Amazon Simple Storage Service (Amazon S3) objects for which
-- to send notifications.

module Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilterS3Key

-- | Full data type definition for S3NotificationConfigurationConfigFilter.
-- See 's3NotificationConfigurationConfigFilter' for a more convenient
-- constructor.
data S3NotificationConfigurationConfigFilter =
  S3NotificationConfigurationConfigFilter
  { _s3NotificationConfigurationConfigFilterS3Key :: S3NotificationConfigurationConfigFilterS3Key
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfigurationConfigFilter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 40, omitNothingFields = True }

instance FromJSON S3NotificationConfigurationConfigFilter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 40, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfigurationConfigFilter' containing
-- required fields as arguments.
s3NotificationConfigurationConfigFilter
  :: S3NotificationConfigurationConfigFilterS3Key -- ^ 'snccfS3Key'
  -> S3NotificationConfigurationConfigFilter
s3NotificationConfigurationConfigFilter s3Keyarg =
  S3NotificationConfigurationConfigFilter
  { _s3NotificationConfigurationConfigFilterS3Key = s3Keyarg
  }

-- | Amazon S3 filtering rules that describe for which object key names to
-- send notifications.
snccfS3Key :: Lens' S3NotificationConfigurationConfigFilter S3NotificationConfigurationConfigFilterS3Key
snccfS3Key = lens _s3NotificationConfigurationConfigFilterS3Key (\s a -> s { _s3NotificationConfigurationConfigFilterS3Key = a })