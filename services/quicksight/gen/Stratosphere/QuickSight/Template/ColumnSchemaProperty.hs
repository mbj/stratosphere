module Stratosphere.QuickSight.Template.ColumnSchemaProperty (
        ColumnSchemaProperty(..), mkColumnSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnSchemaProperty
  = ColumnSchemaProperty {dataType :: (Prelude.Maybe (Value Prelude.Text)),
                          geographicRole :: (Prelude.Maybe (Value Prelude.Text)),
                          name :: (Prelude.Maybe (Value Prelude.Text))}
mkColumnSchemaProperty :: ColumnSchemaProperty
mkColumnSchemaProperty
  = ColumnSchemaProperty
      {dataType = Prelude.Nothing, geographicRole = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ColumnSchemaProperty where
  toResourceProperties ColumnSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnSchema",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataType" Prelude.<$> dataType,
                            (JSON..=) "GeographicRole" Prelude.<$> geographicRole,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ColumnSchemaProperty where
  toJSON ColumnSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataType" Prelude.<$> dataType,
               (JSON..=) "GeographicRole" Prelude.<$> geographicRole,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "DataType" ColumnSchemaProperty where
  type PropertyType "DataType" ColumnSchemaProperty = Value Prelude.Text
  set newValue ColumnSchemaProperty {..}
    = ColumnSchemaProperty {dataType = Prelude.pure newValue, ..}
instance Property "GeographicRole" ColumnSchemaProperty where
  type PropertyType "GeographicRole" ColumnSchemaProperty = Value Prelude.Text
  set newValue ColumnSchemaProperty {..}
    = ColumnSchemaProperty {geographicRole = Prelude.pure newValue, ..}
instance Property "Name" ColumnSchemaProperty where
  type PropertyType "Name" ColumnSchemaProperty = Value Prelude.Text
  set newValue ColumnSchemaProperty {..}
    = ColumnSchemaProperty {name = Prelude.pure newValue, ..}