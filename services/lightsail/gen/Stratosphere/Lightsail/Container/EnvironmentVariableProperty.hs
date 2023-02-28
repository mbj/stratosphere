module Stratosphere.Lightsail.Container.EnvironmentVariableProperty (
        EnvironmentVariableProperty(..), mkEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentVariableProperty
  = EnvironmentVariableProperty {value :: (Prelude.Maybe (Value Prelude.Text)),
                                 variable :: (Prelude.Maybe (Value Prelude.Text))}
mkEnvironmentVariableProperty :: EnvironmentVariableProperty
mkEnvironmentVariableProperty
  = EnvironmentVariableProperty
      {value = Prelude.Nothing, variable = Prelude.Nothing}
instance ToResourceProperties EnvironmentVariableProperty where
  toResourceProperties EnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.EnvironmentVariable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Value" Prelude.<$> value,
                            (JSON..=) "Variable" Prelude.<$> variable])}
instance JSON.ToJSON EnvironmentVariableProperty where
  toJSON EnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Value" Prelude.<$> value,
               (JSON..=) "Variable" Prelude.<$> variable]))
instance Property "Value" EnvironmentVariableProperty where
  type PropertyType "Value" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {value = Prelude.pure newValue, ..}
instance Property "Variable" EnvironmentVariableProperty where
  type PropertyType "Variable" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty
        {variable = Prelude.pure newValue, ..}