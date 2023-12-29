module Stratosphere.QuickSight.Template.BoxPlotStyleOptionsProperty (
        BoxPlotStyleOptionsProperty(..), mkBoxPlotStyleOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BoxPlotStyleOptionsProperty
  = BoxPlotStyleOptionsProperty {fillStyle :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotStyleOptionsProperty :: BoxPlotStyleOptionsProperty
mkBoxPlotStyleOptionsProperty
  = BoxPlotStyleOptionsProperty {fillStyle = Prelude.Nothing}
instance ToResourceProperties BoxPlotStyleOptionsProperty where
  toResourceProperties BoxPlotStyleOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BoxPlotStyleOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "FillStyle" Prelude.<$> fillStyle])}
instance JSON.ToJSON BoxPlotStyleOptionsProperty where
  toJSON BoxPlotStyleOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "FillStyle" Prelude.<$> fillStyle]))
instance Property "FillStyle" BoxPlotStyleOptionsProperty where
  type PropertyType "FillStyle" BoxPlotStyleOptionsProperty = Value Prelude.Text
  set newValue BoxPlotStyleOptionsProperty {}
    = BoxPlotStyleOptionsProperty
        {fillStyle = Prelude.pure newValue, ..}