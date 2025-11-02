module Stratosphere.CustomerProfiles.Domain.S3ExportingConfigProperty (
        S3ExportingConfigProperty(..), mkS3ExportingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ExportingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-s3exportingconfig.html>
    S3ExportingConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-s3exportingconfig.html#cfn-customerprofiles-domain-s3exportingconfig-s3bucketname>
                               s3BucketName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-s3exportingconfig.html#cfn-customerprofiles-domain-s3exportingconfig-s3keyname>
                               s3KeyName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ExportingConfigProperty ::
  Value Prelude.Text -> S3ExportingConfigProperty
mkS3ExportingConfigProperty s3BucketName
  = S3ExportingConfigProperty
      {haddock_workaround_ = (), s3BucketName = s3BucketName,
       s3KeyName = Prelude.Nothing}
instance ToResourceProperties S3ExportingConfigProperty where
  toResourceProperties S3ExportingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.S3ExportingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3BucketName" JSON..= s3BucketName]
                           (Prelude.catMaybes [(JSON..=) "S3KeyName" Prelude.<$> s3KeyName]))}
instance JSON.ToJSON S3ExportingConfigProperty where
  toJSON S3ExportingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3BucketName" JSON..= s3BucketName]
              (Prelude.catMaybes [(JSON..=) "S3KeyName" Prelude.<$> s3KeyName])))
instance Property "S3BucketName" S3ExportingConfigProperty where
  type PropertyType "S3BucketName" S3ExportingConfigProperty = Value Prelude.Text
  set newValue S3ExportingConfigProperty {..}
    = S3ExportingConfigProperty {s3BucketName = newValue, ..}
instance Property "S3KeyName" S3ExportingConfigProperty where
  type PropertyType "S3KeyName" S3ExportingConfigProperty = Value Prelude.Text
  set newValue S3ExportingConfigProperty {..}
    = S3ExportingConfigProperty {s3KeyName = Prelude.pure newValue, ..}