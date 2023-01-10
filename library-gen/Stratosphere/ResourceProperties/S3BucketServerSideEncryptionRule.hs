
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html

module Stratosphere.ResourceProperties.S3BucketServerSideEncryptionRule where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketServerSideEncryptionByDefault

-- | Full data type definition for S3BucketServerSideEncryptionRule. See
-- 's3BucketServerSideEncryptionRule' for a more convenient constructor.
data S3BucketServerSideEncryptionRule =
  S3BucketServerSideEncryptionRule
  { _s3BucketServerSideEncryptionRuleServerSideEncryptionByDefault :: Maybe S3BucketServerSideEncryptionByDefault
  } deriving (Show, Eq)

instance ToJSON S3BucketServerSideEncryptionRule where
  toJSON S3BucketServerSideEncryptionRule{..} =
    object $
    catMaybes
    [ fmap (("ServerSideEncryptionByDefault",) . toJSON) _s3BucketServerSideEncryptionRuleServerSideEncryptionByDefault
    ]

-- | Constructor for 'S3BucketServerSideEncryptionRule' containing required
-- fields as arguments.
s3BucketServerSideEncryptionRule
  :: S3BucketServerSideEncryptionRule
s3BucketServerSideEncryptionRule  =
  S3BucketServerSideEncryptionRule
  { _s3BucketServerSideEncryptionRuleServerSideEncryptionByDefault = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html#cfn-s3-bucket-serversideencryptionrule-serversideencryptionbydefault
sbsserServerSideEncryptionByDefault :: Lens' S3BucketServerSideEncryptionRule (Maybe S3BucketServerSideEncryptionByDefault)
sbsserServerSideEncryptionByDefault = lens _s3BucketServerSideEncryptionRuleServerSideEncryptionByDefault (\s a -> s { _s3BucketServerSideEncryptionRuleServerSideEncryptionByDefault = a })
