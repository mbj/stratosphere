module Stratosphere.DMS.Endpoint.NeptuneSettingsProperty (
        NeptuneSettingsProperty(..), mkNeptuneSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NeptuneSettingsProperty
  = NeptuneSettingsProperty {errorRetryDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                             iamAuthEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                             maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                             maxRetryCount :: (Prelude.Maybe (Value Prelude.Integer)),
                             s3BucketFolder :: (Prelude.Maybe (Value Prelude.Text)),
                             s3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                             serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkNeptuneSettingsProperty :: NeptuneSettingsProperty
mkNeptuneSettingsProperty
  = NeptuneSettingsProperty
      {errorRetryDuration = Prelude.Nothing,
       iamAuthEnabled = Prelude.Nothing, maxFileSize = Prelude.Nothing,
       maxRetryCount = Prelude.Nothing, s3BucketFolder = Prelude.Nothing,
       s3BucketName = Prelude.Nothing,
       serviceAccessRoleArn = Prelude.Nothing}
instance ToResourceProperties NeptuneSettingsProperty where
  toResourceProperties NeptuneSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.NeptuneSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ErrorRetryDuration" Prelude.<$> errorRetryDuration,
                            (JSON..=) "IamAuthEnabled" Prelude.<$> iamAuthEnabled,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "MaxRetryCount" Prelude.<$> maxRetryCount,
                            (JSON..=) "S3BucketFolder" Prelude.<$> s3BucketFolder,
                            (JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
                            (JSON..=) "ServiceAccessRoleArn"
                              Prelude.<$> serviceAccessRoleArn])}
instance JSON.ToJSON NeptuneSettingsProperty where
  toJSON NeptuneSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ErrorRetryDuration" Prelude.<$> errorRetryDuration,
               (JSON..=) "IamAuthEnabled" Prelude.<$> iamAuthEnabled,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "MaxRetryCount" Prelude.<$> maxRetryCount,
               (JSON..=) "S3BucketFolder" Prelude.<$> s3BucketFolder,
               (JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
               (JSON..=) "ServiceAccessRoleArn"
                 Prelude.<$> serviceAccessRoleArn]))
instance Property "ErrorRetryDuration" NeptuneSettingsProperty where
  type PropertyType "ErrorRetryDuration" NeptuneSettingsProperty = Value Prelude.Integer
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty
        {errorRetryDuration = Prelude.pure newValue, ..}
instance Property "IamAuthEnabled" NeptuneSettingsProperty where
  type PropertyType "IamAuthEnabled" NeptuneSettingsProperty = Value Prelude.Bool
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty
        {iamAuthEnabled = Prelude.pure newValue, ..}
instance Property "MaxFileSize" NeptuneSettingsProperty where
  type PropertyType "MaxFileSize" NeptuneSettingsProperty = Value Prelude.Integer
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty {maxFileSize = Prelude.pure newValue, ..}
instance Property "MaxRetryCount" NeptuneSettingsProperty where
  type PropertyType "MaxRetryCount" NeptuneSettingsProperty = Value Prelude.Integer
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty
        {maxRetryCount = Prelude.pure newValue, ..}
instance Property "S3BucketFolder" NeptuneSettingsProperty where
  type PropertyType "S3BucketFolder" NeptuneSettingsProperty = Value Prelude.Text
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty
        {s3BucketFolder = Prelude.pure newValue, ..}
instance Property "S3BucketName" NeptuneSettingsProperty where
  type PropertyType "S3BucketName" NeptuneSettingsProperty = Value Prelude.Text
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty
        {s3BucketName = Prelude.pure newValue, ..}
instance Property "ServiceAccessRoleArn" NeptuneSettingsProperty where
  type PropertyType "ServiceAccessRoleArn" NeptuneSettingsProperty = Value Prelude.Text
  set newValue NeptuneSettingsProperty {..}
    = NeptuneSettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}