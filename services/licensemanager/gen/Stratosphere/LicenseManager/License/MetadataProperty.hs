module Stratosphere.LicenseManager.License.MetadataProperty (
        MetadataProperty(..), mkMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataProperty
  = MetadataProperty {name :: (Value Prelude.Text),
                      value :: (Value Prelude.Text)}
mkMetadataProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetadataProperty
mkMetadataProperty name value
  = MetadataProperty {name = name, value = value}
instance ToResourceProperties MetadataProperty where
  toResourceProperties MetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.Metadata",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON MetadataProperty where
  toJSON MetadataProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" MetadataProperty where
  type PropertyType "Name" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {name = newValue, ..}
instance Property "Value" MetadataProperty where
  type PropertyType "Value" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {value = newValue, ..}