module Stratosphere.CleanRoomsML.TrainingDataset.ColumnSchemaProperty (
        ColumnSchemaProperty(..), mkColumnSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnSchemaProperty
  = ColumnSchemaProperty {columnName :: (Value Prelude.Text),
                          columnTypes :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnSchemaProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ColumnSchemaProperty
mkColumnSchemaProperty columnName columnTypes
  = ColumnSchemaProperty
      {columnName = columnName, columnTypes = columnTypes}
instance ToResourceProperties ColumnSchemaProperty where
  toResourceProperties ColumnSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRoomsML::TrainingDataset.ColumnSchema",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "ColumnTypes" JSON..= columnTypes]}
instance JSON.ToJSON ColumnSchemaProperty where
  toJSON ColumnSchemaProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName,
         "ColumnTypes" JSON..= columnTypes]
instance Property "ColumnName" ColumnSchemaProperty where
  type PropertyType "ColumnName" ColumnSchemaProperty = Value Prelude.Text
  set newValue ColumnSchemaProperty {..}
    = ColumnSchemaProperty {columnName = newValue, ..}
instance Property "ColumnTypes" ColumnSchemaProperty where
  type PropertyType "ColumnTypes" ColumnSchemaProperty = ValueList Prelude.Text
  set newValue ColumnSchemaProperty {..}
    = ColumnSchemaProperty {columnTypes = newValue, ..}