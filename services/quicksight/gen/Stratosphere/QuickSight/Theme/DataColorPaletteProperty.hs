module Stratosphere.QuickSight.Theme.DataColorPaletteProperty (
        DataColorPaletteProperty(..), mkDataColorPaletteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataColorPaletteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-datacolorpalette.html>
    DataColorPaletteProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-datacolorpalette.html#cfn-quicksight-theme-datacolorpalette-colors>
                              colors :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-datacolorpalette.html#cfn-quicksight-theme-datacolorpalette-emptyfillcolor>
                              emptyFillColor :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-datacolorpalette.html#cfn-quicksight-theme-datacolorpalette-minmaxgradient>
                              minMaxGradient :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataColorPaletteProperty :: DataColorPaletteProperty
mkDataColorPaletteProperty
  = DataColorPaletteProperty
      {haddock_workaround_ = (), colors = Prelude.Nothing,
       emptyFillColor = Prelude.Nothing, minMaxGradient = Prelude.Nothing}
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