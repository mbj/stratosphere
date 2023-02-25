module Stratosphere.ServiceDiscovery.Service.HealthCheckConfigProperty (
        HealthCheckConfigProperty(..), mkHealthCheckConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigProperty
  = HealthCheckConfigProperty {failureThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                               resourcePath :: (Prelude.Maybe (Value Prelude.Text)),
                               type' :: (Value Prelude.Text)}
mkHealthCheckConfigProperty ::
  Value Prelude.Text -> HealthCheckConfigProperty
mkHealthCheckConfigProperty type'
  = HealthCheckConfigProperty
      {type' = type', failureThreshold = Prelude.Nothing,
       resourcePath = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigProperty where
  toResourceProperties HealthCheckConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Service.HealthCheckConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "FailureThreshold" Prelude.<$> failureThreshold,
                               (JSON..=) "ResourcePath" Prelude.<$> resourcePath]))}
instance JSON.ToJSON HealthCheckConfigProperty where
  toJSON HealthCheckConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "FailureThreshold" Prelude.<$> failureThreshold,
                  (JSON..=) "ResourcePath" Prelude.<$> resourcePath])))
instance Property "FailureThreshold" HealthCheckConfigProperty where
  type PropertyType "FailureThreshold" HealthCheckConfigProperty = Value Prelude.Double
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {failureThreshold = Prelude.pure newValue, ..}
instance Property "ResourcePath" HealthCheckConfigProperty where
  type PropertyType "ResourcePath" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {resourcePath = Prelude.pure newValue, ..}
instance Property "Type" HealthCheckConfigProperty where
  type PropertyType "Type" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {type' = newValue, ..}