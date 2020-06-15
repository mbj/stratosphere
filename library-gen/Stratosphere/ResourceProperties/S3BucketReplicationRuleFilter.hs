{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html

module Stratosphere.ResourceProperties.S3BucketReplicationRuleFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketReplicationRuleAndOperator
import Stratosphere.ResourceProperties.S3BucketTagFilter

-- | Full data type definition for S3BucketReplicationRuleFilter. See
-- 's3BucketReplicationRuleFilter' for a more convenient constructor.
data S3BucketReplicationRuleFilter =
  S3BucketReplicationRuleFilter
  { _s3BucketReplicationRuleFilterAnd :: Maybe S3BucketReplicationRuleAndOperator
  , _s3BucketReplicationRuleFilterPrefix :: Maybe (Val Text)
  , _s3BucketReplicationRuleFilterTagFilter :: Maybe S3BucketTagFilter
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationRuleFilter where
  toJSON S3BucketReplicationRuleFilter{..} =
    object $
    catMaybes
    [ fmap (("And",) . toJSON) _s3BucketReplicationRuleFilterAnd
    , fmap (("Prefix",) . toJSON) _s3BucketReplicationRuleFilterPrefix
    , fmap (("TagFilter",) . toJSON) _s3BucketReplicationRuleFilterTagFilter
    ]

-- | Constructor for 'S3BucketReplicationRuleFilter' containing required
-- fields as arguments.
s3BucketReplicationRuleFilter
  :: S3BucketReplicationRuleFilter
s3BucketReplicationRuleFilter  =
  S3BucketReplicationRuleFilter
  { _s3BucketReplicationRuleFilterAnd = Nothing
  , _s3BucketReplicationRuleFilterPrefix = Nothing
  , _s3BucketReplicationRuleFilterTagFilter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html#cfn-s3-bucket-replicationrulefilter-and
sbrrfAnd :: Lens' S3BucketReplicationRuleFilter (Maybe S3BucketReplicationRuleAndOperator)
sbrrfAnd = lens _s3BucketReplicationRuleFilterAnd (\s a -> s { _s3BucketReplicationRuleFilterAnd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html#cfn-s3-bucket-replicationrulefilter-prefix
sbrrfPrefix :: Lens' S3BucketReplicationRuleFilter (Maybe (Val Text))
sbrrfPrefix = lens _s3BucketReplicationRuleFilterPrefix (\s a -> s { _s3BucketReplicationRuleFilterPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html#cfn-s3-bucket-replicationrulefilter-tagfilter
sbrrfTagFilter :: Lens' S3BucketReplicationRuleFilter (Maybe S3BucketTagFilter)
sbrrfTagFilter = lens _s3BucketReplicationRuleFilterTagFilter (\s a -> s { _s3BucketReplicationRuleFilterTagFilter = a })
