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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-colorscale.html>
    ColorScaleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-colorscale.html#cfn-quicksight-analysis-colorscale-colorfilltype>
                        colorFillType :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-colorscale.html#cfn-quicksight-analysis-colorscale-colors>
                        colors :: [DataColorProperty],
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-colorscale.html#cfn-quicksight-analysis-colorscale-nullvaluecolor>
                        nullValueColor :: (Prelude.Maybe DataColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColorScaleProperty ::
  Value Prelude.Text -> [DataColorProperty] -> ColorScaleProperty
mkColorScaleProperty colorFillType colors
  = ColorScaleProperty
      {haddock_workaround_ = (), colorFillType = colorFillType,
       colors = colors, nullValueColor = Prelude.Nothing}
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