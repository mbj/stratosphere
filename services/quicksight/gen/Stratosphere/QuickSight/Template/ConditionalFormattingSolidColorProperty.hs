module Stratosphere.QuickSight.Template.ConditionalFormattingSolidColorProperty (
        ConditionalFormattingSolidColorProperty(..),
        mkConditionalFormattingSolidColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalFormattingSolidColorProperty
  = ConditionalFormattingSolidColorProperty {color :: (Prelude.Maybe (Value Prelude.Text)),
                                             expression :: (Value Prelude.Text)}
mkConditionalFormattingSolidColorProperty ::
  Value Prelude.Text -> ConditionalFormattingSolidColorProperty
mkConditionalFormattingSolidColorProperty expression
  = ConditionalFormattingSolidColorProperty
      {expression = expression, color = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingSolidColorProperty where
  toResourceProperties ConditionalFormattingSolidColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ConditionalFormattingSolidColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes [(JSON..=) "Color" Prelude.<$> color]))}
instance JSON.ToJSON ConditionalFormattingSolidColorProperty where
  toJSON ConditionalFormattingSolidColorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes [(JSON..=) "Color" Prelude.<$> color])))
instance Property "Color" ConditionalFormattingSolidColorProperty where
  type PropertyType "Color" ConditionalFormattingSolidColorProperty = Value Prelude.Text
  set newValue ConditionalFormattingSolidColorProperty {..}
    = ConditionalFormattingSolidColorProperty
        {color = Prelude.pure newValue, ..}
instance Property "Expression" ConditionalFormattingSolidColorProperty where
  type PropertyType "Expression" ConditionalFormattingSolidColorProperty = Value Prelude.Text
  set newValue ConditionalFormattingSolidColorProperty {..}
    = ConditionalFormattingSolidColorProperty
        {expression = newValue, ..}