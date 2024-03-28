module Stratosphere.CleanRooms.ConfiguredTable.AggregateColumnProperty (
        AggregateColumnProperty(..), mkAggregateColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregateColumnProperty
  = AggregateColumnProperty {columnNames :: (ValueList Prelude.Text),
                             function :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregateColumnProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> AggregateColumnProperty
mkAggregateColumnProperty columnNames function
  = AggregateColumnProperty
      {columnNames = columnNames, function = function}
instance ToResourceProperties AggregateColumnProperty where
  toResourceProperties AggregateColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AggregateColumn",
         supportsTags = Prelude.False,
         properties = ["ColumnNames" JSON..= columnNames,
                       "Function" JSON..= function]}
instance JSON.ToJSON AggregateColumnProperty where
  toJSON AggregateColumnProperty {..}
    = JSON.object
        ["ColumnNames" JSON..= columnNames, "Function" JSON..= function]
instance Property "ColumnNames" AggregateColumnProperty where
  type PropertyType "ColumnNames" AggregateColumnProperty = ValueList Prelude.Text
  set newValue AggregateColumnProperty {..}
    = AggregateColumnProperty {columnNames = newValue, ..}
instance Property "Function" AggregateColumnProperty where
  type PropertyType "Function" AggregateColumnProperty = Value Prelude.Text
  set newValue AggregateColumnProperty {..}
    = AggregateColumnProperty {function = newValue, ..}