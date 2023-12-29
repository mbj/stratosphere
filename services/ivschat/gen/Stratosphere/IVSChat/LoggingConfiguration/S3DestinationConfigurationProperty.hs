module Stratosphere.IVSChat.LoggingConfiguration.S3DestinationConfigurationProperty (
        S3DestinationConfigurationProperty(..),
        mkS3DestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationConfigurationProperty
  = S3DestinationConfigurationProperty {bucketName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DestinationConfigurationProperty ::
  Value Prelude.Text -> S3DestinationConfigurationProperty
mkS3DestinationConfigurationProperty bucketName
  = S3DestinationConfigurationProperty {bucketName = bucketName}
instance ToResourceProperties S3DestinationConfigurationProperty where
  toResourceProperties S3DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::LoggingConfiguration.S3DestinationConfiguration",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName]}
instance JSON.ToJSON S3DestinationConfigurationProperty where
  toJSON S3DestinationConfigurationProperty {..}
    = JSON.object ["BucketName" JSON..= bucketName]
instance Property "BucketName" S3DestinationConfigurationProperty where
  type PropertyType "BucketName" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {}
    = S3DestinationConfigurationProperty {bucketName = newValue, ..}