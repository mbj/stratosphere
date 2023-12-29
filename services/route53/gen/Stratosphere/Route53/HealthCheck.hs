module Stratosphere.Route53.HealthCheck (
        module Exports, HealthCheck(..), mkHealthCheck
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.HealthCheck.HealthCheckConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.HealthCheck.HealthCheckTagProperty as Exports
import Stratosphere.ResourceProperties
data HealthCheck
  = HealthCheck {healthCheckConfig :: HealthCheckConfigProperty,
                 healthCheckTags :: (Prelude.Maybe [HealthCheckTagProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheck :: HealthCheckConfigProperty -> HealthCheck
mkHealthCheck healthCheckConfig
  = HealthCheck
      {healthCheckConfig = healthCheckConfig,
       healthCheckTags = Prelude.Nothing}
instance ToResourceProperties HealthCheck where
  toResourceProperties HealthCheck {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HealthCheck",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HealthCheckConfig" JSON..= healthCheckConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "HealthCheckTags" Prelude.<$> healthCheckTags]))}
instance JSON.ToJSON HealthCheck where
  toJSON HealthCheck {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HealthCheckConfig" JSON..= healthCheckConfig]
              (Prelude.catMaybes
                 [(JSON..=) "HealthCheckTags" Prelude.<$> healthCheckTags])))
instance Property "HealthCheckConfig" HealthCheck where
  type PropertyType "HealthCheckConfig" HealthCheck = HealthCheckConfigProperty
  set newValue HealthCheck {..}
    = HealthCheck {healthCheckConfig = newValue, ..}
instance Property "HealthCheckTags" HealthCheck where
  type PropertyType "HealthCheckTags" HealthCheck = [HealthCheckTagProperty]
  set newValue HealthCheck {..}
    = HealthCheck {healthCheckTags = Prelude.pure newValue, ..}