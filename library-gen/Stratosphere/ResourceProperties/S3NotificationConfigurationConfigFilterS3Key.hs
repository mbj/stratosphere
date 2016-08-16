{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | S3Key is a property of the Amazon S3 NotificationConfiguration Config
-- Filter property that specifies the key names of Amazon Simple Storage
-- Service (Amazon S3) objects for which to send notifications.

module Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilterS3Key where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilterS3KeyRules

-- | Full data type definition for
-- S3NotificationConfigurationConfigFilterS3Key. See
-- 's3NotificationConfigurationConfigFilterS3Key' for a more convenient
-- constructor.
data S3NotificationConfigurationConfigFilterS3Key =
  S3NotificationConfigurationConfigFilterS3Key
  { _s3NotificationConfigurationConfigFilterS3KeyRules :: [S3NotificationConfigurationConfigFilterS3KeyRules]
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfigurationConfigFilterS3Key where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 45, omitNothingFields = True }

instance FromJSON S3NotificationConfigurationConfigFilterS3Key where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 45, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfigurationConfigFilterS3Key' containing
-- required fields as arguments.
s3NotificationConfigurationConfigFilterS3Key
  :: [S3NotificationConfigurationConfigFilterS3KeyRules] -- ^ 'snccfskRules'
  -> S3NotificationConfigurationConfigFilterS3Key
s3NotificationConfigurationConfigFilterS3Key rulesarg =
  S3NotificationConfigurationConfigFilterS3Key
  { _s3NotificationConfigurationConfigFilterS3KeyRules = rulesarg
  }

-- | The object key name to filter on and whether to filter on the suffix or
-- prefix of the key name.
snccfskRules :: Lens' S3NotificationConfigurationConfigFilterS3Key [S3NotificationConfigurationConfigFilterS3KeyRules]
snccfskRules = lens _s3NotificationConfigurationConfigFilterS3KeyRules (\s a -> s { _s3NotificationConfigurationConfigFilterS3KeyRules = a })