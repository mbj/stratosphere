module Stratosphere.IoTAnalytics.Datastore.SchemaDefinitionProperty (
        module Exports, SchemaDefinitionProperty(..),
        mkSchemaDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.ColumnProperty as Exports
import Stratosphere.ResourceProperties
data SchemaDefinitionProperty
  = SchemaDefinitionProperty {columns :: (Prelude.Maybe [ColumnProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaDefinitionProperty :: SchemaDefinitionProperty
mkSchemaDefinitionProperty
  = SchemaDefinitionProperty {columns = Prelude.Nothing}
instance ToResourceProperties SchemaDefinitionProperty where
  toResourceProperties SchemaDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.SchemaDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Columns" Prelude.<$> columns])}
instance JSON.ToJSON SchemaDefinitionProperty where
  toJSON SchemaDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Columns" Prelude.<$> columns]))
instance Property "Columns" SchemaDefinitionProperty where
  type PropertyType "Columns" SchemaDefinitionProperty = [ColumnProperty]
  set newValue SchemaDefinitionProperty {}
    = SchemaDefinitionProperty {columns = Prelude.pure newValue, ..}