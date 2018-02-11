{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html

module Stratosphere.ResourceProperties.S3BucketEncryptionConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketEncryptionConfiguration. See
-- 's3BucketEncryptionConfiguration' for a more convenient constructor.
data S3BucketEncryptionConfiguration =
  S3BucketEncryptionConfiguration
  { _s3BucketEncryptionConfigurationReplicaKmsKeyID :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketEncryptionConfiguration where
  toJSON S3BucketEncryptionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ReplicaKmsKeyID",) . toJSON) _s3BucketEncryptionConfigurationReplicaKmsKeyID
    ]

instance FromJSON S3BucketEncryptionConfiguration where
  parseJSON (Object obj) =
    S3BucketEncryptionConfiguration <$>
      (obj .: "ReplicaKmsKeyID")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketEncryptionConfiguration' containing required
-- fields as arguments.
s3BucketEncryptionConfiguration
  :: Val Text -- ^ 'sbecReplicaKmsKeyID'
  -> S3BucketEncryptionConfiguration
s3BucketEncryptionConfiguration replicaKmsKeyIDarg =
  S3BucketEncryptionConfiguration
  { _s3BucketEncryptionConfigurationReplicaKmsKeyID = replicaKmsKeyIDarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html#cfn-s3-bucket-encryptionconfiguration-replicakmskeyid
sbecReplicaKmsKeyID :: Lens' S3BucketEncryptionConfiguration (Val Text)
sbecReplicaKmsKeyID = lens _s3BucketEncryptionConfigurationReplicaKmsKeyID (\s a -> s { _s3BucketEncryptionConfigurationReplicaKmsKeyID = a })
