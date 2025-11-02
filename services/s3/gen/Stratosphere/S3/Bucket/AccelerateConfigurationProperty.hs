module Stratosphere.S3.Bucket.AccelerateConfigurationProperty (
        AccelerateConfigurationProperty(..),
        mkAccelerateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccelerateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html>
    AccelerateConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html#cfn-s3-bucket-accelerateconfiguration-accelerationstatus>
                                     accelerationStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccelerateConfigurationProperty ::
  Value Prelude.Text -> AccelerateConfigurationProperty
mkAccelerateConfigurationProperty accelerationStatus
  = AccelerateConfigurationProperty
      {haddock_workaround_ = (), accelerationStatus = accelerationStatus}
instance ToResourceProperties AccelerateConfigurationProperty where
  toResourceProperties AccelerateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.AccelerateConfiguration",
         supportsTags = Prelude.False,
         properties = ["AccelerationStatus" JSON..= accelerationStatus]}
instance JSON.ToJSON AccelerateConfigurationProperty where
  toJSON AccelerateConfigurationProperty {..}
    = JSON.object ["AccelerationStatus" JSON..= accelerationStatus]
instance Property "AccelerationStatus" AccelerateConfigurationProperty where
  type PropertyType "AccelerationStatus" AccelerateConfigurationProperty = Value Prelude.Text
  set newValue AccelerateConfigurationProperty {..}
    = AccelerateConfigurationProperty
        {accelerationStatus = newValue, ..}