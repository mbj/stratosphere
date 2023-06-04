module Stratosphere.QuickSight.Template.CustomColorProperty (
        CustomColorProperty(..), mkCustomColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomColorProperty
  = CustomColorProperty {color :: (Value Prelude.Text),
                         fieldValue :: (Prelude.Maybe (Value Prelude.Text)),
                         specialValue :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomColorProperty :: Value Prelude.Text -> CustomColorProperty
mkCustomColorProperty color
  = CustomColorProperty
      {color = color, fieldValue = Prelude.Nothing,
       specialValue = Prelude.Nothing}
instance ToResourceProperties CustomColorProperty where
  toResourceProperties CustomColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Color" JSON..= color]
                           (Prelude.catMaybes
                              [(JSON..=) "FieldValue" Prelude.<$> fieldValue,
                               (JSON..=) "SpecialValue" Prelude.<$> specialValue]))}
instance JSON.ToJSON CustomColorProperty where
  toJSON CustomColorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Color" JSON..= color]
              (Prelude.catMaybes
                 [(JSON..=) "FieldValue" Prelude.<$> fieldValue,
                  (JSON..=) "SpecialValue" Prelude.<$> specialValue])))
instance Property "Color" CustomColorProperty where
  type PropertyType "Color" CustomColorProperty = Value Prelude.Text
  set newValue CustomColorProperty {..}
    = CustomColorProperty {color = newValue, ..}
instance Property "FieldValue" CustomColorProperty where
  type PropertyType "FieldValue" CustomColorProperty = Value Prelude.Text
  set newValue CustomColorProperty {..}
    = CustomColorProperty {fieldValue = Prelude.pure newValue, ..}
instance Property "SpecialValue" CustomColorProperty where
  type PropertyType "SpecialValue" CustomColorProperty = Value Prelude.Text
  set newValue CustomColorProperty {..}
    = CustomColorProperty {specialValue = Prelude.pure newValue, ..}