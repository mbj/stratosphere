module Stratosphere.Glue.SchemaVersionMetadata (
        SchemaVersionMetadata(..), mkSchemaVersionMetadata
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaVersionMetadata
  = SchemaVersionMetadata {key :: (Value Prelude.Text),
                           schemaVersionId :: (Value Prelude.Text),
                           value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaVersionMetadata ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SchemaVersionMetadata
mkSchemaVersionMetadata key schemaVersionId value
  = SchemaVersionMetadata
      {key = key, schemaVersionId = schemaVersionId, value = value}
instance ToResourceProperties SchemaVersionMetadata where
  toResourceProperties SchemaVersionMetadata {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SchemaVersionMetadata",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key,
                       "SchemaVersionId" JSON..= schemaVersionId, "Value" JSON..= value]}
instance JSON.ToJSON SchemaVersionMetadata where
  toJSON SchemaVersionMetadata {..}
    = JSON.object
        ["Key" JSON..= key, "SchemaVersionId" JSON..= schemaVersionId,
         "Value" JSON..= value]
instance Property "Key" SchemaVersionMetadata where
  type PropertyType "Key" SchemaVersionMetadata = Value Prelude.Text
  set newValue SchemaVersionMetadata {..}
    = SchemaVersionMetadata {key = newValue, ..}
instance Property "SchemaVersionId" SchemaVersionMetadata where
  type PropertyType "SchemaVersionId" SchemaVersionMetadata = Value Prelude.Text
  set newValue SchemaVersionMetadata {..}
    = SchemaVersionMetadata {schemaVersionId = newValue, ..}
instance Property "Value" SchemaVersionMetadata where
  type PropertyType "Value" SchemaVersionMetadata = Value Prelude.Text
  set newValue SchemaVersionMetadata {..}
    = SchemaVersionMetadata {value = newValue, ..}