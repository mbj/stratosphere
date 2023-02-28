module Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyBindingPropertiesProperty (
        ComponentPropertyBindingPropertiesProperty(..),
        mkComponentPropertyBindingPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentPropertyBindingPropertiesProperty
  = ComponentPropertyBindingPropertiesProperty {field :: (Prelude.Maybe (Value Prelude.Text)),
                                                property :: (Value Prelude.Text)}
mkComponentPropertyBindingPropertiesProperty ::
  Value Prelude.Text -> ComponentPropertyBindingPropertiesProperty
mkComponentPropertyBindingPropertiesProperty property
  = ComponentPropertyBindingPropertiesProperty
      {property = property, field = Prelude.Nothing}
instance ToResourceProperties ComponentPropertyBindingPropertiesProperty where
  toResourceProperties
    ComponentPropertyBindingPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentPropertyBindingProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Property" JSON..= property]
                           (Prelude.catMaybes [(JSON..=) "Field" Prelude.<$> field]))}
instance JSON.ToJSON ComponentPropertyBindingPropertiesProperty where
  toJSON ComponentPropertyBindingPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Property" JSON..= property]
              (Prelude.catMaybes [(JSON..=) "Field" Prelude.<$> field])))
instance Property "Field" ComponentPropertyBindingPropertiesProperty where
  type PropertyType "Field" ComponentPropertyBindingPropertiesProperty = Value Prelude.Text
  set newValue ComponentPropertyBindingPropertiesProperty {..}
    = ComponentPropertyBindingPropertiesProperty
        {field = Prelude.pure newValue, ..}
instance Property "Property" ComponentPropertyBindingPropertiesProperty where
  type PropertyType "Property" ComponentPropertyBindingPropertiesProperty = Value Prelude.Text
  set newValue ComponentPropertyBindingPropertiesProperty {..}
    = ComponentPropertyBindingPropertiesProperty
        {property = newValue, ..}