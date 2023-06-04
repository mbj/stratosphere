module Stratosphere.QuickSight.Analysis.ColorScaleProperty (
        module Exports, ColorScaleProperty(..), mkColorScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataColorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColorScaleProperty
  = ColorScaleProperty {colorFillType :: (Value Prelude.Text),
                        colors :: [DataColorProperty],
                        nullValueColor :: (Prelude.Maybe DataColorProperty)}
mkColorScaleProperty ::
  Value Prelude.Text -> [DataColorProperty] -> ColorScaleProperty
mkColorScaleProperty colorFillType colors
  = ColorScaleProperty
      {colorFillType = colorFillType, colors = colors,
       nullValueColor = Prelude.Nothing}
instance ToResourceProperties ColorScaleProperty where
  toResourceProperties ColorScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ColorScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColorFillType" JSON..= colorFillType, "Colors" JSON..= colors]
                           (Prelude.catMaybes
                              [(JSON..=) "NullValueColor" Prelude.<$> nullValueColor]))}
instance JSON.ToJSON ColorScaleProperty where
  toJSON ColorScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColorFillType" JSON..= colorFillType, "Colors" JSON..= colors]
              (Prelude.catMaybes
                 [(JSON..=) "NullValueColor" Prelude.<$> nullValueColor])))
instance Property "ColorFillType" ColorScaleProperty where
  type PropertyType "ColorFillType" ColorScaleProperty = Value Prelude.Text
  set newValue ColorScaleProperty {..}
    = ColorScaleProperty {colorFillType = newValue, ..}
instance Property "Colors" ColorScaleProperty where
  type PropertyType "Colors" ColorScaleProperty = [DataColorProperty]
  set newValue ColorScaleProperty {..}
    = ColorScaleProperty {colors = newValue, ..}
instance Property "NullValueColor" ColorScaleProperty where
  type PropertyType "NullValueColor" ColorScaleProperty = DataColorProperty
  set newValue ColorScaleProperty {..}
    = ColorScaleProperty {nullValueColor = Prelude.pure newValue, ..}