module Stratosphere.GameLift.Script.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {bucket :: (Value Prelude.Text),
                        key :: (Value Prelude.Text),
                        objectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                        roleArn :: (Value Prelude.Text)}
mkS3LocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucket key roleArn
  = S3LocationProperty
      {bucket = bucket, key = key, roleArn = roleArn,
       objectVersion = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Script.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion])))
instance Property "Bucket" S3LocationProperty where
  type PropertyType "Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucket = newValue, ..}
instance Property "Key" S3LocationProperty where
  type PropertyType "Key" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {key = newValue, ..}
instance Property "ObjectVersion" S3LocationProperty where
  type PropertyType "ObjectVersion" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {objectVersion = Prelude.pure newValue, ..}
instance Property "RoleArn" S3LocationProperty where
  type PropertyType "RoleArn" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {roleArn = newValue, ..}