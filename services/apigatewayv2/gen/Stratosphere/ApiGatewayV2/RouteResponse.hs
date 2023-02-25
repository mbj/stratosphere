module Stratosphere.ApiGatewayV2.RouteResponse (
        RouteResponse(..), mkRouteResponse
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteResponse
  = RouteResponse {apiId :: (Value Prelude.Text),
                   modelSelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
                   responseModels :: (Prelude.Maybe JSON.Object),
                   responseParameters :: (Prelude.Maybe JSON.Object),
                   routeId :: (Value Prelude.Text),
                   routeResponseKey :: (Value Prelude.Text)}
mkRouteResponse ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> RouteResponse
mkRouteResponse apiId routeId routeResponseKey
  = RouteResponse
      {apiId = apiId, routeId = routeId,
       routeResponseKey = routeResponseKey,
       modelSelectionExpression = Prelude.Nothing,
       responseModels = Prelude.Nothing,
       responseParameters = Prelude.Nothing}
instance ToResourceProperties RouteResponse where
  toResourceProperties RouteResponse {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RouteResponse",
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
  type PropertyType "ResponseParameters" RouteResponse = JSON.Object
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