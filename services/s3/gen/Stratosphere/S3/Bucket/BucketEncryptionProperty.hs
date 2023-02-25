module Stratosphere.S3.Bucket.BucketEncryptionProperty (
        module Exports, BucketEncryptionProperty(..),
        mkBucketEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ServerSideEncryptionRuleProperty as Exports
import Stratosphere.ResourceProperties
data BucketEncryptionProperty
  = BucketEncryptionProperty {serverSideEncryptionConfiguration :: [ServerSideEncryptionRuleProperty]}
mkBucketEncryptionProperty ::
  [ServerSideEncryptionRuleProperty] -> BucketEncryptionProperty
mkBucketEncryptionProperty serverSideEncryptionConfiguration
  = BucketEncryptionProperty
      {serverSideEncryptionConfiguration = serverSideEncryptionConfiguration}
instance ToResourceProperties BucketEncryptionProperty where
  toResourceProperties BucketEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.BucketEncryption",
         properties = ["ServerSideEncryptionConfiguration"
                         JSON..= serverSideEncryptionConfiguration]}
instance JSON.ToJSON BucketEncryptionProperty where
  toJSON BucketEncryptionProperty {..}
    = JSON.object
        ["ServerSideEncryptionConfiguration"
           JSON..= serverSideEncryptionConfiguration]
instance Property "ServerSideEncryptionConfiguration" BucketEncryptionProperty where
  type PropertyType "ServerSideEncryptionConfiguration" BucketEncryptionProperty = [ServerSideEncryptionRuleProperty]
  set newValue BucketEncryptionProperty {}
    = BucketEncryptionProperty
        {serverSideEncryptionConfiguration = newValue, ..}