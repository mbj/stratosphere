{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes when an object transitions to a specified storage class for the
-- Amazon S3 Lifecycle Rule property.

module Stratosphere.ResourceProperties.S3LifecycleRuleTransition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3LifecycleRuleTransition. See
-- 's3LifecycleRuleTransition' for a more convenient constructor.
data S3LifecycleRuleTransition =
  S3LifecycleRuleTransition
  { _s3LifecycleRuleTransitionStorageClass :: Val Text
  , _s3LifecycleRuleTransitionTransitionDate :: Maybe (Val Text)
  , _s3LifecycleRuleTransitionTransitionInDays :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON S3LifecycleRuleTransition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON S3LifecycleRuleTransition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'S3LifecycleRuleTransition' containing required fields as
-- arguments.
s3LifecycleRuleTransition
  :: Val Text -- ^ 'slrtStorageClass'
  -> S3LifecycleRuleTransition
s3LifecycleRuleTransition storageClassarg =
  S3LifecycleRuleTransition
  { _s3LifecycleRuleTransitionStorageClass = storageClassarg
  , _s3LifecycleRuleTransitionTransitionDate = Nothing
  , _s3LifecycleRuleTransitionTransitionInDays = Nothing
  }

-- | The storage class to which you want the object to transition, such as
-- GLACIER. For valid values, see the StorageClass request element of the PUT
-- Bucket lifecycle action in the Amazon Simple Storage Service API Reference.
slrtStorageClass :: Lens' S3LifecycleRuleTransition (Val Text)
slrtStorageClass = lens _s3LifecycleRuleTransitionStorageClass (\s a -> s { _s3LifecycleRuleTransitionStorageClass = a })

-- | Indicates when objects are transitioned to the specified storage class.
-- The date value must be in ISO 8601 format. The time is always midnight UTC.
slrtTransitionDate :: Lens' S3LifecycleRuleTransition (Maybe (Val Text))
slrtTransitionDate = lens _s3LifecycleRuleTransitionTransitionDate (\s a -> s { _s3LifecycleRuleTransitionTransitionDate = a })

-- | Indicates the number of days after creation when objects are transitioned
-- to the specified storage class.
slrtTransitionInDays :: Lens' S3LifecycleRuleTransition (Maybe (Val Integer'))
slrtTransitionInDays = lens _s3LifecycleRuleTransitionTransitionInDays (\s a -> s { _s3LifecycleRuleTransitionTransitionInDays = a })