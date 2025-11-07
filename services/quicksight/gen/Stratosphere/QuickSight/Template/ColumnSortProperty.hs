module Stratosphere.QuickSight.Template.ColumnSortProperty (
        module Exports, ColumnSortProperty(..), mkColumnSortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnSortProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnsort.html>
    ColumnSortProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnsort.html#cfn-quicksight-template-columnsort-aggregationfunction>
                        aggregationFunction :: (Prelude.Maybe AggregationFunctionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnsort.html#cfn-quicksight-template-columnsort-direction>
                        direction :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnsort.html#cfn-quicksight-template-columnsort-sortby>
                        sortBy :: ColumnIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnSortProperty ::
  Value Prelude.Text
  -> ColumnIdentifierProperty -> ColumnSortProperty
mkColumnSortProperty direction sortBy
  = ColumnSortProperty
      {haddock_workaround_ = (), direction = direction, sortBy = sortBy,
       aggregationFunction = Prelude.Nothing}
instance ToResourceProperties ColumnSortProperty where
  toResourceProperties ColumnSortProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnSort",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Direction" JSON..= direction, "SortBy" JSON..= sortBy]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction"
                                 Prelude.<$> aggregationFunction]))}
instance JSON.ToJSON ColumnSortProperty where
  toJSON ColumnSortProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Direction" JSON..= direction, "SortBy" JSON..= sortBy]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction"
                    Prelude.<$> aggregationFunction])))
instance Property "AggregationFunction" ColumnSortProperty where
  type PropertyType "AggregationFunction" ColumnSortProperty = AggregationFunctionProperty
  set newValue ColumnSortProperty {..}
    = ColumnSortProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Direction" ColumnSortProperty where
  type PropertyType "Direction" ColumnSortProperty = Value Prelude.Text
  set newValue ColumnSortProperty {..}
    = ColumnSortProperty {direction = newValue, ..}
instance Property "SortBy" ColumnSortProperty where
  type PropertyType "SortBy" ColumnSortProperty = ColumnIdentifierProperty
  set newValue ColumnSortProperty {..}
    = ColumnSortProperty {sortBy = newValue, ..}