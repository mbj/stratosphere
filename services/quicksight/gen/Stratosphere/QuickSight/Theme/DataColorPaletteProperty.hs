module Stratosphere.QuickSight.Theme.DataColorPaletteProperty (
        DataColorPaletteProperty(..), mkDataColorPaletteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataColorPaletteProperty
  = DataColorPaletteProperty {colors :: (Prelude.Maybe (ValueList Prelude.Text)),
                              emptyFillColor :: (Prelude.Maybe (Value Prelude.Text)),
                              minMaxGradient :: (Prelude.Maybe (ValueList Prelude.Text))}
mkDataColorPaletteProperty :: DataColorPaletteProperty
mkDataColorPaletteProperty
  = DataColorPaletteProperty
      {colors = Prelude.Nothing, emptyFillColor = Prelude.Nothing,
       minMaxGradient = Prelude.Nothing}
instance ToResourceProperties DataColorPaletteProperty where
  toResourceProperties DataColorPaletteProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.DataColorPalette",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Colors" Prelude.<$> colors,
                            (JSON..=) "EmptyFillColor" Prelude.<$> emptyFillColor,
                            (JSON..=) "MinMaxGradient" Prelude.<$> minMaxGradient])}
instance JSON.ToJSON DataColorPaletteProperty where
  toJSON DataColorPaletteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Colors" Prelude.<$> colors,
               (JSON..=) "EmptyFillColor" Prelude.<$> emptyFillColor,
               (JSON..=) "MinMaxGradient" Prelude.<$> minMaxGradient]))
instance Property "Colors" DataColorPaletteProperty where
  type PropertyType "Colors" DataColorPaletteProperty = ValueList Prelude.Text
  set newValue DataColorPaletteProperty {..}
    = DataColorPaletteProperty {colors = Prelude.pure newValue, ..}
instance Property "EmptyFillColor" DataColorPaletteProperty where
  type PropertyType "EmptyFillColor" DataColorPaletteProperty = Value Prelude.Text
  set newValue DataColorPaletteProperty {..}
    = DataColorPaletteProperty
        {emptyFillColor = Prelude.pure newValue, ..}
instance Property "MinMaxGradient" DataColorPaletteProperty where
  type PropertyType "MinMaxGradient" DataColorPaletteProperty = ValueList Prelude.Text
  set newValue DataColorPaletteProperty {..}
    = DataColorPaletteProperty
        {minMaxGradient = Prelude.pure newValue, ..}