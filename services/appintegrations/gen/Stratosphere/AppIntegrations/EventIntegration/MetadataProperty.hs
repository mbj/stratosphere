module Stratosphere.AppIntegrations.EventIntegration.MetadataProperty (
        MetadataProperty(..), mkMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataProperty
  = MetadataProperty {key :: (Value Prelude.Text),
                      value :: (Value Prelude.Text)}
mkMetadataProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetadataProperty
mkMetadataProperty key value
  = MetadataProperty {key = key, value = value}
instance ToResourceProperties MetadataProperty where
  toResourceProperties MetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::EventIntegration.Metadata",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON MetadataProperty where
  toJSON MetadataProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" MetadataProperty where
  type PropertyType "Key" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {key = newValue, ..}
instance Property "Value" MetadataProperty where
  type PropertyType "Value" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {value = newValue, ..}