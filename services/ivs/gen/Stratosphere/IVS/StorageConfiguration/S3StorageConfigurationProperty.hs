module Stratosphere.IVS.StorageConfiguration.S3StorageConfigurationProperty (
        S3StorageConfigurationProperty(..),
        mkS3StorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3StorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-storageconfiguration-s3storageconfiguration.html>
    S3StorageConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-storageconfiguration-s3storageconfiguration.html#cfn-ivs-storageconfiguration-s3storageconfiguration-bucketname>
                                    bucketName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3StorageConfigurationProperty ::
  Value Prelude.Text -> S3StorageConfigurationProperty
mkS3StorageConfigurationProperty bucketName
  = S3StorageConfigurationProperty
      {haddock_workaround_ = (), bucketName = bucketName}
instance ToResourceProperties S3StorageConfigurationProperty where
  toResourceProperties S3StorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::StorageConfiguration.S3StorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName]}
instance JSON.ToJSON S3StorageConfigurationProperty where
  toJSON S3StorageConfigurationProperty {..}
    = JSON.object ["BucketName" JSON..= bucketName]
instance Property "BucketName" S3StorageConfigurationProperty where
  type PropertyType "BucketName" S3StorageConfigurationProperty = Value Prelude.Text
  set newValue S3StorageConfigurationProperty {..}
    = S3StorageConfigurationProperty {bucketName = newValue, ..}