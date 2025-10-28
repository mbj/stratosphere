module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.RouteOverridesProperty (
        RouteOverridesProperty(..), mkRouteOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteOverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html>
    RouteOverridesProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-authorizationscopes>
                            authorizationScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-authorizationtype>
                            authorizationType :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-authorizerid>
                            authorizerId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-operationname>
                            operationName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-target>
                            target :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteOverridesProperty :: RouteOverridesProperty
mkRouteOverridesProperty
  = RouteOverridesProperty
      {haddock_workaround_ = (), authorizationScopes = Prelude.Nothing,
       authorizationType = Prelude.Nothing,
       authorizerId = Prelude.Nothing, operationName = Prelude.Nothing,
       target = Prelude.Nothing}
instance ToResourceProperties RouteOverridesProperty where
  toResourceProperties RouteOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.RouteOverrides",
         supportsTags = Prelude.False,
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