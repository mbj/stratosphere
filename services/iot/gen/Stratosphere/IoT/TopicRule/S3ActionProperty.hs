module Stratosphere.IoT.TopicRule.S3ActionProperty (
        S3ActionProperty(..), mkS3ActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ActionProperty
  = S3ActionProperty {bucketName :: (Value Prelude.Text),
                      cannedAcl :: (Prelude.Maybe (Value Prelude.Text)),
                      key :: (Value Prelude.Text),
                      roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> S3ActionProperty
mkS3ActionProperty bucketName key roleArn
  = S3ActionProperty
      {bucketName = bucketName, key = key, roleArn = roleArn,
       cannedAcl = Prelude.Nothing}
instance ToResourceProperties S3ActionProperty where
  toResourceProperties S3ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.S3Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName, "Key" JSON..= key,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl]))}
instance JSON.ToJSON S3ActionProperty where
  toJSON S3ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName, "Key" JSON..= key,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl])))
instance Property "BucketName" S3ActionProperty where
  type PropertyType "BucketName" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {bucketName = newValue, ..}
instance Property "CannedAcl" S3ActionProperty where
  type PropertyType "CannedAcl" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {cannedAcl = Prelude.pure newValue, ..}
instance Property "Key" S3ActionProperty where
  type PropertyType "Key" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {key = newValue, ..}
instance Property "RoleArn" S3ActionProperty where
  type PropertyType "RoleArn" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {roleArn = newValue, ..}