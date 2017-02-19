{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html

module Stratosphere.Resources.S3Bucket where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.S3BucketCorsConfiguration
import Stratosphere.ResourceProperties.S3BucketLifecycleConfiguration
import Stratosphere.ResourceProperties.S3BucketLoggingConfiguration
import Stratosphere.ResourceProperties.S3BucketNotificationConfiguration
import Stratosphere.ResourceProperties.S3BucketReplicationConfiguration
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.S3BucketVersioningConfiguration
import Stratosphere.ResourceProperties.S3BucketWebsiteConfiguration

-- | Full data type definition for S3Bucket. See 's3Bucket' for a more
-- | convenient constructor.
data S3Bucket =
  S3Bucket
  { _s3BucketAccessControl :: Maybe (Val CannedACL)
  , _s3BucketBucketName :: Maybe (Val Text)
  , _s3BucketCorsConfiguration :: Maybe S3BucketCorsConfiguration
  , _s3BucketLifecycleConfiguration :: Maybe S3BucketLifecycleConfiguration
  , _s3BucketLoggingConfiguration :: Maybe S3BucketLoggingConfiguration
  , _s3BucketNotificationConfiguration :: Maybe S3BucketNotificationConfiguration
  , _s3BucketReplicationConfiguration :: Maybe S3BucketReplicationConfiguration
  , _s3BucketTags :: Maybe [Tag]
  , _s3BucketVersioningConfiguration :: Maybe S3BucketVersioningConfiguration
  , _s3BucketWebsiteConfiguration :: Maybe S3BucketWebsiteConfiguration
  } deriving (Show, Eq)

instance ToJSON S3Bucket where
  toJSON S3Bucket{..} =
    object $
    catMaybes
    [ ("AccessControl" .=) <$> _s3BucketAccessControl
    , ("BucketName" .=) <$> _s3BucketBucketName
    , ("CorsConfiguration" .=) <$> _s3BucketCorsConfiguration
    , ("LifecycleConfiguration" .=) <$> _s3BucketLifecycleConfiguration
    , ("LoggingConfiguration" .=) <$> _s3BucketLoggingConfiguration
    , ("NotificationConfiguration" .=) <$> _s3BucketNotificationConfiguration
    , ("ReplicationConfiguration" .=) <$> _s3BucketReplicationConfiguration
    , ("Tags" .=) <$> _s3BucketTags
    , ("VersioningConfiguration" .=) <$> _s3BucketVersioningConfiguration
    , ("WebsiteConfiguration" .=) <$> _s3BucketWebsiteConfiguration
    ]

instance FromJSON S3Bucket where
  parseJSON (Object obj) =
    S3Bucket <$>
      obj .:? "AccessControl" <*>
      obj .:? "BucketName" <*>
      obj .:? "CorsConfiguration" <*>
      obj .:? "LifecycleConfiguration" <*>
      obj .:? "LoggingConfiguration" <*>
      obj .:? "NotificationConfiguration" <*>
      obj .:? "ReplicationConfiguration" <*>
      obj .:? "Tags" <*>
      obj .:? "VersioningConfiguration" <*>
      obj .:? "WebsiteConfiguration"
  parseJSON _ = mempty

-- | Constructor for 'S3Bucket' containing required fields as arguments.
s3Bucket
  :: S3Bucket
s3Bucket  =
  S3Bucket
  { _s3BucketAccessControl = Nothing
  , _s3BucketBucketName = Nothing
  , _s3BucketCorsConfiguration = Nothing
  , _s3BucketLifecycleConfiguration = Nothing
  , _s3BucketLoggingConfiguration = Nothing
  , _s3BucketNotificationConfiguration = Nothing
  , _s3BucketReplicationConfiguration = Nothing
  , _s3BucketTags = Nothing
  , _s3BucketVersioningConfiguration = Nothing
  , _s3BucketWebsiteConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accesscontrol
sbAccessControl :: Lens' S3Bucket (Maybe (Val CannedACL))
sbAccessControl = lens _s3BucketAccessControl (\s a -> s { _s3BucketAccessControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-name
sbBucketName :: Lens' S3Bucket (Maybe (Val Text))
sbBucketName = lens _s3BucketBucketName (\s a -> s { _s3BucketBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-crossoriginconfig
sbCorsConfiguration :: Lens' S3Bucket (Maybe S3BucketCorsConfiguration)
sbCorsConfiguration = lens _s3BucketCorsConfiguration (\s a -> s { _s3BucketCorsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-lifecycleconfig
sbLifecycleConfiguration :: Lens' S3Bucket (Maybe S3BucketLifecycleConfiguration)
sbLifecycleConfiguration = lens _s3BucketLifecycleConfiguration (\s a -> s { _s3BucketLifecycleConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-loggingconfig
sbLoggingConfiguration :: Lens' S3Bucket (Maybe S3BucketLoggingConfiguration)
sbLoggingConfiguration = lens _s3BucketLoggingConfiguration (\s a -> s { _s3BucketLoggingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-notification
sbNotificationConfiguration :: Lens' S3Bucket (Maybe S3BucketNotificationConfiguration)
sbNotificationConfiguration = lens _s3BucketNotificationConfiguration (\s a -> s { _s3BucketNotificationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-replicationconfiguration
sbReplicationConfiguration :: Lens' S3Bucket (Maybe S3BucketReplicationConfiguration)
sbReplicationConfiguration = lens _s3BucketReplicationConfiguration (\s a -> s { _s3BucketReplicationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-tags
sbTags :: Lens' S3Bucket (Maybe [Tag])
sbTags = lens _s3BucketTags (\s a -> s { _s3BucketTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-versioning
sbVersioningConfiguration :: Lens' S3Bucket (Maybe S3BucketVersioningConfiguration)
sbVersioningConfiguration = lens _s3BucketVersioningConfiguration (\s a -> s { _s3BucketVersioningConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-websiteconfiguration
sbWebsiteConfiguration :: Lens' S3Bucket (Maybe S3BucketWebsiteConfiguration)
sbWebsiteConfiguration = lens _s3BucketWebsiteConfiguration (\s a -> s { _s3BucketWebsiteConfiguration = a })
