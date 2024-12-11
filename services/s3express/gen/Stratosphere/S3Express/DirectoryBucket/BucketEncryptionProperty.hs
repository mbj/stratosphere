module Stratosphere.S3Express.DirectoryBucket.BucketEncryptionProperty (
        module Exports, BucketEncryptionProperty(..),
        mkBucketEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Express.DirectoryBucket.ServerSideEncryptionRuleProperty as Exports
import Stratosphere.ResourceProperties
data BucketEncryptionProperty
  = BucketEncryptionProperty {serverSideEncryptionConfiguration :: [ServerSideEncryptionRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucketEncryptionProperty ::
  [ServerSideEncryptionRuleProperty] -> BucketEncryptionProperty
mkBucketEncryptionProperty serverSideEncryptionConfiguration
  = BucketEncryptionProperty
      {serverSideEncryptionConfiguration = serverSideEncryptionConfiguration}
instance ToResourceProperties BucketEncryptionProperty where
  toResourceProperties BucketEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::DirectoryBucket.BucketEncryption",
         supportsTags = Prelude.False,
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