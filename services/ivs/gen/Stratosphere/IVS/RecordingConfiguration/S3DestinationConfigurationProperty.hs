module Stratosphere.IVS.RecordingConfiguration.S3DestinationConfigurationProperty (
        S3DestinationConfigurationProperty(..),
        mkS3DestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-s3destinationconfiguration.html>
    S3DestinationConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-s3destinationconfiguration.html#cfn-ivs-recordingconfiguration-s3destinationconfiguration-bucketname>
                                        bucketName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DestinationConfigurationProperty ::
  Value Prelude.Text -> S3DestinationConfigurationProperty
mkS3DestinationConfigurationProperty bucketName
  = S3DestinationConfigurationProperty
      {haddock_workaround_ = (), bucketName = bucketName}
instance ToResourceProperties S3DestinationConfigurationProperty where
  toResourceProperties S3DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration.S3DestinationConfiguration",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName]}
instance JSON.ToJSON S3DestinationConfigurationProperty where
  toJSON S3DestinationConfigurationProperty {..}
    = JSON.object ["BucketName" JSON..= bucketName]
instance Property "BucketName" S3DestinationConfigurationProperty where
  type PropertyType "BucketName" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty {bucketName = newValue, ..}