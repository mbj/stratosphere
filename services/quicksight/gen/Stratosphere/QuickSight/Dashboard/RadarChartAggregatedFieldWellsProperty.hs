module Stratosphere.QuickSight.Dashboard.RadarChartAggregatedFieldWellsProperty (
        module Exports, RadarChartAggregatedFieldWellsProperty(..),
        mkRadarChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartaggregatedfieldwells.html>
    RadarChartAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartaggregatedfieldwells.html#cfn-quicksight-dashboard-radarchartaggregatedfieldwells-category>
                                            category :: (Prelude.Maybe [DimensionFieldProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartaggregatedfieldwells.html#cfn-quicksight-dashboard-radarchartaggregatedfieldwells-color>
                                            color :: (Prelude.Maybe [DimensionFieldProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartaggregatedfieldwells.html#cfn-quicksight-dashboard-radarchartaggregatedfieldwells-values>
                                            values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartAggregatedFieldWellsProperty ::
  RadarChartAggregatedFieldWellsProperty
mkRadarChartAggregatedFieldWellsProperty
  = RadarChartAggregatedFieldWellsProperty
      {haddock_workaround_ = (), category = Prelude.Nothing,
       color = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties RadarChartAggregatedFieldWellsProperty where
  toResourceProperties RadarChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.RadarChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Color" Prelude.<$> color,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON RadarChartAggregatedFieldWellsProperty where
  toJSON RadarChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Color" Prelude.<$> color,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Category" RadarChartAggregatedFieldWellsProperty where
  type PropertyType "Category" RadarChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue RadarChartAggregatedFieldWellsProperty {..}
    = RadarChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Color" RadarChartAggregatedFieldWellsProperty where
  type PropertyType "Color" RadarChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue RadarChartAggregatedFieldWellsProperty {..}
    = RadarChartAggregatedFieldWellsProperty
        {color = Prelude.pure newValue, ..}
instance Property "Values" RadarChartAggregatedFieldWellsProperty where
  type PropertyType "Values" RadarChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue RadarChartAggregatedFieldWellsProperty {..}
    = RadarChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}