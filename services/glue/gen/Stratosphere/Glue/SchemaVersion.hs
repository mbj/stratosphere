module Stratosphere.Glue.SchemaVersion (
        module Exports, SchemaVersion(..), mkSchemaVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.SchemaVersion.SchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaVersion
  = SchemaVersion {schema :: SchemaProperty,
                   schemaDefinition :: (Value Prelude.Text)}
mkSchemaVersion ::
  SchemaProperty -> Value Prelude.Text -> SchemaVersion
mkSchemaVersion schema schemaDefinition
  = SchemaVersion
      {schema = schema, schemaDefinition = schemaDefinition}
instance ToResourceProperties SchemaVersion where
  toResourceProperties SchemaVersion {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SchemaVersion",
         supportsTags = Prelude.False,
         properties = ["Schema" JSON..= schema,
                       "SchemaDefinition" JSON..= schemaDefinition]}
instance JSON.ToJSON SchemaVersion where
  toJSON SchemaVersion {..}
    = JSON.object
        ["Schema" JSON..= schema,
         "SchemaDefinition" JSON..= schemaDefinition]
instance Property "Schema" SchemaVersion where
  type PropertyType "Schema" SchemaVersion = SchemaProperty
  set newValue SchemaVersion {..}
    = SchemaVersion {schema = newValue, ..}
instance Property "SchemaDefinition" SchemaVersion where
  type PropertyType "SchemaDefinition" SchemaVersion = Value Prelude.Text
  set newValue SchemaVersion {..}
    = SchemaVersion {schemaDefinition = newValue, ..}