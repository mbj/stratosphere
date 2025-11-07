module Stratosphere.QuickSight.Template.WaterfallChartAggregatedFieldWellsProperty (
        module Exports, WaterfallChartAggregatedFieldWellsProperty(..),
        mkWaterfallChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartaggregatedfieldwells.html>
    WaterfallChartAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartaggregatedfieldwells.html#cfn-quicksight-template-waterfallchartaggregatedfieldwells-breakdowns>
                                                breakdowns :: (Prelude.Maybe [DimensionFieldProperty]),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartaggregatedfieldwells.html#cfn-quicksight-template-waterfallchartaggregatedfieldwells-categories>
                                                categories :: (Prelude.Maybe [DimensionFieldProperty]),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartaggregatedfieldwells.html#cfn-quicksight-template-waterfallchartaggregatedfieldwells-values>
                                                values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartAggregatedFieldWellsProperty ::
  WaterfallChartAggregatedFieldWellsProperty
mkWaterfallChartAggregatedFieldWellsProperty
  = WaterfallChartAggregatedFieldWellsProperty
      {haddock_workaround_ = (), breakdowns = Prelude.Nothing,
       categories = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties WaterfallChartAggregatedFieldWellsProperty where
  toResourceProperties
    WaterfallChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.WaterfallChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Breakdowns" Prelude.<$> breakdowns,
                            (JSON..=) "Categories" Prelude.<$> categories,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON WaterfallChartAggregatedFieldWellsProperty where
  toJSON WaterfallChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Breakdowns" Prelude.<$> breakdowns,
               (JSON..=) "Categories" Prelude.<$> categories,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Breakdowns" WaterfallChartAggregatedFieldWellsProperty where
  type PropertyType "Breakdowns" WaterfallChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue WaterfallChartAggregatedFieldWellsProperty {..}
    = WaterfallChartAggregatedFieldWellsProperty
        {breakdowns = Prelude.pure newValue, ..}
instance Property "Categories" WaterfallChartAggregatedFieldWellsProperty where
  type PropertyType "Categories" WaterfallChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue WaterfallChartAggregatedFieldWellsProperty {..}
    = WaterfallChartAggregatedFieldWellsProperty
        {categories = Prelude.pure newValue, ..}
instance Property "Values" WaterfallChartAggregatedFieldWellsProperty where
  type PropertyType "Values" WaterfallChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue WaterfallChartAggregatedFieldWellsProperty {..}
    = WaterfallChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}