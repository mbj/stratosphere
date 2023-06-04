module Stratosphere.QuickSight.Analysis.WaterfallChartOptionsProperty (
        WaterfallChartOptionsProperty(..), mkWaterfallChartOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaterfallChartOptionsProperty
  = WaterfallChartOptionsProperty {totalBarLabel :: (Prelude.Maybe (Value Prelude.Text))}
mkWaterfallChartOptionsProperty :: WaterfallChartOptionsProperty
mkWaterfallChartOptionsProperty
  = WaterfallChartOptionsProperty {totalBarLabel = Prelude.Nothing}
instance ToResourceProperties WaterfallChartOptionsProperty where
  toResourceProperties WaterfallChartOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WaterfallChartOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TotalBarLabel" Prelude.<$> totalBarLabel])}
instance JSON.ToJSON WaterfallChartOptionsProperty where
  toJSON WaterfallChartOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TotalBarLabel" Prelude.<$> totalBarLabel]))
instance Property "TotalBarLabel" WaterfallChartOptionsProperty where
  type PropertyType "TotalBarLabel" WaterfallChartOptionsProperty = Value Prelude.Text
  set newValue WaterfallChartOptionsProperty {}
    = WaterfallChartOptionsProperty
        {totalBarLabel = Prelude.pure newValue, ..}