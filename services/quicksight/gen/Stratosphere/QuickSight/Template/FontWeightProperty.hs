module Stratosphere.QuickSight.Template.FontWeightProperty (
        FontWeightProperty(..), mkFontWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FontWeightProperty
  = FontWeightProperty {name :: (Prelude.Maybe (Value Prelude.Text))}
mkFontWeightProperty :: FontWeightProperty
mkFontWeightProperty = FontWeightProperty {name = Prelude.Nothing}
instance ToResourceProperties FontWeightProperty where
  toResourceProperties FontWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FontWeight",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON FontWeightProperty where
  toJSON FontWeightProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" FontWeightProperty where
  type PropertyType "Name" FontWeightProperty = Value Prelude.Text
  set newValue FontWeightProperty {}
    = FontWeightProperty {name = Prelude.pure newValue, ..}