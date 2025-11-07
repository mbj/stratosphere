module Stratosphere.QuickSight.Dashboard.FunnelChartAggregatedFieldWellsProperty (
        module Exports, FunnelChartAggregatedFieldWellsProperty(..),
        mkFunnelChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartaggregatedfieldwells.html>
    FunnelChartAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartaggregatedfieldwells.html#cfn-quicksight-dashboard-funnelchartaggregatedfieldwells-category>
                                             category :: (Prelude.Maybe [DimensionFieldProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartaggregatedfieldwells.html#cfn-quicksight-dashboard-funnelchartaggregatedfieldwells-values>
                                             values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartAggregatedFieldWellsProperty ::
  FunnelChartAggregatedFieldWellsProperty
mkFunnelChartAggregatedFieldWellsProperty
  = FunnelChartAggregatedFieldWellsProperty
      {haddock_workaround_ = (), category = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties FunnelChartAggregatedFieldWellsProperty where
  toResourceProperties FunnelChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FunnelChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON FunnelChartAggregatedFieldWellsProperty where
  toJSON FunnelChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Category" FunnelChartAggregatedFieldWellsProperty where
  type PropertyType "Category" FunnelChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue FunnelChartAggregatedFieldWellsProperty {..}
    = FunnelChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Values" FunnelChartAggregatedFieldWellsProperty where
  type PropertyType "Values" FunnelChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue FunnelChartAggregatedFieldWellsProperty {..}
    = FunnelChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}