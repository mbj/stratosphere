module Stratosphere.QuickSight.Dashboard.VisualPaletteProperty (
        module Exports, VisualPaletteProperty(..), mkVisualPaletteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPathColorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualPaletteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualpalette.html>
    VisualPaletteProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualpalette.html#cfn-quicksight-dashboard-visualpalette-chartcolor>
                           chartColor :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualpalette.html#cfn-quicksight-dashboard-visualpalette-colormap>
                           colorMap :: (Prelude.Maybe [DataPathColorProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualPaletteProperty :: VisualPaletteProperty
mkVisualPaletteProperty
  = VisualPaletteProperty
      {haddock_workaround_ = (), chartColor = Prelude.Nothing,
       colorMap = Prelude.Nothing}
instance ToResourceProperties VisualPaletteProperty where
  toResourceProperties VisualPaletteProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.VisualPalette",
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