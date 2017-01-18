{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html

module Stratosphere.ResourceProperties.S3BucketReplicationDestination where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketReplicationDestination. See
-- | 's3BucketReplicationDestination' for a more convenient constructor.
data S3BucketReplicationDestination =
  S3BucketReplicationDestination
  { _s3BucketReplicationDestinationBucket :: Val Text
  , _s3BucketReplicationDestinationStorageClass :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON S3BucketReplicationDestination where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON S3BucketReplicationDestination where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'S3BucketReplicationDestination' containing required
-- | fields as arguments.
s3BucketReplicationDestination
  :: Val Text -- ^ 'sbrdBucket'
  -> S3BucketReplicationDestination
s3BucketReplicationDestination bucketarg =
  S3BucketReplicationDestination
  { _s3BucketReplicationDestinationBucket = bucketarg
  , _s3BucketReplicationDestinationStorageClass = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-bucket
sbrdBucket :: Lens' S3BucketReplicationDestination (Val Text)
sbrdBucket = lens _s3BucketReplicationDestinationBucket (\s a -> s { _s3BucketReplicationDestinationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-storageclass
sbrdStorageClass :: Lens' S3BucketReplicationDestination (Maybe (Val Text))
sbrdStorageClass = lens _s3BucketReplicationDestinationStorageClass (\s a -> s { _s3BucketReplicationDestinationStorageClass = a })
