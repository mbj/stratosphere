module Stratosphere.Glue.SchemaVersion.SchemaProperty (
        SchemaProperty(..), mkSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaProperty
  = SchemaProperty {registryName :: (Prelude.Maybe (Value Prelude.Text)),
                    schemaArn :: (Prelude.Maybe (Value Prelude.Text)),
                    schemaName :: (Prelude.Maybe (Value Prelude.Text))}
mkSchemaProperty :: SchemaProperty
mkSchemaProperty
  = SchemaProperty
      {registryName = Prelude.Nothing, schemaArn = Prelude.Nothing,
       schemaName = Prelude.Nothing}
instance ToResourceProperties SchemaProperty where
  toResourceProperties SchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SchemaVersion.Schema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegistryName" Prelude.<$> registryName,
                            (JSON..=) "SchemaArn" Prelude.<$> schemaArn,
                            (JSON..=) "SchemaName" Prelude.<$> schemaName])}
instance JSON.ToJSON SchemaProperty where
  toJSON SchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegistryName" Prelude.<$> registryName,
               (JSON..=) "SchemaArn" Prelude.<$> schemaArn,
               (JSON..=) "SchemaName" Prelude.<$> schemaName]))
instance Property "RegistryName" SchemaProperty where
  type PropertyType "RegistryName" SchemaProperty = Value Prelude.Text
  set newValue SchemaProperty {..}
    = SchemaProperty {registryName = Prelude.pure newValue, ..}
instance Property "SchemaArn" SchemaProperty where
  type PropertyType "SchemaArn" SchemaProperty = Value Prelude.Text
  set newValue SchemaProperty {..}
    = SchemaProperty {schemaArn = Prelude.pure newValue, ..}
instance Property "SchemaName" SchemaProperty where
  type PropertyType "SchemaName" SchemaProperty = Value Prelude.Text
  set newValue SchemaProperty {..}
    = SchemaProperty {schemaName = Prelude.pure newValue, ..}