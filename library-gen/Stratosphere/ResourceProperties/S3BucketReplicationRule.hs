{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html

module Stratosphere.ResourceProperties.S3BucketReplicationRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketDeleteMarkerReplication
import Stratosphere.ResourceProperties.S3BucketReplicationDestination
import Stratosphere.ResourceProperties.S3BucketReplicationRuleFilter
import Stratosphere.ResourceProperties.S3BucketSourceSelectionCriteria

-- | Full data type definition for S3BucketReplicationRule. See
-- 's3BucketReplicationRule' for a more convenient constructor.
data S3BucketReplicationRule =
  S3BucketReplicationRule
  { _s3BucketReplicationRuleDeleteMarkerReplication :: Maybe S3BucketDeleteMarkerReplication
  , _s3BucketReplicationRuleDestination :: S3BucketReplicationDestination
  , _s3BucketReplicationRuleFilter :: Maybe S3BucketReplicationRuleFilter
  , _s3BucketReplicationRuleId :: Maybe (Val Text)
  , _s3BucketReplicationRulePrefix :: Maybe (Val Text)
  , _s3BucketReplicationRulePriority :: Maybe (Val Integer)
  , _s3BucketReplicationRuleSourceSelectionCriteria :: Maybe S3BucketSourceSelectionCriteria
  , _s3BucketReplicationRuleStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationRule where
  toJSON S3BucketReplicationRule{..} =
    object $
    catMaybes
    [ fmap (("DeleteMarkerReplication",) . toJSON) _s3BucketReplicationRuleDeleteMarkerReplication
    , (Just . ("Destination",) . toJSON) _s3BucketReplicationRuleDestination
    , fmap (("Filter",) . toJSON) _s3BucketReplicationRuleFilter
    , fmap (("Id",) . toJSON) _s3BucketReplicationRuleId
    , fmap (("Prefix",) . toJSON) _s3BucketReplicationRulePrefix
    , fmap (("Priority",) . toJSON) _s3BucketReplicationRulePriority
    , fmap (("SourceSelectionCriteria",) . toJSON) _s3BucketReplicationRuleSourceSelectionCriteria
    , (Just . ("Status",) . toJSON) _s3BucketReplicationRuleStatus
    ]

-- | Constructor for 'S3BucketReplicationRule' containing required fields as
-- arguments.
s3BucketReplicationRule
  :: S3BucketReplicationDestination -- ^ 'sbrrDestination'
  -> Val Text -- ^ 'sbrrStatus'
  -> S3BucketReplicationRule
s3BucketReplicationRule destinationarg statusarg =
  S3BucketReplicationRule
  { _s3BucketReplicationRuleDeleteMarkerReplication = Nothing
  , _s3BucketReplicationRuleDestination = destinationarg
  , _s3BucketReplicationRuleFilter = Nothing
  , _s3BucketReplicationRuleId = Nothing
  , _s3BucketReplicationRulePrefix = Nothing
  , _s3BucketReplicationRulePriority = Nothing
  , _s3BucketReplicationRuleSourceSelectionCriteria = Nothing
  , _s3BucketReplicationRuleStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationrule-deletemarkerreplication
sbrrDeleteMarkerReplication :: Lens' S3BucketReplicationRule (Maybe S3BucketDeleteMarkerReplication)
sbrrDeleteMarkerReplication = lens _s3BucketReplicationRuleDeleteMarkerReplication (\s a -> s { _s3BucketReplicationRuleDeleteMarkerReplication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-destination
sbrrDestination :: Lens' S3BucketReplicationRule S3BucketReplicationDestination
sbrrDestination = lens _s3BucketReplicationRuleDestination (\s a -> s { _s3BucketReplicationRuleDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationrule-filter
sbrrFilter :: Lens' S3BucketReplicationRule (Maybe S3BucketReplicationRuleFilter)
sbrrFilter = lens _s3BucketReplicationRuleFilter (\s a -> s { _s3BucketReplicationRuleFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-id
sbrrId :: Lens' S3BucketReplicationRule (Maybe (Val Text))
sbrrId = lens _s3BucketReplicationRuleId (\s a -> s { _s3BucketReplicationRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-prefix
sbrrPrefix :: Lens' S3BucketReplicationRule (Maybe (Val Text))
sbrrPrefix = lens _s3BucketReplicationRulePrefix (\s a -> s { _s3BucketReplicationRulePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationrule-priority
sbrrPriority :: Lens' S3BucketReplicationRule (Maybe (Val Integer))
sbrrPriority = lens _s3BucketReplicationRulePriority (\s a -> s { _s3BucketReplicationRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationrule-sourceselectioncriteria
sbrrSourceSelectionCriteria :: Lens' S3BucketReplicationRule (Maybe S3BucketSourceSelectionCriteria)
sbrrSourceSelectionCriteria = lens _s3BucketReplicationRuleSourceSelectionCriteria (\s a -> s { _s3BucketReplicationRuleSourceSelectionCriteria = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-status
sbrrStatus :: Lens' S3BucketReplicationRule (Val Text)
sbrrStatus = lens _s3BucketReplicationRuleStatus (\s a -> s { _s3BucketReplicationRuleStatus = a })
