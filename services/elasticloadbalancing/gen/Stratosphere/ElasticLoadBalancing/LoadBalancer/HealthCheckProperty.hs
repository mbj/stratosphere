module Stratosphere.ElasticLoadBalancing.LoadBalancer.HealthCheckProperty (
        HealthCheckProperty(..), mkHealthCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html>
    HealthCheckProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-healthythreshold>
                         healthyThreshold :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-interval>
                         interval :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-target>
                         target :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-timeout>
                         timeout :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-unhealthythreshold>
                         unhealthyThreshold :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> HealthCheckProperty
mkHealthCheckProperty
  healthyThreshold
  interval
  target
  timeout
  unhealthyThreshold
  = HealthCheckProperty
      {haddock_workaround_ = (), healthyThreshold = healthyThreshold,
       interval = interval, target = target, timeout = timeout,
       unhealthyThreshold = unhealthyThreshold}
instance ToResourceProperties HealthCheckProperty where
  toResourceProperties HealthCheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.HealthCheck",
         supportsTags = Prelude.False,
         properties = ["HealthyThreshold" JSON..= healthyThreshold,
                       "Interval" JSON..= interval, "Target" JSON..= target,
                       "Timeout" JSON..= timeout,
                       "UnhealthyThreshold" JSON..= unhealthyThreshold]}
instance JSON.ToJSON HealthCheckProperty where
  toJSON HealthCheckProperty {..}
    = JSON.object
        ["HealthyThreshold" JSON..= healthyThreshold,
         "Interval" JSON..= interval, "Target" JSON..= target,
         "Timeout" JSON..= timeout,
         "UnhealthyThreshold" JSON..= unhealthyThreshold]
instance Property "HealthyThreshold" HealthCheckProperty where
  type PropertyType "HealthyThreshold" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {healthyThreshold = newValue, ..}
instance Property "Interval" HealthCheckProperty where
  type PropertyType "Interval" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {interval = newValue, ..}
instance Property "Target" HealthCheckProperty where
  type PropertyType "Target" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {target = newValue, ..}
instance Property "Timeout" HealthCheckProperty where
  type PropertyType "Timeout" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {timeout = newValue, ..}
instance Property "UnhealthyThreshold" HealthCheckProperty where
  type PropertyType "UnhealthyThreshold" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {unhealthyThreshold = newValue, ..}