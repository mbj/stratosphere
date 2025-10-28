module Stratosphere.ApiGatewayV2.RouteResponse (
        module Exports, RouteResponse(..), mkRouteResponse
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RouteResponse.ParameterConstraintsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteResponse
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html>
    RouteResponse {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-apiid>
                   apiId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-modelselectionexpression>
                   modelSelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-responsemodels>
                   responseModels :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-responseparameters>
                   responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text ParameterConstraintsProperty)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-routeid>
                   routeId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-routeresponsekey>
                   routeResponseKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteResponse ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> RouteResponse
mkRouteResponse apiId routeId routeResponseKey
  = RouteResponse
      {haddock_workaround_ = (), apiId = apiId, routeId = routeId,
       routeResponseKey = routeResponseKey,
       modelSelectionExpression = Prelude.Nothing,
       responseModels = Prelude.Nothing,
       responseParameters = Prelude.Nothing}
instance ToResourceProperties RouteResponse where
  toResourceProperties RouteResponse {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RouteResponse",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "RouteId" JSON..= routeId,
                            "RouteResponseKey" JSON..= routeResponseKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ModelSelectionExpression"
                                 Prelude.<$> modelSelectionExpression,
                               (JSON..=) "ResponseModels" Prelude.<$> responseModels,
                               (JSON..=) "ResponseParameters" Prelude.<$> responseParameters]))}
instance JSON.ToJSON RouteResponse where
  toJSON RouteResponse {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "RouteId" JSON..= routeId,
               "RouteResponseKey" JSON..= routeResponseKey]
              (Prelude.catMaybes
                 [(JSON..=) "ModelSelectionExpression"
                    Prelude.<$> modelSelectionExpression,
                  (JSON..=) "ResponseModels" Prelude.<$> responseModels,
                  (JSON..=) "ResponseParameters" Prelude.<$> responseParameters])))
instance Property "ApiId" RouteResponse where
  type PropertyType "ApiId" RouteResponse = Value Prelude.Text
  set newValue RouteResponse {..}
    = RouteResponse {apiId = newValue, ..}
instance Property "ModelSelectionExpression" RouteResponse where
  type PropertyType "ModelSelectionExpression" RouteResponse = Value Prelude.Text
  set newValue RouteResponse {..}
    = RouteResponse
        {modelSelectionExpression = Prelude.pure newValue, ..}
instance Property "ResponseModels" RouteResponse where
  type PropertyType "ResponseModels" RouteResponse = JSON.Object
  set newValue RouteResponse {..}
    = RouteResponse {responseModels = Prelude.pure newValue, ..}
instance Property "ResponseParameters" RouteResponse where
  type PropertyType "ResponseParameters" RouteResponse = Prelude.Map Prelude.Text ParameterConstraintsProperty
  set newValue RouteResponse {..}
    = RouteResponse {responseParameters = Prelude.pure newValue, ..}
instance Property "RouteId" RouteResponse where
  type PropertyType "RouteId" RouteResponse = Value Prelude.Text
  set newValue RouteResponse {..}
    = RouteResponse {routeId = newValue, ..}
instance Property "RouteResponseKey" RouteResponse where
  type PropertyType "RouteResponseKey" RouteResponse = Value Prelude.Text
  set newValue RouteResponse {..}
    = RouteResponse {routeResponseKey = newValue, ..}