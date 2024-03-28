module Stratosphere.DataSync.Task.ManifestConfigSourceS3Property (
        ManifestConfigSourceS3Property(..),
        mkManifestConfigSourceS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestConfigSourceS3Property
  = ManifestConfigSourceS3Property {bucketAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    manifestObjectPath :: (Prelude.Maybe (Value Prelude.Text)),
                                    manifestObjectVersionId :: (Prelude.Maybe (Value Prelude.Text)),
                                    s3BucketArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestConfigSourceS3Property :: ManifestConfigSourceS3Property
mkManifestConfigSourceS3Property
  = ManifestConfigSourceS3Property
      {bucketAccessRoleArn = Prelude.Nothing,
       manifestObjectPath = Prelude.Nothing,
       manifestObjectVersionId = Prelude.Nothing,
       s3BucketArn = Prelude.Nothing}
instance ToResourceProperties ManifestConfigSourceS3Property where
  toResourceProperties ManifestConfigSourceS3Property {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.ManifestConfigSourceS3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketAccessRoleArn" Prelude.<$> bucketAccessRoleArn,
                            (JSON..=) "ManifestObjectPath" Prelude.<$> manifestObjectPath,
                            (JSON..=) "ManifestObjectVersionId"
                              Prelude.<$> manifestObjectVersionId,
                            (JSON..=) "S3BucketArn" Prelude.<$> s3BucketArn])}
instance JSON.ToJSON ManifestConfigSourceS3Property where
  toJSON ManifestConfigSourceS3Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketAccessRoleArn" Prelude.<$> bucketAccessRoleArn,
               (JSON..=) "ManifestObjectPath" Prelude.<$> manifestObjectPath,
               (JSON..=) "ManifestObjectVersionId"
                 Prelude.<$> manifestObjectVersionId,
               (JSON..=) "S3BucketArn" Prelude.<$> s3BucketArn]))
instance Property "BucketAccessRoleArn" ManifestConfigSourceS3Property where
  type PropertyType "BucketAccessRoleArn" ManifestConfigSourceS3Property = Value Prelude.Text
  set newValue ManifestConfigSourceS3Property {..}
    = ManifestConfigSourceS3Property
        {bucketAccessRoleArn = Prelude.pure newValue, ..}
instance Property "ManifestObjectPath" ManifestConfigSourceS3Property where
  type PropertyType "ManifestObjectPath" ManifestConfigSourceS3Property = Value Prelude.Text
  set newValue ManifestConfigSourceS3Property {..}
    = ManifestConfigSourceS3Property
        {manifestObjectPath = Prelude.pure newValue, ..}
instance Property "ManifestObjectVersionId" ManifestConfigSourceS3Property where
  type PropertyType "ManifestObjectVersionId" ManifestConfigSourceS3Property = Value Prelude.Text
  set newValue ManifestConfigSourceS3Property {..}
    = ManifestConfigSourceS3Property
        {manifestObjectVersionId = Prelude.pure newValue, ..}
instance Property "S3BucketArn" ManifestConfigSourceS3Property where
  type PropertyType "S3BucketArn" ManifestConfigSourceS3Property = Value Prelude.Text
  set newValue ManifestConfigSourceS3Property {..}
    = ManifestConfigSourceS3Property
        {s3BucketArn = Prelude.pure newValue, ..}