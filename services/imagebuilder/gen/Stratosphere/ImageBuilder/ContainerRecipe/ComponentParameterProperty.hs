module Stratosphere.ImageBuilder.ContainerRecipe.ComponentParameterProperty (
        ComponentParameterProperty(..), mkComponentParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentParameterProperty
  = ComponentParameterProperty {name :: (Value Prelude.Text),
                                value :: (ValueList (Value Prelude.Text))}
mkComponentParameterProperty ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Text) -> ComponentParameterProperty
mkComponentParameterProperty name value
  = ComponentParameterProperty {name = name, value = value}
instance ToResourceProperties ComponentParameterProperty where
  toResourceProperties ComponentParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.ComponentParameter",
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON ComponentParameterProperty where
  toJSON ComponentParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" ComponentParameterProperty where
  type PropertyType "Name" ComponentParameterProperty = Value Prelude.Text
  set newValue ComponentParameterProperty {..}
    = ComponentParameterProperty {name = newValue, ..}
instance Property "Value" ComponentParameterProperty where
  type PropertyType "Value" ComponentParameterProperty = ValueList (Value Prelude.Text)
  set newValue ComponentParameterProperty {..}
    = ComponentParameterProperty {value = newValue, ..}