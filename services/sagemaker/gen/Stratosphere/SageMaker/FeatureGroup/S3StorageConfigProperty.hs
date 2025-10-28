module Stratosphere.SageMaker.FeatureGroup.S3StorageConfigProperty (
        S3StorageConfigProperty(..), mkS3StorageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3StorageConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-s3storageconfig.html>
    S3StorageConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-s3storageconfig.html#cfn-sagemaker-featuregroup-s3storageconfig-kmskeyid>
                             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-s3storageconfig.html#cfn-sagemaker-featuregroup-s3storageconfig-s3uri>
                             s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3StorageConfigProperty ::
  Value Prelude.Text -> S3StorageConfigProperty
mkS3StorageConfigProperty s3Uri
  = S3StorageConfigProperty
      {haddock_workaround_ = (), s3Uri = s3Uri,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties S3StorageConfigProperty where
  toResourceProperties S3StorageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.S3StorageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON S3StorageConfigProperty where
  toJSON S3StorageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" S3StorageConfigProperty where
  type PropertyType "KmsKeyId" S3StorageConfigProperty = Value Prelude.Text
  set newValue S3StorageConfigProperty {..}
    = S3StorageConfigProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "S3Uri" S3StorageConfigProperty where
  type PropertyType "S3Uri" S3StorageConfigProperty = Value Prelude.Text
  set newValue S3StorageConfigProperty {..}
    = S3StorageConfigProperty {s3Uri = newValue, ..}