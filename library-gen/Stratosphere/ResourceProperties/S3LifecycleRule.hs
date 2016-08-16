{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes lifecycle rules for the Amazon S3 Lifecycle Configuration
-- property.

module Stratosphere.ResourceProperties.S3LifecycleRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3LifecycleRuleNoncurrentVersionTransition
import Stratosphere.ResourceProperties.S3LifecycleRuleTransition

-- | Full data type definition for S3LifecycleRule. See 's3LifecycleRule' for
-- a more convenient constructor.
data S3LifecycleRule =
  S3LifecycleRule
  { _s3LifecycleRuleExpirationDate :: Maybe (Val Text)
  , _s3LifecycleRuleExpirationInDays :: Maybe (Val Integer')
  , _s3LifecycleRuleId :: Maybe (Val Text)
  , _s3LifecycleRuleNoncurrentVersionExpirationInDays :: Maybe (Val Integer')
  , _s3LifecycleRuleNoncurrentVersionTransition :: Maybe S3LifecycleRuleNoncurrentVersionTransition
  , _s3LifecycleRuleNoncurrentVersionTransitions :: Maybe [S3LifecycleRuleNoncurrentVersionTransition]
  , _s3LifecycleRulePrefix :: Maybe (Val Text)
  , _s3LifecycleRuleStatus :: Val Text
  , _s3LifecycleRuleTransition :: Maybe S3LifecycleRuleTransition
  , _s3LifecycleRuleTransitions :: Maybe [S3LifecycleRuleTransition]
  } deriving (Show, Generic)

instance ToJSON S3LifecycleRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON S3LifecycleRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'S3LifecycleRule' containing required fields as
-- arguments.
s3LifecycleRule
  :: Val Text -- ^ 'slrStatus'
  -> S3LifecycleRule
s3LifecycleRule statusarg =
  S3LifecycleRule
  { _s3LifecycleRuleExpirationDate = Nothing
  , _s3LifecycleRuleExpirationInDays = Nothing
  , _s3LifecycleRuleId = Nothing
  , _s3LifecycleRuleNoncurrentVersionExpirationInDays = Nothing
  , _s3LifecycleRuleNoncurrentVersionTransition = Nothing
  , _s3LifecycleRuleNoncurrentVersionTransitions = Nothing
  , _s3LifecycleRulePrefix = Nothing
  , _s3LifecycleRuleStatus = statusarg
  , _s3LifecycleRuleTransition = Nothing
  , _s3LifecycleRuleTransitions = Nothing
  }

-- | Indicates when objects are deleted from Amazon S3 and Amazon Glacier. The
-- date value must be in ISO 8601 format. The time is always midnight UTC. If
-- you specify an expiration and transition time, you must use the same time
-- unit for both properties (either in days or by date). The expiration time
-- must also be later than the transition time.
slrExpirationDate :: Lens' S3LifecycleRule (Maybe (Val Text))
slrExpirationDate = lens _s3LifecycleRuleExpirationDate (\s a -> s { _s3LifecycleRuleExpirationDate = a })

-- | Indicates the number of days after creation when objects are deleted from
-- Amazon S3 and Amazon Glacier. If you specify an expiration and transition
-- time, you must use the same time unit for both properties (either in days
-- or by date). The expiration time must also be later than the transition
-- time.
slrExpirationInDays :: Lens' S3LifecycleRule (Maybe (Val Integer'))
slrExpirationInDays = lens _s3LifecycleRuleExpirationInDays (\s a -> s { _s3LifecycleRuleExpirationInDays = a })

-- | A unique identifier for this rule. The value cannot be more than 255
-- characters.
slrId :: Lens' S3LifecycleRule (Maybe (Val Text))
slrId = lens _s3LifecycleRuleId (\s a -> s { _s3LifecycleRuleId = a })

-- | For buckets with versioning enabled (or suspended), specifies the time,
-- in days, between when a new version of the object is uploaded to the bucket
-- and when old versions of the object expire. When object versions expire,
-- Amazon S3 permanently deletes them. If you specify a transition and
-- expiration time, the expiration time must be later than the transition
-- time.
slrNoncurrentVersionExpirationInDays :: Lens' S3LifecycleRule (Maybe (Val Integer'))
slrNoncurrentVersionExpirationInDays = lens _s3LifecycleRuleNoncurrentVersionExpirationInDays (\s a -> s { _s3LifecycleRuleNoncurrentVersionExpirationInDays = a })

-- | For buckets with versioning enabled (or suspended), specifies when
-- non-current objects transition to a specified storage class. If you specify
-- a transition and expiration time, the expiration time must be later than
-- the transition time. If you specify this property, don't specify the
-- NoncurrentVersionTransitions property.
slrNoncurrentVersionTransition :: Lens' S3LifecycleRule (Maybe S3LifecycleRuleNoncurrentVersionTransition)
slrNoncurrentVersionTransition = lens _s3LifecycleRuleNoncurrentVersionTransition (\s a -> s { _s3LifecycleRuleNoncurrentVersionTransition = a })

-- | For buckets with versioning enabled (or suspended), one or more
-- transition rules that specify when non-current objects transition to a
-- specified storage class. If you specify a transition and expiration time,
-- the expiration time must be later than the transition time. If you specify
-- this property, don't specify the NoncurrentVersionTransition property.
slrNoncurrentVersionTransitions :: Lens' S3LifecycleRule (Maybe [S3LifecycleRuleNoncurrentVersionTransition])
slrNoncurrentVersionTransitions = lens _s3LifecycleRuleNoncurrentVersionTransitions (\s a -> s { _s3LifecycleRuleNoncurrentVersionTransitions = a })

-- | Object key prefix that identifies one or more objects to which this rule
-- applies.
slrPrefix :: Lens' S3LifecycleRule (Maybe (Val Text))
slrPrefix = lens _s3LifecycleRulePrefix (\s a -> s { _s3LifecycleRulePrefix = a })

-- | Specify either Enabled or Disabled. If you specify Enabled, Amazon S3
-- executes this rule as scheduled. If you specify Disabled, Amazon S3 ignores
-- this rule.
slrStatus :: Lens' S3LifecycleRule (Val Text)
slrStatus = lens _s3LifecycleRuleStatus (\s a -> s { _s3LifecycleRuleStatus = a })

-- | Specifies when an object transitions to a specified storage class. If you
-- specify an expiration and transition time, you must use the same time unit
-- for both properties (either in days or by date). The expiration time must
-- also be later than the transition time. If you specify this property, don't
-- specify the Transitions property.
slrTransition :: Lens' S3LifecycleRule (Maybe S3LifecycleRuleTransition)
slrTransition = lens _s3LifecycleRuleTransition (\s a -> s { _s3LifecycleRuleTransition = a })

-- | One or more transition rules that specify when an object transitions to a
-- specified storage class. If you specify an expiration and transition time,
-- you must use the same time unit for both properties (either in days or by
-- date). The expiration time must also be later than the transition time. If
-- you specify this property, don't specify the Transition property.
slrTransitions :: Lens' S3LifecycleRule (Maybe [S3LifecycleRuleTransition])
slrTransitions = lens _s3LifecycleRuleTransitions (\s a -> s { _s3LifecycleRuleTransitions = a })