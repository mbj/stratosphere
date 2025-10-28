module Stratosphere.Lightsail.Container.HealthCheckConfigProperty (
        HealthCheckConfigProperty(..), mkHealthCheckConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html>
    HealthCheckConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html#cfn-lightsail-container-healthcheckconfig-healthythreshold>
                               healthyThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html#cfn-lightsail-container-healthcheckconfig-intervalseconds>
                               intervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html#cfn-lightsail-container-healthcheckconfig-path>
                               path :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html#cfn-lightsail-container-healthcheckconfig-successcodes>
                               successCodes :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html#cfn-lightsail-container-healthcheckconfig-timeoutseconds>
                               timeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-healthcheckconfig.html#cfn-lightsail-container-healthcheckconfig-unhealthythreshold>
                               unhealthyThreshold :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckConfigProperty :: HealthCheckConfigProperty
mkHealthCheckConfigProperty
  = HealthCheckConfigProperty
      {haddock_workaround_ = (), healthyThreshold = Prelude.Nothing,
       intervalSeconds = Prelude.Nothing, path = Prelude.Nothing,
       successCodes = Prelude.Nothing, timeoutSeconds = Prelude.Nothing,
       unhealthyThreshold = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigProperty where
  toResourceProperties HealthCheckConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.HealthCheckConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HealthyThreshold" Prelude.<$> healthyThreshold,
                            (JSON..=) "IntervalSeconds" Prelude.<$> intervalSeconds,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "SuccessCodes" Prelude.<$> successCodes,
                            (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds,
                            (JSON..=) "UnhealthyThreshold" Prelude.<$> unhealthyThreshold])}
instance JSON.ToJSON HealthCheckConfigProperty where
  toJSON HealthCheckConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HealthyThreshold" Prelude.<$> healthyThreshold,
               (JSON..=) "IntervalSeconds" Prelude.<$> intervalSeconds,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "SuccessCodes" Prelude.<$> successCodes,
               (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds,
               (JSON..=) "UnhealthyThreshold" Prelude.<$> unhealthyThreshold]))
instance Property "HealthyThreshold" HealthCheckConfigProperty where
  type PropertyType "HealthyThreshold" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {healthyThreshold = Prelude.pure newValue, ..}
instance Property "IntervalSeconds" HealthCheckConfigProperty where
  type PropertyType "IntervalSeconds" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {intervalSeconds = Prelude.pure newValue, ..}
instance Property "Path" HealthCheckConfigProperty where
  type PropertyType "Path" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {path = Prelude.pure newValue, ..}
instance Property "SuccessCodes" HealthCheckConfigProperty where
  type PropertyType "SuccessCodes" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {successCodes = Prelude.pure newValue, ..}
instance Property "TimeoutSeconds" HealthCheckConfigProperty where
  type PropertyType "TimeoutSeconds" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {timeoutSeconds = Prelude.pure newValue, ..}
instance Property "UnhealthyThreshold" HealthCheckConfigProperty where
  type PropertyType "UnhealthyThreshold" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {unhealthyThreshold = Prelude.pure newValue, ..}