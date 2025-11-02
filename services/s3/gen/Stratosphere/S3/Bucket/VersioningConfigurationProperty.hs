module Stratosphere.S3.Bucket.VersioningConfigurationProperty (
        VersioningConfigurationProperty(..),
        mkVersioningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VersioningConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfiguration.html>
    VersioningConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfiguration.html#cfn-s3-bucket-versioningconfiguration-status>
                                     status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVersioningConfigurationProperty ::
  Value Prelude.Text -> VersioningConfigurationProperty
mkVersioningConfigurationProperty status
  = VersioningConfigurationProperty
      {haddock_workaround_ = (), status = status}
instance ToResourceProperties VersioningConfigurationProperty where
  toResourceProperties VersioningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.VersioningConfiguration",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status]}
instance JSON.ToJSON VersioningConfigurationProperty where
  toJSON VersioningConfigurationProperty {..}
    = JSON.object ["Status" JSON..= status]
instance Property "Status" VersioningConfigurationProperty where
  type PropertyType "Status" VersioningConfigurationProperty = Value Prelude.Text
  set newValue VersioningConfigurationProperty {..}
    = VersioningConfigurationProperty {status = newValue, ..}