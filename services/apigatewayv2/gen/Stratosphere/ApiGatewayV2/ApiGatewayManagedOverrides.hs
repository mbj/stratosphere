module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides (
        module Exports, ApiGatewayManagedOverrides(..),
        mkApiGatewayManagedOverrides
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.IntegrationOverridesProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.RouteOverridesProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.StageOverridesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiGatewayManagedOverrides
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html>
    ApiGatewayManagedOverrides {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-apiid>
                                apiId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integration>
                                integration :: (Prelude.Maybe IntegrationOverridesProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-route>
                                route :: (Prelude.Maybe RouteOverridesProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stage>
                                stage :: (Prelude.Maybe StageOverridesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiGatewayManagedOverrides ::
  Value Prelude.Text -> ApiGatewayManagedOverrides
mkApiGatewayManagedOverrides apiId
  = ApiGatewayManagedOverrides
      {haddock_workaround_ = (), apiId = apiId,
       integration = Prelude.Nothing, route = Prelude.Nothing,
       stage = Prelude.Nothing}
instance ToResourceProperties ApiGatewayManagedOverrides where
  toResourceProperties ApiGatewayManagedOverrides {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId]
                           (Prelude.catMaybes
                              [(JSON..=) "Integration" Prelude.<$> integration,
                               (JSON..=) "Route" Prelude.<$> route,
                               (JSON..=) "Stage" Prelude.<$> stage]))}
instance JSON.ToJSON ApiGatewayManagedOverrides where
  toJSON ApiGatewayManagedOverrides {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId]
              (Prelude.catMaybes
                 [(JSON..=) "Integration" Prelude.<$> integration,
                  (JSON..=) "Route" Prelude.<$> route,
                  (JSON..=) "Stage" Prelude.<$> stage])))
instance Property "ApiId" ApiGatewayManagedOverrides where
  type PropertyType "ApiId" ApiGatewayManagedOverrides = Value Prelude.Text
  set newValue ApiGatewayManagedOverrides {..}
    = ApiGatewayManagedOverrides {apiId = newValue, ..}
instance Property "Integration" ApiGatewayManagedOverrides where
  type PropertyType "Integration" ApiGatewayManagedOverrides = IntegrationOverridesProperty
  set newValue ApiGatewayManagedOverrides {..}
    = ApiGatewayManagedOverrides
        {integration = Prelude.pure newValue, ..}
instance Property "Route" ApiGatewayManagedOverrides where
  type PropertyType "Route" ApiGatewayManagedOverrides = RouteOverridesProperty
  set newValue ApiGatewayManagedOverrides {..}
    = ApiGatewayManagedOverrides {route = Prelude.pure newValue, ..}
instance Property "Stage" ApiGatewayManagedOverrides where
  type PropertyType "Stage" ApiGatewayManagedOverrides = StageOverridesProperty
  set newValue ApiGatewayManagedOverrides {..}
    = ApiGatewayManagedOverrides {stage = Prelude.pure newValue, ..}