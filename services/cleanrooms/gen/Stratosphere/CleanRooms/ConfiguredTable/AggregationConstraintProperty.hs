module Stratosphere.CleanRooms.ConfiguredTable.AggregationConstraintProperty (
        AggregationConstraintProperty(..), mkAggregationConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationConstraintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregationconstraint.html>
    AggregationConstraintProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregationconstraint.html#cfn-cleanrooms-configuredtable-aggregationconstraint-columnname>
                                   columnName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregationconstraint.html#cfn-cleanrooms-configuredtable-aggregationconstraint-minimum>
                                   minimum :: (Value Prelude.Double),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-aggregationconstraint.html#cfn-cleanrooms-configuredtable-aggregationconstraint-type>
                                   type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationConstraintProperty ::
  Value Prelude.Text
  -> Value Prelude.Double
     -> Value Prelude.Text -> AggregationConstraintProperty
mkAggregationConstraintProperty columnName minimum type'
  = AggregationConstraintProperty
      {haddock_workaround_ = (), columnName = columnName,
       minimum = minimum, type' = type'}
instance ToResourceProperties AggregationConstraintProperty where
  toResourceProperties AggregationConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AggregationConstraint",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "Minimum" JSON..= minimum, "Type" JSON..= type']}
instance JSON.ToJSON AggregationConstraintProperty where
  toJSON AggregationConstraintProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName, "Minimum" JSON..= minimum,
         "Type" JSON..= type']
instance Property "ColumnName" AggregationConstraintProperty where
  type PropertyType "ColumnName" AggregationConstraintProperty = Value Prelude.Text
  set newValue AggregationConstraintProperty {..}
    = AggregationConstraintProperty {columnName = newValue, ..}
instance Property "Minimum" AggregationConstraintProperty where
  type PropertyType "Minimum" AggregationConstraintProperty = Value Prelude.Double
  set newValue AggregationConstraintProperty {..}
    = AggregationConstraintProperty {minimum = newValue, ..}
instance Property "Type" AggregationConstraintProperty where
  type PropertyType "Type" AggregationConstraintProperty = Value Prelude.Text
  set newValue AggregationConstraintProperty {..}
    = AggregationConstraintProperty {type' = newValue, ..}