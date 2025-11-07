module Stratosphere.QuickSight.Template.TableAggregatedFieldWellsProperty (
        module Exports, TableAggregatedFieldWellsProperty(..),
        mkTableAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data TableAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableaggregatedfieldwells.html>
    TableAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableaggregatedfieldwells.html#cfn-quicksight-template-tableaggregatedfieldwells-groupby>
                                       groupBy :: (Prelude.Maybe [DimensionFieldProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableaggregatedfieldwells.html#cfn-quicksight-template-tableaggregatedfieldwells-values>
                                       values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableAggregatedFieldWellsProperty ::
  TableAggregatedFieldWellsProperty
mkTableAggregatedFieldWellsProperty
  = TableAggregatedFieldWellsProperty
      {haddock_workaround_ = (), groupBy = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties TableAggregatedFieldWellsProperty where
  toResourceProperties TableAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupBy" Prelude.<$> groupBy,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TableAggregatedFieldWellsProperty where
  toJSON TableAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupBy" Prelude.<$> groupBy,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "GroupBy" TableAggregatedFieldWellsProperty where
  type PropertyType "GroupBy" TableAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue TableAggregatedFieldWellsProperty {..}
    = TableAggregatedFieldWellsProperty
        {groupBy = Prelude.pure newValue, ..}
instance Property "Values" TableAggregatedFieldWellsProperty where
  type PropertyType "Values" TableAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue TableAggregatedFieldWellsProperty {..}
    = TableAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}