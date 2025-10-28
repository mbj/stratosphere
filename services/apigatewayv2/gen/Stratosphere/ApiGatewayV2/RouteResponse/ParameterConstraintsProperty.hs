module Stratosphere.ApiGatewayV2.RouteResponse.ParameterConstraintsProperty (
        ParameterConstraintsProperty(..), mkParameterConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterConstraintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html>
    ParameterConstraintsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html#cfn-apigatewayv2-routeresponse-parameterconstraints-required>
                                  required :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterConstraintsProperty ::
  Value Prelude.Bool -> ParameterConstraintsProperty
mkParameterConstraintsProperty required
  = ParameterConstraintsProperty
      {haddock_workaround_ = (), required = required}
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
  set newValue ParameterConstraintsProperty {..}
    = ParameterConstraintsProperty {required = newValue, ..}