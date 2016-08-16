{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::S3::Bucket type creates an Amazon S3 bucket. You can set a
-- deletion policy for your bucket to control how AWS CloudFormation handles
-- the bucket when the stack is deleted. For Amazon S3 buckets, you can choose
-- to retain the bucket or to delete the bucket. For more information, see
-- DeletionPolicy Attribute.

module Stratosphere.Resources.Bucket where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag
import Stratosphere.ResourceProperties.S3CorsConfiguration
import Stratosphere.ResourceProperties.S3LifecycleConfiguration
import Stratosphere.ResourceProperties.S3LoggingConfiguration
import Stratosphere.ResourceProperties.S3NotificationConfiguration
import Stratosphere.ResourceProperties.S3ReplicationConfiguration
import Stratosphere.ResourceProperties.S3VersioningConfiguration
import Stratosphere.ResourceProperties.S3WebsiteConfiguration
import Stratosphere.Types

-- | Full data type definition for Bucket. See 'bucket' for a more convenient
-- constructor.
data Bucket =
  Bucket
  { _bucketAccessControl :: Maybe CannedACL
  , _bucketBucketName :: Maybe (Val Text)
  , _bucketCorsConfiguration :: Maybe S3CorsConfiguration
  , _bucketLifecycleConfiguration :: Maybe S3LifecycleConfiguration
  , _bucketLoggingConfiguration :: Maybe S3LoggingConfiguration
  , _bucketNotificationConfiguration :: Maybe S3NotificationConfiguration
  , _bucketReplicationConfiguration :: Maybe S3ReplicationConfiguration
  , _bucketTags :: Maybe [ResourceTag]
  , _bucketVersioningConfiguration :: Maybe S3VersioningConfiguration
  , _bucketWebsiteConfiguration :: Maybe S3WebsiteConfiguration
  } deriving (Show, Generic)

instance ToJSON Bucket where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

instance FromJSON Bucket where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

-- | Constructor for 'Bucket' containing required fields as arguments.
bucket
  :: Bucket
bucket  =
  Bucket
  { _bucketAccessControl = Nothing
  , _bucketBucketName = Nothing
  , _bucketCorsConfiguration = Nothing
  , _bucketLifecycleConfiguration = Nothing
  , _bucketLoggingConfiguration = Nothing
  , _bucketNotificationConfiguration = Nothing
  , _bucketReplicationConfiguration = Nothing
  , _bucketTags = Nothing
  , _bucketVersioningConfiguration = Nothing
  , _bucketWebsiteConfiguration = Nothing
  }

-- | A canned access control list (ACL) that grants predefined permissions to
-- the bucket. For more information about canned ACLs, see Canned ACLs in the
-- Amazon S3 documentation.
bAccessControl :: Lens' Bucket (Maybe CannedACL)
bAccessControl = lens _bucketAccessControl (\s a -> s { _bucketAccessControl = a })

-- | A name for the bucket. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the bucket name. For
-- more information, see Name Type. The bucket name must contain only
-- lowercase letters, numbers, periods (.), and dashes (-). Important If you
-- specify a name, you cannot do updates that require this resource to be
-- replaced. You can still do updates that require no or some interruption. If
-- you must replace the resource, specify a new name.
bBucketName :: Lens' Bucket (Maybe (Val Text))
bBucketName = lens _bucketBucketName (\s a -> s { _bucketBucketName = a })

-- | Rules that define cross-origin resource sharing of objects in this
-- bucket. For more information, see Enabling Cross-Origin Resource Sharing in
-- the Amazon Simple Storage Service Developer Guide.
bCorsConfiguration :: Lens' Bucket (Maybe S3CorsConfiguration)
bCorsConfiguration = lens _bucketCorsConfiguration (\s a -> s { _bucketCorsConfiguration = a })

-- | Rules that define how Amazon S3 manages objects during their lifetime.
-- For more information, see Object Lifecycle Management in the Amazon Simple
-- Storage Service Developer Guide.
bLifecycleConfiguration :: Lens' Bucket (Maybe S3LifecycleConfiguration)
bLifecycleConfiguration = lens _bucketLifecycleConfiguration (\s a -> s { _bucketLifecycleConfiguration = a })

-- | Settings that defines where logs are stored.
bLoggingConfiguration :: Lens' Bucket (Maybe S3LoggingConfiguration)
bLoggingConfiguration = lens _bucketLoggingConfiguration (\s a -> s { _bucketLoggingConfiguration = a })

-- | Configuration that defines how Amazon S3 handles bucket notifications.
bNotificationConfiguration :: Lens' Bucket (Maybe S3NotificationConfiguration)
bNotificationConfiguration = lens _bucketNotificationConfiguration (\s a -> s { _bucketNotificationConfiguration = a })

-- | Configuration for replicating objects in an S3 bucket. To enable
-- replication, you must also enable versioning by using the
-- VersioningConfiguration property. Amazon S3 can store replicated objects in
-- only one destination (S3 bucket). You cannot send replicated objects to
-- multiple S3 buckets.
bReplicationConfiguration :: Lens' Bucket (Maybe S3ReplicationConfiguration)
bReplicationConfiguration = lens _bucketReplicationConfiguration (\s a -> s { _bucketReplicationConfiguration = a })

-- | An arbitrary set of tags (key-value pairs) for this Amazon S3 bucket.
bTags :: Lens' Bucket (Maybe [ResourceTag])
bTags = lens _bucketTags (\s a -> s { _bucketTags = a })

-- | Enables multiple variants of all objects in this bucket. You might enable
-- versioning to prevent objects from being deleted or overwritten by mistake
-- or to archive objects so that you can retrieve previous versions of them.
bVersioningConfiguration :: Lens' Bucket (Maybe S3VersioningConfiguration)
bVersioningConfiguration = lens _bucketVersioningConfiguration (\s a -> s { _bucketVersioningConfiguration = a })

-- | Information used to configure the bucket as a static website. For more
-- information, see Hosting Websites on Amazon S3.
bWebsiteConfiguration :: Lens' Bucket (Maybe S3WebsiteConfiguration)
bWebsiteConfiguration = lens _bucketWebsiteConfiguration (\s a -> s { _bucketWebsiteConfiguration = a })