module Stratosphere.ApiGatewayV2.RouteResponse.ParameterConstraintsProperty (
        ParameterConstraintsProperty(..), mkParameterConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterConstraintsProperty
  = ParameterConstraintsProperty {required :: (Value Prelude.Bool)}
mkParameterConstraintsProperty ::
  Value Prelude.Bool -> ParameterConstraintsProperty
mkParameterConstraintsProperty required
  = ParameterConstraintsProperty {required = required}
instance ToResourceProperties ParameterConstraintsProperty where
  toResourceProperties ParameterConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RouteResponse.ParameterConstraints",
         supportsTags = Prelude.False,
         properties = ["Required" JSON..= required]}
instance JSON.ToJSON ParameterConstraintsProperty where
  toJSON ParameterConstraintsProperty {..}
    = JSON.object ["Required" JSON..= required]
instance Property "Required" ParameterConstraintsProperty where
  type PropertyType "Required" ParameterConstraintsProperty = Value Prelude.Bool
  set newValue ParameterConstraintsProperty {}
    = ParameterConstraintsProperty {required = newValue, ..}