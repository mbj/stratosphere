module Stratosphere.IoTEvents.DetectorModel.SetVariableProperty (
        SetVariableProperty(..), mkSetVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SetVariableProperty
  = SetVariableProperty {value :: (Value Prelude.Text),
                         variableName :: (Value Prelude.Text)}
mkSetVariableProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SetVariableProperty
mkSetVariableProperty value variableName
  = SetVariableProperty {value = value, variableName = variableName}
instance ToResourceProperties SetVariableProperty where
  toResourceProperties SetVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.SetVariable",
         supportsTags = Prelude.False,
         properties = ["Value" JSON..= value,
                       "VariableName" JSON..= variableName]}
instance JSON.ToJSON SetVariableProperty where
  toJSON SetVariableProperty {..}
    = JSON.object
        ["Value" JSON..= value, "VariableName" JSON..= variableName]
instance Property "Value" SetVariableProperty where
  type PropertyType "Value" SetVariableProperty = Value Prelude.Text
  set newValue SetVariableProperty {..}
    = SetVariableProperty {value = newValue, ..}
instance Property "VariableName" SetVariableProperty where
  type PropertyType "VariableName" SetVariableProperty = Value Prelude.Text
  set newValue SetVariableProperty {..}
    = SetVariableProperty {variableName = newValue, ..}