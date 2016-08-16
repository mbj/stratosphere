{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Rules is a property of the Amazon S3 NotificationConfiguration Config
-- Filter S3Key property that describes the Amazon Simple Storage Service
-- (Amazon S3) object key name to filter on and whether to filter on the
-- suffix or prefix of the key name.

module Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilterS3KeyRules where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- S3NotificationConfigurationConfigFilterS3KeyRules. See
-- 's3NotificationConfigurationConfigFilterS3KeyRules' for a more convenient
-- constructor.
data S3NotificationConfigurationConfigFilterS3KeyRules =
  S3NotificationConfigurationConfigFilterS3KeyRules
  { _s3NotificationConfigurationConfigFilterS3KeyRulesName :: Val Text
  , _s3NotificationConfigurationConfigFilterS3KeyRulesValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfigurationConfigFilterS3KeyRules where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 50, omitNothingFields = True }

instance FromJSON S3NotificationConfigurationConfigFilterS3KeyRules where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 50, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfigurationConfigFilterS3KeyRules'
-- containing required fields as arguments.
s3NotificationConfigurationConfigFilterS3KeyRules
  :: Val Text -- ^ 'snccfskrName'
  -> Val Text -- ^ 'snccfskrValue'
  -> S3NotificationConfigurationConfigFilterS3KeyRules
s3NotificationConfigurationConfigFilterS3KeyRules namearg valuearg =
  S3NotificationConfigurationConfigFilterS3KeyRules
  { _s3NotificationConfigurationConfigFilterS3KeyRulesName = namearg
  , _s3NotificationConfigurationConfigFilterS3KeyRulesValue = valuearg
  }

-- | Whether the filter matches the prefix or suffix of object key names. For
-- valid values, see the Name request element of the PUT Bucket notification
-- action in the Amazon Simple Storage Service API Reference.
snccfskrName :: Lens' S3NotificationConfigurationConfigFilterS3KeyRules (Val Text)
snccfskrName = lens _s3NotificationConfigurationConfigFilterS3KeyRulesName (\s a -> s { _s3NotificationConfigurationConfigFilterS3KeyRulesName = a })

-- | The value that the filter searches for in object key names.
snccfskrValue :: Lens' S3NotificationConfigurationConfigFilterS3KeyRules (Val Text)
snccfskrValue = lens _s3NotificationConfigurationConfigFilterS3KeyRulesValue (\s a -> s { _s3NotificationConfigurationConfigFilterS3KeyRulesValue = a })