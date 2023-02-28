module Stratosphere.QuickSight.Template.ColumnGroupColumnSchemaProperty (
        ColumnGroupColumnSchemaProperty(..),
        mkColumnGroupColumnSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnGroupColumnSchemaProperty
  = ColumnGroupColumnSchemaProperty {name :: (Prelude.Maybe (Value Prelude.Text))}
mkColumnGroupColumnSchemaProperty ::
  ColumnGroupColumnSchemaProperty
mkColumnGroupColumnSchemaProperty
  = ColumnGroupColumnSchemaProperty {name = Prelude.Nothing}
instance ToResourceProperties ColumnGroupColumnSchemaProperty where
  toResourceProperties ColumnGroupColumnSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnGroupColumnSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ColumnGroupColumnSchemaProperty where
  toJSON ColumnGroupColumnSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" ColumnGroupColumnSchemaProperty where
  type PropertyType "Name" ColumnGroupColumnSchemaProperty = Value Prelude.Text
  set newValue ColumnGroupColumnSchemaProperty {}
    = ColumnGroupColumnSchemaProperty
        {name = Prelude.pure newValue, ..}