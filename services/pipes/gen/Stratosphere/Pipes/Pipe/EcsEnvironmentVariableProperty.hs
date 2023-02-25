module Stratosphere.Pipes.Pipe.EcsEnvironmentVariableProperty (
        EcsEnvironmentVariableProperty(..),
        mkEcsEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsEnvironmentVariableProperty
  = EcsEnvironmentVariableProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                    value :: (Prelude.Maybe (Value Prelude.Text))}
mkEcsEnvironmentVariableProperty :: EcsEnvironmentVariableProperty
mkEcsEnvironmentVariableProperty
  = EcsEnvironmentVariableProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EcsEnvironmentVariableProperty where
  toResourceProperties EcsEnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsEnvironmentVariable",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EcsEnvironmentVariableProperty where
  toJSON EcsEnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EcsEnvironmentVariableProperty where
  type PropertyType "Name" EcsEnvironmentVariableProperty = Value Prelude.Text
  set newValue EcsEnvironmentVariableProperty {..}
    = EcsEnvironmentVariableProperty {name = Prelude.pure newValue, ..}
instance Property "Value" EcsEnvironmentVariableProperty where
  type PropertyType "Value" EcsEnvironmentVariableProperty = Value Prelude.Text
  set newValue EcsEnvironmentVariableProperty {..}
    = EcsEnvironmentVariableProperty
        {value = Prelude.pure newValue, ..}