
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtimevalue.html

module Stratosphere.ResourceProperties.S3BucketReplicationTimeValue where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketReplicationTimeValue. See
-- 's3BucketReplicationTimeValue' for a more convenient constructor.
data S3BucketReplicationTimeValue =
  S3BucketReplicationTimeValue
  { _s3BucketReplicationTimeValueMinutes :: Val Integer
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationTimeValue where
  toJSON S3BucketReplicationTimeValue{..} =
    object $
    catMaybes
    [ (Just . ("Minutes",) . toJSON) _s3BucketReplicationTimeValueMinutes
    ]

-- | Constructor for 'S3BucketReplicationTimeValue' containing required fields
-- as arguments.
s3BucketReplicationTimeValue
  :: Val Integer -- ^ 'sbrtvMinutes'
  -> S3BucketReplicationTimeValue
s3BucketReplicationTimeValue minutesarg =
  S3BucketReplicationTimeValue
  { _s3BucketReplicationTimeValueMinutes = minutesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtimevalue.html#cfn-s3-bucket-replicationtimevalue-minutes
sbrtvMinutes :: Lens' S3BucketReplicationTimeValue (Val Integer)
sbrtvMinutes = lens _s3BucketReplicationTimeValueMinutes (\s a -> s { _s3BucketReplicationTimeValueMinutes = a })
