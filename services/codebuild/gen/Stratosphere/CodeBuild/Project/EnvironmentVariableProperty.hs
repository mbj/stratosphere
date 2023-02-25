module Stratosphere.CodeBuild.Project.EnvironmentVariableProperty (
        EnvironmentVariableProperty(..), mkEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentVariableProperty
  = EnvironmentVariableProperty {name :: (Value Prelude.Text),
                                 type' :: (Prelude.Maybe (Value Prelude.Text)),
                                 value :: (Value Prelude.Text)}
mkEnvironmentVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnvironmentVariableProperty
mkEnvironmentVariableProperty name value
  = EnvironmentVariableProperty
      {name = name, value = value, type' = Prelude.Nothing}
instance ToResourceProperties EnvironmentVariableProperty where
  toResourceProperties EnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.EnvironmentVariable",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON EnvironmentVariableProperty where
  toJSON EnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])))
instance Property "Name" EnvironmentVariableProperty where
  type PropertyType "Name" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {name = newValue, ..}
instance Property "Type" EnvironmentVariableProperty where
  type PropertyType "Type" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentVariableProperty where
  type PropertyType "Value" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {value = newValue, ..}