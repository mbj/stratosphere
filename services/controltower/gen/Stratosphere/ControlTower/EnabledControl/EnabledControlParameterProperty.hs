module Stratosphere.ControlTower.EnabledControl.EnabledControlParameterProperty (
        EnabledControlParameterProperty(..),
        mkEnabledControlParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnabledControlParameterProperty
  = EnabledControlParameterProperty {key :: (Value Prelude.Text),
                                     value :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnabledControlParameterProperty ::
  Value Prelude.Text
  -> JSON.Object -> EnabledControlParameterProperty
mkEnabledControlParameterProperty key value
  = EnabledControlParameterProperty {key = key, value = value}
instance ToResourceProperties EnabledControlParameterProperty where
  toResourceProperties EnabledControlParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ControlTower::EnabledControl.EnabledControlParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON EnabledControlParameterProperty where
  toJSON EnabledControlParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" EnabledControlParameterProperty where
  type PropertyType "Key" EnabledControlParameterProperty = Value Prelude.Text
  set newValue EnabledControlParameterProperty {..}
    = EnabledControlParameterProperty {key = newValue, ..}
instance Property "Value" EnabledControlParameterProperty where
  type PropertyType "Value" EnabledControlParameterProperty = JSON.Object
  set newValue EnabledControlParameterProperty {..}
    = EnabledControlParameterProperty {value = newValue, ..}