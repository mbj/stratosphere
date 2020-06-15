{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationruleandoperator.html

module Stratosphere.ResourceProperties.S3BucketReplicationRuleAndOperator where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketTagFilter

-- | Full data type definition for S3BucketReplicationRuleAndOperator. See
-- 's3BucketReplicationRuleAndOperator' for a more convenient constructor.
data S3BucketReplicationRuleAndOperator =
  S3BucketReplicationRuleAndOperator
  { _s3BucketReplicationRuleAndOperatorPrefix :: Maybe (Val Text)
  , _s3BucketReplicationRuleAndOperatorTagFilters :: Maybe [S3BucketTagFilter]
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationRuleAndOperator where
  toJSON S3BucketReplicationRuleAndOperator{..} =
    object $
    catMaybes
    [ fmap (("Prefix",) . toJSON) _s3BucketReplicationRuleAndOperatorPrefix
    , fmap (("TagFilters",) . toJSON) _s3BucketReplicationRuleAndOperatorTagFilters
    ]

-- | Constructor for 'S3BucketReplicationRuleAndOperator' containing required
-- fields as arguments.
s3BucketReplicationRuleAndOperator
  :: S3BucketReplicationRuleAndOperator
s3BucketReplicationRuleAndOperator  =
  S3BucketReplicationRuleAndOperator
  { _s3BucketReplicationRuleAndOperatorPrefix = Nothing
  , _s3BucketReplicationRuleAndOperatorTagFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationruleandoperator.html#cfn-s3-bucket-replicationruleandoperator-prefix
sbrraoPrefix :: Lens' S3BucketReplicationRuleAndOperator (Maybe (Val Text))
sbrraoPrefix = lens _s3BucketReplicationRuleAndOperatorPrefix (\s a -> s { _s3BucketReplicationRuleAndOperatorPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationruleandoperator.html#cfn-s3-bucket-replicationruleandoperator-tagfilters
sbrraoTagFilters :: Lens' S3BucketReplicationRuleAndOperator (Maybe [S3BucketTagFilter])
sbrraoTagFilters = lens _s3BucketReplicationRuleAndOperatorTagFilters (\s a -> s { _s3BucketReplicationRuleAndOperatorTagFilters = a })
