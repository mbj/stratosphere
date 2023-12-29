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
  = VersioningConfigurationProperty {status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVersioningConfigurationProperty ::
  Value Prelude.Text -> VersioningConfigurationProperty
mkVersioningConfigurationProperty status
  = VersioningConfigurationProperty {status = status}
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
  set newValue VersioningConfigurationProperty {}
    = VersioningConfigurationProperty {status = newValue, ..}