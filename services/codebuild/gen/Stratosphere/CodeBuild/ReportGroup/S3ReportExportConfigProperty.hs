module Stratosphere.CodeBuild.ReportGroup.S3ReportExportConfigProperty (
        S3ReportExportConfigProperty(..), mkS3ReportExportConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ReportExportConfigProperty
  = S3ReportExportConfigProperty {bucket :: (Value Prelude.Text),
                                  bucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                                  encryptionDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
                                  packaging :: (Prelude.Maybe (Value Prelude.Text)),
                                  path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ReportExportConfigProperty ::
  Value Prelude.Text -> S3ReportExportConfigProperty
mkS3ReportExportConfigProperty bucket
  = S3ReportExportConfigProperty
      {bucket = bucket, bucketOwner = Prelude.Nothing,
       encryptionDisabled = Prelude.Nothing,
       encryptionKey = Prelude.Nothing, packaging = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties S3ReportExportConfigProperty where
  toResourceProperties S3ReportExportConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::ReportGroup.S3ReportExportConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                               (JSON..=) "EncryptionDisabled" Prelude.<$> encryptionDisabled,
                               (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                               (JSON..=) "Packaging" Prelude.<$> packaging,
                               (JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON S3ReportExportConfigProperty where
  toJSON S3ReportExportConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes
                 [(JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                  (JSON..=) "EncryptionDisabled" Prelude.<$> encryptionDisabled,
                  (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                  (JSON..=) "Packaging" Prelude.<$> packaging,
                  (JSON..=) "Path" Prelude.<$> path])))
instance Property "Bucket" S3ReportExportConfigProperty where
  type PropertyType "Bucket" S3ReportExportConfigProperty = Value Prelude.Text
  set newValue S3ReportExportConfigProperty {..}
    = S3ReportExportConfigProperty {bucket = newValue, ..}
instance Property "BucketOwner" S3ReportExportConfigProperty where
  type PropertyType "BucketOwner" S3ReportExportConfigProperty = Value Prelude.Text
  set newValue S3ReportExportConfigProperty {..}
    = S3ReportExportConfigProperty
        {bucketOwner = Prelude.pure newValue, ..}
instance Property "EncryptionDisabled" S3ReportExportConfigProperty where
  type PropertyType "EncryptionDisabled" S3ReportExportConfigProperty = Value Prelude.Bool
  set newValue S3ReportExportConfigProperty {..}
    = S3ReportExportConfigProperty
        {encryptionDisabled = Prelude.pure newValue, ..}
instance Property "EncryptionKey" S3ReportExportConfigProperty where
  type PropertyType "EncryptionKey" S3ReportExportConfigProperty = Value Prelude.Text
  set newValue S3ReportExportConfigProperty {..}
    = S3ReportExportConfigProperty
        {encryptionKey = Prelude.pure newValue, ..}
instance Property "Packaging" S3ReportExportConfigProperty where
  type PropertyType "Packaging" S3ReportExportConfigProperty = Value Prelude.Text
  set newValue S3ReportExportConfigProperty {..}
    = S3ReportExportConfigProperty
        {packaging = Prelude.pure newValue, ..}
instance Property "Path" S3ReportExportConfigProperty where
  type PropertyType "Path" S3ReportExportConfigProperty = Value Prelude.Text
  set newValue S3ReportExportConfigProperty {..}
    = S3ReportExportConfigProperty {path = Prelude.pure newValue, ..}