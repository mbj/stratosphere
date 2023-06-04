module Stratosphere.QuickSight.Analysis.VisualPaletteProperty (
        module Exports, VisualPaletteProperty(..), mkVisualPaletteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataPathColorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualPaletteProperty
  = VisualPaletteProperty {chartColor :: (Prelude.Maybe (Value Prelude.Text)),
                           colorMap :: (Prelude.Maybe [DataPathColorProperty])}
mkVisualPaletteProperty :: VisualPaletteProperty
mkVisualPaletteProperty
  = VisualPaletteProperty
      {chartColor = Prelude.Nothing, colorMap = Prelude.Nothing}
instance ToResourceProperties VisualPaletteProperty where
  toResourceProperties VisualPaletteProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.VisualPalette",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChartColor" Prelude.<$> chartColor,
                            (JSON..=) "ColorMap" Prelude.<$> colorMap])}
instance JSON.ToJSON VisualPaletteProperty where
  toJSON VisualPaletteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChartColor" Prelude.<$> chartColor,
               (JSON..=) "ColorMap" Prelude.<$> colorMap]))
instance Property "ChartColor" VisualPaletteProperty where
  type PropertyType "ChartColor" VisualPaletteProperty = Value Prelude.Text
  set newValue VisualPaletteProperty {..}
    = VisualPaletteProperty {chartColor = Prelude.pure newValue, ..}
instance Property "ColorMap" VisualPaletteProperty where
  type PropertyType "ColorMap" VisualPaletteProperty = [DataPathColorProperty]
  set newValue VisualPaletteProperty {..}
    = VisualPaletteProperty {colorMap = Prelude.pure newValue, ..}