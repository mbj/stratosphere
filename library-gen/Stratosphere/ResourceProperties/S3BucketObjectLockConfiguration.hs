
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html

module Stratosphere.ResourceProperties.S3BucketObjectLockConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketObjectLockRule

-- | Full data type definition for S3BucketObjectLockConfiguration. See
-- 's3BucketObjectLockConfiguration' for a more convenient constructor.
data S3BucketObjectLockConfiguration =
  S3BucketObjectLockConfiguration
  { _s3BucketObjectLockConfigurationObjectLockEnabled :: Maybe (Val Text)
  , _s3BucketObjectLockConfigurationRule :: Maybe S3BucketObjectLockRule
  } deriving (Show, Eq)

instance ToJSON S3BucketObjectLockConfiguration where
  toJSON S3BucketObjectLockConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ObjectLockEnabled",) . toJSON) _s3BucketObjectLockConfigurationObjectLockEnabled
    , fmap (("Rule",) . toJSON) _s3BucketObjectLockConfigurationRule
    ]

-- | Constructor for 'S3BucketObjectLockConfiguration' containing required
-- fields as arguments.
s3BucketObjectLockConfiguration
  :: S3BucketObjectLockConfiguration
s3BucketObjectLockConfiguration  =
  S3BucketObjectLockConfiguration
  { _s3BucketObjectLockConfigurationObjectLockEnabled = Nothing
  , _s3BucketObjectLockConfigurationRule = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html#cfn-s3-bucket-objectlockconfiguration-objectlockenabled
sbolcObjectLockEnabled :: Lens' S3BucketObjectLockConfiguration (Maybe (Val Text))
sbolcObjectLockEnabled = lens _s3BucketObjectLockConfigurationObjectLockEnabled (\s a -> s { _s3BucketObjectLockConfigurationObjectLockEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html#cfn-s3-bucket-objectlockconfiguration-rule
sbolcRule :: Lens' S3BucketObjectLockConfiguration (Maybe S3BucketObjectLockRule)
sbolcRule = lens _s3BucketObjectLockConfigurationRule (\s a -> s { _s3BucketObjectLockConfigurationRule = a })
