{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html

module Stratosphere.ResourceProperties.S3BucketReplicationRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketReplicationDestination

-- | Full data type definition for S3BucketReplicationRule. See
-- | 's3BucketReplicationRule' for a more convenient constructor.
data S3BucketReplicationRule =
  S3BucketReplicationRule
  { _s3BucketReplicationRuleDestination :: S3BucketReplicationDestination
  , _s3BucketReplicationRuleId :: Maybe (Val Text)
  , _s3BucketReplicationRulePrefix :: Val Text
  , _s3BucketReplicationRuleStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationRule where
  toJSON S3BucketReplicationRule{..} =
    object
    [ "Destination" .= _s3BucketReplicationRuleDestination
    , "Id" .= _s3BucketReplicationRuleId
    , "Prefix" .= _s3BucketReplicationRulePrefix
    , "Status" .= _s3BucketReplicationRuleStatus
    ]

instance FromJSON S3BucketReplicationRule where
  parseJSON (Object obj) =
    S3BucketReplicationRule <$>
      obj .: "Destination" <*>
      obj .: "Id" <*>
      obj .: "Prefix" <*>
      obj .: "Status"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketReplicationRule' containing required fields as
-- | arguments.
s3BucketReplicationRule
  :: S3BucketReplicationDestination -- ^ 'sbrrDestination'
  -> Val Text -- ^ 'sbrrPrefix'
  -> Val Text -- ^ 'sbrrStatus'
  -> S3BucketReplicationRule
s3BucketReplicationRule destinationarg prefixarg statusarg =
  S3BucketReplicationRule
  { _s3BucketReplicationRuleDestination = destinationarg
  , _s3BucketReplicationRuleId = Nothing
  , _s3BucketReplicationRulePrefix = prefixarg
  , _s3BucketReplicationRuleStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-destination
sbrrDestination :: Lens' S3BucketReplicationRule S3BucketReplicationDestination
sbrrDestination = lens _s3BucketReplicationRuleDestination (\s a -> s { _s3BucketReplicationRuleDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-id
sbrrId :: Lens' S3BucketReplicationRule (Maybe (Val Text))
sbrrId = lens _s3BucketReplicationRuleId (\s a -> s { _s3BucketReplicationRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-prefix
sbrrPrefix :: Lens' S3BucketReplicationRule (Val Text)
sbrrPrefix = lens _s3BucketReplicationRulePrefix (\s a -> s { _s3BucketReplicationRulePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-status
sbrrStatus :: Lens' S3BucketReplicationRule (Val Text)
sbrrStatus = lens _s3BucketReplicationRuleStatus (\s a -> s { _s3BucketReplicationRuleStatus = a })
