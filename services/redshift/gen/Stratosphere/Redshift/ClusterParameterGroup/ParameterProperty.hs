module Stratosphere.Redshift.ClusterParameterGroup.ParameterProperty (
        ParameterProperty(..), mkParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterProperty
  = ParameterProperty {parameterName :: (Value Prelude.Text),
                       parameterValue :: (Value Prelude.Text)}
mkParameterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterProperty
mkParameterProperty parameterName parameterValue
  = ParameterProperty
      {parameterName = parameterName, parameterValue = parameterValue}
instance ToResourceProperties ParameterProperty where
  toResourceProperties ParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ClusterParameterGroup.Parameter",
         supportsTags = Prelude.False,
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ParameterProperty where
  toJSON ParameterProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" ParameterProperty where
  type PropertyType "ParameterName" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {parameterName = newValue, ..}
instance Property "ParameterValue" ParameterProperty where
  type PropertyType "ParameterValue" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {parameterValue = newValue, ..}