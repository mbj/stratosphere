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
  = RadarChartAggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                            color :: (Prelude.Maybe [DimensionFieldProperty]),
                                            values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartAggregatedFieldWellsProperty ::
  RadarChartAggregatedFieldWellsProperty
mkRadarChartAggregatedFieldWellsProperty
  = RadarChartAggregatedFieldWellsProperty
      {category = Prelude.Nothing, color = Prelude.Nothing,
       values = Prelude.Nothing}
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