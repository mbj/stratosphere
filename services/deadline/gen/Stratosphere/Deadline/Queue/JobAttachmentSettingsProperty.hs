module Stratosphere.Deadline.Queue.JobAttachmentSettingsProperty (
        JobAttachmentSettingsProperty(..), mkJobAttachmentSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobAttachmentSettingsProperty
  = JobAttachmentSettingsProperty {rootPrefix :: (Value Prelude.Text),
                                   s3BucketName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobAttachmentSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> JobAttachmentSettingsProperty
mkJobAttachmentSettingsProperty rootPrefix s3BucketName
  = JobAttachmentSettingsProperty
      {rootPrefix = rootPrefix, s3BucketName = s3BucketName}
instance ToResourceProperties JobAttachmentSettingsProperty where
  toResourceProperties JobAttachmentSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Queue.JobAttachmentSettings",
         supportsTags = Prelude.False,
         properties = ["RootPrefix" JSON..= rootPrefix,
                       "S3BucketName" JSON..= s3BucketName]}
instance JSON.ToJSON JobAttachmentSettingsProperty where
  toJSON JobAttachmentSettingsProperty {..}
    = JSON.object
        ["RootPrefix" JSON..= rootPrefix,
         "S3BucketName" JSON..= s3BucketName]
instance Property "RootPrefix" JobAttachmentSettingsProperty where
  type PropertyType "RootPrefix" JobAttachmentSettingsProperty = Value Prelude.Text
  set newValue JobAttachmentSettingsProperty {..}
    = JobAttachmentSettingsProperty {rootPrefix = newValue, ..}
instance Property "S3BucketName" JobAttachmentSettingsProperty where
  type PropertyType "S3BucketName" JobAttachmentSettingsProperty = Value Prelude.Text
  set newValue JobAttachmentSettingsProperty {..}
    = JobAttachmentSettingsProperty {s3BucketName = newValue, ..}