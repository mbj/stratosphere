module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.StageOverridesProperty (
        module Exports, StageOverridesProperty(..),
        mkStageOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.AccessLogSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.RouteSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageOverridesProperty
  = StageOverridesProperty {accessLogSettings :: (Prelude.Maybe AccessLogSettingsProperty),
                            autoDeploy :: (Prelude.Maybe (Value Prelude.Bool)),
                            defaultRouteSettings :: (Prelude.Maybe RouteSettingsProperty),
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            routeSettings :: (Prelude.Maybe JSON.Object),
                            stageVariables :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageOverridesProperty :: StageOverridesProperty
mkStageOverridesProperty
  = StageOverridesProperty
      {accessLogSettings = Prelude.Nothing, autoDeploy = Prelude.Nothing,
       defaultRouteSettings = Prelude.Nothing,
       description = Prelude.Nothing, routeSettings = Prelude.Nothing,
       stageVariables = Prelude.Nothing}
instance ToResourceProperties StageOverridesProperty where
  toResourceProperties StageOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.StageOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessLogSettings" Prelude.<$> accessLogSettings,
                            (JSON..=) "AutoDeploy" Prelude.<$> autoDeploy,
                            (JSON..=) "DefaultRouteSettings" Prelude.<$> defaultRouteSettings,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "RouteSettings" Prelude.<$> routeSettings,
                            (JSON..=) "StageVariables" Prelude.<$> stageVariables])}
instance JSON.ToJSON StageOverridesProperty where
  toJSON StageOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessLogSettings" Prelude.<$> accessLogSettings,
               (JSON..=) "AutoDeploy" Prelude.<$> autoDeploy,
               (JSON..=) "DefaultRouteSettings" Prelude.<$> defaultRouteSettings,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "RouteSettings" Prelude.<$> routeSettings,
               (JSON..=) "StageVariables" Prelude.<$> stageVariables]))
instance Property "AccessLogSettings" StageOverridesProperty where
  type PropertyType "AccessLogSettings" StageOverridesProperty = AccessLogSettingsProperty
  set newValue StageOverridesProperty {..}
    = StageOverridesProperty
        {accessLogSettings = Prelude.pure newValue, ..}
instance Property "AutoDeploy" StageOverridesProperty where
  type PropertyType "AutoDeploy" StageOverridesProperty = Value Prelude.Bool
  set newValue StageOverridesProperty {..}
    = StageOverridesProperty {autoDeploy = Prelude.pure newValue, ..}
instance Property "DefaultRouteSettings" StageOverridesProperty where
  type PropertyType "DefaultRouteSettings" StageOverridesProperty = RouteSettingsProperty
  set newValue StageOverridesProperty {..}
    = StageOverridesProperty
        {defaultRouteSettings = Prelude.pure newValue, ..}
instance Property "Description" StageOverridesProperty where
  type PropertyType "Description" StageOverridesProperty = Value Prelude.Text
  set newValue StageOverridesProperty {..}
    = StageOverridesProperty {description = Prelude.pure newValue, ..}
instance Property "RouteSettings" StageOverridesProperty where
  type PropertyType "RouteSettings" StageOverridesProperty = JSON.Object
  set newValue StageOverridesProperty {..}
    = StageOverridesProperty
        {routeSettings = Prelude.pure newValue, ..}
instance Property "StageVariables" StageOverridesProperty where
  type PropertyType "StageVariables" StageOverridesProperty = JSON.Object
  set newValue StageOverridesProperty {..}
    = StageOverridesProperty
        {stageVariables = Prelude.pure newValue, ..}