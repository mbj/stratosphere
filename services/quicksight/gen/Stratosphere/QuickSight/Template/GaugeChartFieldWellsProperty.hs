module Stratosphere.QuickSight.Template.GaugeChartFieldWellsProperty (
        module Exports, GaugeChartFieldWellsProperty(..),
        mkGaugeChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartFieldWellsProperty
  = GaugeChartFieldWellsProperty {targetValues :: (Prelude.Maybe [MeasureFieldProperty]),
                                  values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartFieldWellsProperty :: GaugeChartFieldWellsProperty
mkGaugeChartFieldWellsProperty
  = GaugeChartFieldWellsProperty
      {targetValues = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties GaugeChartFieldWellsProperty where
  toResourceProperties GaugeChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetValues" Prelude.<$> targetValues,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON GaugeChartFieldWellsProperty where
  toJSON GaugeChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetValues" Prelude.<$> targetValues,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "TargetValues" GaugeChartFieldWellsProperty where
  type PropertyType "TargetValues" GaugeChartFieldWellsProperty = [MeasureFieldProperty]
  set newValue GaugeChartFieldWellsProperty {..}
    = GaugeChartFieldWellsProperty
        {targetValues = Prelude.pure newValue, ..}
instance Property "Values" GaugeChartFieldWellsProperty where
  type PropertyType "Values" GaugeChartFieldWellsProperty = [MeasureFieldProperty]
  set newValue GaugeChartFieldWellsProperty {..}
    = GaugeChartFieldWellsProperty {values = Prelude.pure newValue, ..}