{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html

module Stratosphere.ResourceProperties.RedshiftClusterLoggingProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for RedshiftClusterLoggingProperties. See
-- 'redshiftClusterLoggingProperties' for a more convenient constructor.
data RedshiftClusterLoggingProperties =
  RedshiftClusterLoggingProperties
  { _redshiftClusterLoggingPropertiesBucketName :: Val Text
  , _redshiftClusterLoggingPropertiesS3KeyPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RedshiftClusterLoggingProperties where
  toJSON RedshiftClusterLoggingProperties{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _redshiftClusterLoggingPropertiesBucketName
    , fmap (("S3KeyPrefix",) . toJSON) _redshiftClusterLoggingPropertiesS3KeyPrefix
    ]

-- | Constructor for 'RedshiftClusterLoggingProperties' containing required
-- fields as arguments.
redshiftClusterLoggingProperties
  :: Val Text -- ^ 'rclpBucketName'
  -> RedshiftClusterLoggingProperties
redshiftClusterLoggingProperties bucketNamearg =
  RedshiftClusterLoggingProperties
  { _redshiftClusterLoggingPropertiesBucketName = bucketNamearg
  , _redshiftClusterLoggingPropertiesS3KeyPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-bucketname
rclpBucketName :: Lens' RedshiftClusterLoggingProperties (Val Text)
rclpBucketName = lens _redshiftClusterLoggingPropertiesBucketName (\s a -> s { _redshiftClusterLoggingPropertiesBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-s3keyprefix
rclpS3KeyPrefix :: Lens' RedshiftClusterLoggingProperties (Maybe (Val Text))
rclpS3KeyPrefix = lens _redshiftClusterLoggingPropertiesS3KeyPrefix (\s a -> s { _redshiftClusterLoggingPropertiesS3KeyPrefix = a })
