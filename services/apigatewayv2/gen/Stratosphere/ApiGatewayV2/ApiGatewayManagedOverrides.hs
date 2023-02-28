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
  = ApiGatewayManagedOverrides {apiId :: (Value Prelude.Text),
                                integration :: (Prelude.Maybe IntegrationOverridesProperty),
                                route :: (Prelude.Maybe RouteOverridesProperty),
                                stage :: (Prelude.Maybe StageOverridesProperty)}
mkApiGatewayManagedOverrides ::
  Value Prelude.Text -> ApiGatewayManagedOverrides
mkApiGatewayManagedOverrides apiId
  = ApiGatewayManagedOverrides
      {apiId = apiId, integration = Prelude.Nothing,
       route = Prelude.Nothing, stage = Prelude.Nothing}
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