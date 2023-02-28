module Stratosphere.DataPipeline.Pipeline.ParameterValueProperty (
        ParameterValueProperty(..), mkParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterValueProperty
  = ParameterValueProperty {id :: (Value Prelude.Text),
                            stringValue :: (Value Prelude.Text)}
mkParameterValueProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterValueProperty
mkParameterValueProperty id stringValue
  = ParameterValueProperty {id = id, stringValue = stringValue}
instance ToResourceProperties ParameterValueProperty where
  toResourceProperties ParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.ParameterValue",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "StringValue" JSON..= stringValue]}
instance JSON.ToJSON ParameterValueProperty where
  toJSON ParameterValueProperty {..}
    = JSON.object ["Id" JSON..= id, "StringValue" JSON..= stringValue]
instance Property "Id" ParameterValueProperty where
  type PropertyType "Id" ParameterValueProperty = Value Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {id = newValue, ..}
instance Property "StringValue" ParameterValueProperty where
  type PropertyType "StringValue" ParameterValueProperty = Value Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {stringValue = newValue, ..}