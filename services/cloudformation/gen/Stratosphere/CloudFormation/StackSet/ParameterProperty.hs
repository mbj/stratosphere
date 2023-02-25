module Stratosphere.CloudFormation.StackSet.ParameterProperty (
        ParameterProperty(..), mkParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterProperty
  = ParameterProperty {parameterKey :: (Value Prelude.Text),
                       parameterValue :: (Value Prelude.Text)}
mkParameterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterProperty
mkParameterProperty parameterKey parameterValue
  = ParameterProperty
      {parameterKey = parameterKey, parameterValue = parameterValue}
instance ToResourceProperties ParameterProperty where
  toResourceProperties ParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.Parameter",
         properties = ["ParameterKey" JSON..= parameterKey,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ParameterProperty where
  toJSON ParameterProperty {..}
    = JSON.object
        ["ParameterKey" JSON..= parameterKey,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterKey" ParameterProperty where
  type PropertyType "ParameterKey" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {parameterKey = newValue, ..}
instance Property "ParameterValue" ParameterProperty where
  type PropertyType "ParameterValue" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {parameterValue = newValue, ..}