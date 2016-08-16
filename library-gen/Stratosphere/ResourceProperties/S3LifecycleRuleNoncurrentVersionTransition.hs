{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | NoncurrentVersionTransition is a property of the Amazon S3 Lifecycle Rule
-- property that describes when noncurrent objects transition to a specified
-- storage class.

module Stratosphere.ResourceProperties.S3LifecycleRuleNoncurrentVersionTransition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3LifecycleRuleNoncurrentVersionTransition.
-- See 's3LifecycleRuleNoncurrentVersionTransition' for a more convenient
-- constructor.
data S3LifecycleRuleNoncurrentVersionTransition =
  S3LifecycleRuleNoncurrentVersionTransition
  { _s3LifecycleRuleNoncurrentVersionTransitionStorageClass :: Val Text
  , _s3LifecycleRuleNoncurrentVersionTransitionTransitionInDays :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON S3LifecycleRuleNoncurrentVersionTransition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 43, omitNothingFields = True }

instance FromJSON S3LifecycleRuleNoncurrentVersionTransition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 43, omitNothingFields = True }

-- | Constructor for 'S3LifecycleRuleNoncurrentVersionTransition' containing
-- required fields as arguments.
s3LifecycleRuleNoncurrentVersionTransition
  :: Val Text -- ^ 'slrnvtStorageClass'
  -> Val Integer' -- ^ 'slrnvtTransitionInDays'
  -> S3LifecycleRuleNoncurrentVersionTransition
s3LifecycleRuleNoncurrentVersionTransition storageClassarg transitionInDaysarg =
  S3LifecycleRuleNoncurrentVersionTransition
  { _s3LifecycleRuleNoncurrentVersionTransitionStorageClass = storageClassarg
  , _s3LifecycleRuleNoncurrentVersionTransitionTransitionInDays = transitionInDaysarg
  }

-- | The storage class to which you want the object to transition, such as
-- GLACIER. For valid values, see the StorageClass request element of the PUT
-- Bucket lifecycle action in the Amazon Simple Storage Service API Reference.
slrnvtStorageClass :: Lens' S3LifecycleRuleNoncurrentVersionTransition (Val Text)
slrnvtStorageClass = lens _s3LifecycleRuleNoncurrentVersionTransitionStorageClass (\s a -> s { _s3LifecycleRuleNoncurrentVersionTransitionStorageClass = a })

-- | The number of days between the time that a new version of the object is
-- uploaded to the bucket and when old versions of the object are transitioned
-- to the specified storage class.
slrnvtTransitionInDays :: Lens' S3LifecycleRuleNoncurrentVersionTransition (Val Integer')
slrnvtTransitionInDays = lens _s3LifecycleRuleNoncurrentVersionTransitionTransitionInDays (\s a -> s { _s3LifecycleRuleNoncurrentVersionTransitionTransitionInDays = a })