module Stratosphere.SageMaker.ModelQualityJobDefinition.S3OutputProperty (
        S3OutputProperty(..), mkS3OutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputProperty
  = S3OutputProperty {localPath :: (Value Prelude.Text),
                      s3UploadMode :: (Prelude.Maybe (Value Prelude.Text)),
                      s3Uri :: (Value Prelude.Text)}
mkS3OutputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3OutputProperty
mkS3OutputProperty localPath s3Uri
  = S3OutputProperty
      {localPath = localPath, s3Uri = s3Uri,
       s3UploadMode = Prelude.Nothing}
instance ToResourceProperties S3OutputProperty where
  toResourceProperties S3OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.S3Output",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalPath" JSON..= localPath, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "S3UploadMode" Prelude.<$> s3UploadMode]))}
instance JSON.ToJSON S3OutputProperty where
  toJSON S3OutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalPath" JSON..= localPath, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "S3UploadMode" Prelude.<$> s3UploadMode])))
instance Property "LocalPath" S3OutputProperty where
  type PropertyType "LocalPath" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {localPath = newValue, ..}
instance Property "S3UploadMode" S3OutputProperty where
  type PropertyType "S3UploadMode" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {s3UploadMode = Prelude.pure newValue, ..}
instance Property "S3Uri" S3OutputProperty where
  type PropertyType "S3Uri" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {s3Uri = newValue, ..}