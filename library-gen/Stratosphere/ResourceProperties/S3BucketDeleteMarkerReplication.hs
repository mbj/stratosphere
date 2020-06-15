{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-deletemarkerreplication.html

module Stratosphere.ResourceProperties.S3BucketDeleteMarkerReplication where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketDeleteMarkerReplication. See
-- 's3BucketDeleteMarkerReplication' for a more convenient constructor.
data S3BucketDeleteMarkerReplication =
  S3BucketDeleteMarkerReplication
  { _s3BucketDeleteMarkerReplicationStatus :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3BucketDeleteMarkerReplication where
  toJSON S3BucketDeleteMarkerReplication{..} =
    object $
    catMaybes
    [ fmap (("Status",) . toJSON) _s3BucketDeleteMarkerReplicationStatus
    ]

-- | Constructor for 'S3BucketDeleteMarkerReplication' containing required
-- fields as arguments.
s3BucketDeleteMarkerReplication
  :: S3BucketDeleteMarkerReplication
s3BucketDeleteMarkerReplication  =
  S3BucketDeleteMarkerReplication
  { _s3BucketDeleteMarkerReplicationStatus = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-deletemarkerreplication.html#cfn-s3-bucket-deletemarkerreplication-status
sbdmrStatus :: Lens' S3BucketDeleteMarkerReplication (Maybe (Val Text))
sbdmrStatus = lens _s3BucketDeleteMarkerReplicationStatus (\s a -> s { _s3BucketDeleteMarkerReplicationStatus = a })
