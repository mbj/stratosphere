{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Rules is a property of the Amazon S3 ReplicationConfiguration property
-- that specifies which Amazon Simple Storage Service (Amazon S3) objects to
-- replicate and where to store them.

module Stratosphere.ResourceProperties.S3ReplicationConfigurationRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3ReplicationConfigurationRulesDestination

-- | Full data type definition for S3ReplicationConfigurationRule. See
-- 's3ReplicationConfigurationRule' for a more convenient constructor.
data S3ReplicationConfigurationRule =
  S3ReplicationConfigurationRule
  { _s3ReplicationConfigurationRuleDestination :: S3ReplicationConfigurationRulesDestination
  , _s3ReplicationConfigurationRuleId :: Maybe (Val Text)
  , _s3ReplicationConfigurationRulePrefix :: Val Text
  , _s3ReplicationConfigurationRuleStatus :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3ReplicationConfigurationRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON S3ReplicationConfigurationRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'S3ReplicationConfigurationRule' containing required
-- fields as arguments.
s3ReplicationConfigurationRule
  :: S3ReplicationConfigurationRulesDestination -- ^ 'srcrDestination'
  -> Val Text -- ^ 'srcrPrefix'
  -> Val Text -- ^ 'srcrStatus'
  -> S3ReplicationConfigurationRule
s3ReplicationConfigurationRule destinationarg prefixarg statusarg =
  S3ReplicationConfigurationRule
  { _s3ReplicationConfigurationRuleDestination = destinationarg
  , _s3ReplicationConfigurationRuleId = Nothing
  , _s3ReplicationConfigurationRulePrefix = prefixarg
  , _s3ReplicationConfigurationRuleStatus = statusarg
  }

-- | Defines the destination where Amazon S3 stores replicated objects.
srcrDestination :: Lens' S3ReplicationConfigurationRule S3ReplicationConfigurationRulesDestination
srcrDestination = lens _s3ReplicationConfigurationRuleDestination (\s a -> s { _s3ReplicationConfigurationRuleDestination = a })

-- | A unique identifier for the rule. If you don't specify a value, AWS
-- CloudFormation generates a random ID.
srcrId :: Lens' S3ReplicationConfigurationRule (Maybe (Val Text))
srcrId = lens _s3ReplicationConfigurationRuleId (\s a -> s { _s3ReplicationConfigurationRuleId = a })

-- | An object prefix. This rule applies to all Amazon S3 objects with this
-- prefix. To specify all objects in an S3 bucket, specify an empty string.
srcrPrefix :: Lens' S3ReplicationConfigurationRule (Val Text)
srcrPrefix = lens _s3ReplicationConfigurationRulePrefix (\s a -> s { _s3ReplicationConfigurationRulePrefix = a })

-- | Whether the rule is enabled. For valid values, see the Status element of
-- the PUT Bucket replication action in the Amazon Simple Storage Service API
-- Reference.
srcrStatus :: Lens' S3ReplicationConfigurationRule (Val Text)
srcrStatus = lens _s3ReplicationConfigurationRuleStatus (\s a -> s { _s3ReplicationConfigurationRuleStatus = a })