module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.RouteOverridesProperty (
        RouteOverridesProperty(..), mkRouteOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteOverridesProperty
  = RouteOverridesProperty {authorizationScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
                            authorizationType :: (Prelude.Maybe (Value Prelude.Text)),
                            authorizerId :: (Prelude.Maybe (Value Prelude.Text)),
                            operationName :: (Prelude.Maybe (Value Prelude.Text)),
                            target :: (Prelude.Maybe (Value Prelude.Text))}
mkRouteOverridesProperty :: RouteOverridesProperty
mkRouteOverridesProperty
  = RouteOverridesProperty
      {authorizationScopes = Prelude.Nothing,
       authorizationType = Prelude.Nothing,
       authorizerId = Prelude.Nothing, operationName = Prelude.Nothing,
       target = Prelude.Nothing}
instance ToResourceProperties RouteOverridesProperty where
  toResourceProperties RouteOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.RouteOverrides",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizationScopes" Prelude.<$> authorizationScopes,
                            (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
                            (JSON..=) "AuthorizerId" Prelude.<$> authorizerId,
                            (JSON..=) "OperationName" Prelude.<$> operationName,
                            (JSON..=) "Target" Prelude.<$> target])}
instance JSON.ToJSON RouteOverridesProperty where
  toJSON RouteOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizationScopes" Prelude.<$> authorizationScopes,
               (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
               (JSON..=) "AuthorizerId" Prelude.<$> authorizerId,
               (JSON..=) "OperationName" Prelude.<$> operationName,
               (JSON..=) "Target" Prelude.<$> target]))
instance Property "AuthorizationScopes" RouteOverridesProperty where
  type PropertyType "AuthorizationScopes" RouteOverridesProperty = ValueList Prelude.Text
  set newValue RouteOverridesProperty {..}
    = RouteOverridesProperty
        {authorizationScopes = Prelude.pure newValue, ..}
instance Property "AuthorizationType" RouteOverridesProperty where
  type PropertyType "AuthorizationType" RouteOverridesProperty = Value Prelude.Text
  set newValue RouteOverridesProperty {..}
    = RouteOverridesProperty
        {authorizationType = Prelude.pure newValue, ..}
instance Property "AuthorizerId" RouteOverridesProperty where
  type PropertyType "AuthorizerId" RouteOverridesProperty = Value Prelude.Text
  set newValue RouteOverridesProperty {..}
    = RouteOverridesProperty {authorizerId = Prelude.pure newValue, ..}
instance Property "OperationName" RouteOverridesProperty where
  type PropertyType "OperationName" RouteOverridesProperty = Value Prelude.Text
  set newValue RouteOverridesProperty {..}
    = RouteOverridesProperty
        {operationName = Prelude.pure newValue, ..}
instance Property "Target" RouteOverridesProperty where
  type PropertyType "Target" RouteOverridesProperty = Value Prelude.Text
  set newValue RouteOverridesProperty {..}
    = RouteOverridesProperty {target = Prelude.pure newValue, ..}