module Stratosphere.KinesisFirehose.DeliveryStream.ProcessorParameterProperty (
        ProcessorParameterProperty(..), mkProcessorParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessorParameterProperty
  = ProcessorParameterProperty {parameterName :: (Value Prelude.Text),
                                parameterValue :: (Value Prelude.Text)}
mkProcessorParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ProcessorParameterProperty
mkProcessorParameterProperty parameterName parameterValue
  = ProcessorParameterProperty
      {parameterName = parameterName, parameterValue = parameterValue}
instance ToResourceProperties ProcessorParameterProperty where
  toResourceProperties ProcessorParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ProcessorParameter",
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ProcessorParameterProperty where
  toJSON ProcessorParameterProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" ProcessorParameterProperty where
  type PropertyType "ParameterName" ProcessorParameterProperty = Value Prelude.Text
  set newValue ProcessorParameterProperty {..}
    = ProcessorParameterProperty {parameterName = newValue, ..}
instance Property "ParameterValue" ProcessorParameterProperty where
  type PropertyType "ParameterValue" ProcessorParameterProperty = Value Prelude.Text
  set newValue ProcessorParameterProperty {..}
    = ProcessorParameterProperty {parameterValue = newValue, ..}