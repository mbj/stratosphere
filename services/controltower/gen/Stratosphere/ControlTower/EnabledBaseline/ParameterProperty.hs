module Stratosphere.ControlTower.EnabledBaseline.ParameterProperty (
        ParameterProperty(..), mkParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterProperty
  = ParameterProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                       value :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterProperty :: ParameterProperty
mkParameterProperty
  = ParameterProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ParameterProperty where
  toResourceProperties ParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ControlTower::EnabledBaseline.Parameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ParameterProperty where
  toJSON ParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ParameterProperty where
  type PropertyType "Key" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {key = Prelude.pure newValue, ..}
instance Property "Value" ParameterProperty where
  type PropertyType "Value" ParameterProperty = JSON.Object
  set newValue ParameterProperty {..}
    = ParameterProperty {value = Prelude.pure newValue, ..}