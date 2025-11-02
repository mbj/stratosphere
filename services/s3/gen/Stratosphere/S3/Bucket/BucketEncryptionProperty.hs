module Stratosphere.S3.Bucket.BucketEncryptionProperty (
        module Exports, BucketEncryptionProperty(..),
        mkBucketEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ServerSideEncryptionRuleProperty as Exports
import Stratosphere.ResourceProperties
data BucketEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html>
    BucketEncryptionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html#cfn-s3-bucket-bucketencryption-serversideencryptionconfiguration>
                              serverSideEncryptionConfiguration :: [ServerSideEncryptionRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucketEncryptionProperty ::
  [ServerSideEncryptionRuleProperty] -> BucketEncryptionProperty
mkBucketEncryptionProperty serverSideEncryptionConfiguration
  = BucketEncryptionProperty
      {haddock_workaround_ = (),
       serverSideEncryptionConfiguration = serverSideEncryptionConfiguration}
instance ToResourceProperties BucketEncryptionProperty where
  toResourceProperties BucketEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.BucketEncryption",
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
  set newValue BucketEncryptionProperty {..}
    = BucketEncryptionProperty
        {serverSideEncryptionConfiguration = newValue, ..}