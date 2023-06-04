module Stratosphere.QuickSight.Template.FontSizeProperty (
        FontSizeProperty(..), mkFontSizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FontSizeProperty
  = FontSizeProperty {relative :: (Prelude.Maybe (Value Prelude.Text))}
mkFontSizeProperty :: FontSizeProperty
mkFontSizeProperty = FontSizeProperty {relative = Prelude.Nothing}
instance ToResourceProperties FontSizeProperty where
  toResourceProperties FontSizeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FontSize",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Relative" Prelude.<$> relative])}
instance JSON.ToJSON FontSizeProperty where
  toJSON FontSizeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Relative" Prelude.<$> relative]))
instance Property "Relative" FontSizeProperty where
  type PropertyType "Relative" FontSizeProperty = Value Prelude.Text
  set newValue FontSizeProperty {}
    = FontSizeProperty {relative = Prelude.pure newValue, ..}