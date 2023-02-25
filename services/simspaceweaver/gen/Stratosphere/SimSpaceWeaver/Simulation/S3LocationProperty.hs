module Stratosphere.SimSpaceWeaver.Simulation.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {bucketName :: (Value Prelude.Text),
                        objectKey :: (Value Prelude.Text)}
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucketName objectKey
  = S3LocationProperty
      {bucketName = bucketName, objectKey = objectKey}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SimSpaceWeaver::Simulation.S3Location",
         properties = ["BucketName" JSON..= bucketName,
                       "ObjectKey" JSON..= objectKey]}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName, "ObjectKey" JSON..= objectKey]
instance Property "BucketName" S3LocationProperty where
  type PropertyType "BucketName" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucketName = newValue, ..}
instance Property "ObjectKey" S3LocationProperty where
  type PropertyType "ObjectKey" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {objectKey = newValue, ..}