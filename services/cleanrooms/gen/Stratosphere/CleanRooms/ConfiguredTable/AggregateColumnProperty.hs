module Stratosphere.CleanRooms.ConfiguredTable.AggregateColumnProperty (
        AggregateColumnProperty(..), mkAggregateColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregateColumnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregatecolumn.html>
    AggregateColumnProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregatecolumn.html#cfn-cleanrooms-configuredtable-aggregatecolumn-columnnames>
                             columnNames :: (ValueList Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregatecolumn.html#cfn-cleanrooms-configuredtable-aggregatecolumn-function>
                             function :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregateColumnProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> AggregateColumnProperty
mkAggregateColumnProperty columnNames function
  = AggregateColumnProperty
      {haddock_workaround_ = (), columnNames = columnNames,
       function = function}
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