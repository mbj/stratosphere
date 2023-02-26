module Stratosphere.ApiGatewayV2.Route (
        Route(..), mkRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Route
  = Route {apiId :: (Value Prelude.Text),
           apiKeyRequired :: (Prelude.Maybe (Value Prelude.Bool)),
           authorizationScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
           authorizationType :: (Prelude.Maybe (Value Prelude.Text)),
           authorizerId :: (Prelude.Maybe (Value Prelude.Text)),
           modelSelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
           operationName :: (Prelude.Maybe (Value Prelude.Text)),
           requestModels :: (Prelude.Maybe JSON.Object),
           requestParameters :: (Prelude.Maybe JSON.Object),
           routeKey :: (Value Prelude.Text),
           routeResponseSelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
           target :: (Prelude.Maybe (Value Prelude.Text))}
mkRoute :: Value Prelude.Text -> Value Prelude.Text -> Route
mkRoute apiId routeKey
  = Route
      {apiId = apiId, routeKey = routeKey,
       apiKeyRequired = Prelude.Nothing,
       authorizationScopes = Prelude.Nothing,
       authorizationType = Prelude.Nothing,
       authorizerId = Prelude.Nothing,
       modelSelectionExpression = Prelude.Nothing,
       operationName = Prelude.Nothing, requestModels = Prelude.Nothing,
       requestParameters = Prelude.Nothing,
       routeResponseSelectionExpression = Prelude.Nothing,
       target = Prelude.Nothing}
instance ToResourceProperties Route where
  toResourceProperties Route {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Route",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "RouteKey" JSON..= routeKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiKeyRequired" Prelude.<$> apiKeyRequired,
                               (JSON..=) "AuthorizationScopes" Prelude.<$> authorizationScopes,
                               (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
                               (JSON..=) "AuthorizerId" Prelude.<$> authorizerId,
                               (JSON..=) "ModelSelectionExpression"
                                 Prelude.<$> modelSelectionExpression,
                               (JSON..=) "OperationName" Prelude.<$> operationName,
                               (JSON..=) "RequestModels" Prelude.<$> requestModels,
                               (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                               (JSON..=) "RouteResponseSelectionExpression"
                                 Prelude.<$> routeResponseSelectionExpression,
                               (JSON..=) "Target" Prelude.<$> target]))}
instance JSON.ToJSON Route where
  toJSON Route {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "RouteKey" JSON..= routeKey]
              (Prelude.catMaybes
                 [(JSON..=) "ApiKeyRequired" Prelude.<$> apiKeyRequired,
                  (JSON..=) "AuthorizationScopes" Prelude.<$> authorizationScopes,
                  (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
                  (JSON..=) "AuthorizerId" Prelude.<$> authorizerId,
                  (JSON..=) "ModelSelectionExpression"
                    Prelude.<$> modelSelectionExpression,
                  (JSON..=) "OperationName" Prelude.<$> operationName,
                  (JSON..=) "RequestModels" Prelude.<$> requestModels,
                  (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                  (JSON..=) "RouteResponseSelectionExpression"
                    Prelude.<$> routeResponseSelectionExpression,
                  (JSON..=) "Target" Prelude.<$> target])))
instance Property "ApiId" Route where
  type PropertyType "ApiId" Route = Value Prelude.Text
  set newValue Route {..} = Route {apiId = newValue, ..}
instance Property "ApiKeyRequired" Route where
  type PropertyType "ApiKeyRequired" Route = Value Prelude.Bool
  set newValue Route {..}
    = Route {apiKeyRequired = Prelude.pure newValue, ..}
instance Property "AuthorizationScopes" Route where
  type PropertyType "AuthorizationScopes" Route = ValueList Prelude.Text
  set newValue Route {..}
    = Route {authorizationScopes = Prelude.pure newValue, ..}
instance Property "AuthorizationType" Route where
  type PropertyType "AuthorizationType" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {authorizationType = Prelude.pure newValue, ..}
instance Property "AuthorizerId" Route where
  type PropertyType "AuthorizerId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {authorizerId = Prelude.pure newValue, ..}
instance Property "ModelSelectionExpression" Route where
  type PropertyType "ModelSelectionExpression" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {modelSelectionExpression = Prelude.pure newValue, ..}
instance Property "OperationName" Route where
  type PropertyType "OperationName" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {operationName = Prelude.pure newValue, ..}
instance Property "RequestModels" Route where
  type PropertyType "RequestModels" Route = JSON.Object
  set newValue Route {..}
    = Route {requestModels = Prelude.pure newValue, ..}
instance Property "RequestParameters" Route where
  type PropertyType "RequestParameters" Route = JSON.Object
  set newValue Route {..}
    = Route {requestParameters = Prelude.pure newValue, ..}
instance Property "RouteKey" Route where
  type PropertyType "RouteKey" Route = Value Prelude.Text
  set newValue Route {..} = Route {routeKey = newValue, ..}
instance Property "RouteResponseSelectionExpression" Route where
  type PropertyType "RouteResponseSelectionExpression" Route = Value Prelude.Text
  set newValue Route {..}
    = Route
        {routeResponseSelectionExpression = Prelude.pure newValue, ..}
instance Property "Target" Route where
  type PropertyType "Target" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {target = Prelude.pure newValue, ..}