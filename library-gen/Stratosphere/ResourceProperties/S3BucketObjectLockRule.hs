
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html

module Stratosphere.ResourceProperties.S3BucketObjectLockRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketDefaultRetention

-- | Full data type definition for S3BucketObjectLockRule. See
-- 's3BucketObjectLockRule' for a more convenient constructor.
data S3BucketObjectLockRule =
  S3BucketObjectLockRule
  { _s3BucketObjectLockRuleDefaultRetention :: Maybe S3BucketDefaultRetention
  } deriving (Show, Eq)

instance ToJSON S3BucketObjectLockRule where
  toJSON S3BucketObjectLockRule{..} =
    object $
    catMaybes
    [ fmap (("DefaultRetention",) . toJSON) _s3BucketObjectLockRuleDefaultRetention
    ]

-- | Constructor for 'S3BucketObjectLockRule' containing required fields as
-- arguments.
s3BucketObjectLockRule
  :: S3BucketObjectLockRule
s3BucketObjectLockRule  =
  S3BucketObjectLockRule
  { _s3BucketObjectLockRuleDefaultRetention = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html#cfn-s3-bucket-objectlockrule-defaultretention
sbolrDefaultRetention :: Lens' S3BucketObjectLockRule (Maybe S3BucketDefaultRetention)
sbolrDefaultRetention = lens _s3BucketObjectLockRuleDefaultRetention (\s a -> s { _s3BucketObjectLockRuleDefaultRetention = a })
