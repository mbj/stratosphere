{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html

module Stratosphere.ResourceProperties.S3BucketTransition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketTransition. See
-- | 's3BucketTransition' for a more convenient constructor.
data S3BucketTransition =
  S3BucketTransition
  { _s3BucketTransitionStorageClass :: Val Text
  , _s3BucketTransitionTransitionDate :: Maybe (Val Text)
  , _s3BucketTransitionTransitionInDays :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON S3BucketTransition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON S3BucketTransition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'S3BucketTransition' containing required fields as
-- | arguments.
s3BucketTransition
  :: Val Text -- ^ 'sbtStorageClass'
  -> S3BucketTransition
s3BucketTransition storageClassarg =
  S3BucketTransition
  { _s3BucketTransitionStorageClass = storageClassarg
  , _s3BucketTransitionTransitionDate = Nothing
  , _s3BucketTransitionTransitionInDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-storageclass
sbtStorageClass :: Lens' S3BucketTransition (Val Text)
sbtStorageClass = lens _s3BucketTransitionStorageClass (\s a -> s { _s3BucketTransitionStorageClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitiondate
sbtTransitionDate :: Lens' S3BucketTransition (Maybe (Val Text))
sbtTransitionDate = lens _s3BucketTransitionTransitionDate (\s a -> s { _s3BucketTransitionTransitionDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitionindays
sbtTransitionInDays :: Lens' S3BucketTransition (Maybe (Val Integer'))
sbtTransitionInDays = lens _s3BucketTransitionTransitionInDays (\s a -> s { _s3BucketTransitionTransitionInDays = a })
