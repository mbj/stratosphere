module Stratosphere.ECS.TaskSet.LoadBalancerProperty (
        LoadBalancerProperty(..), mkLoadBalancerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerProperty
  = LoadBalancerProperty {containerName :: (Prelude.Maybe (Value Prelude.Text)),
                          containerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                          targetGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancerProperty :: LoadBalancerProperty
mkLoadBalancerProperty
  = LoadBalancerProperty
      {containerName = Prelude.Nothing, containerPort = Prelude.Nothing,
       targetGroupArn = Prelude.Nothing}
instance ToResourceProperties LoadBalancerProperty where
  toResourceProperties LoadBalancerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet.LoadBalancer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerName" Prelude.<$> containerName,
                            (JSON..=) "ContainerPort" Prelude.<$> containerPort,
                            (JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn])}
instance JSON.ToJSON LoadBalancerProperty where
  toJSON LoadBalancerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerName" Prelude.<$> containerName,
               (JSON..=) "ContainerPort" Prelude.<$> containerPort,
               (JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn]))
instance Property "ContainerName" LoadBalancerProperty where
  type PropertyType "ContainerName" LoadBalancerProperty = Value Prelude.Text
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty {containerName = Prelude.pure newValue, ..}
instance Property "ContainerPort" LoadBalancerProperty where
  type PropertyType "ContainerPort" LoadBalancerProperty = Value Prelude.Integer
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty {containerPort = Prelude.pure newValue, ..}
instance Property "TargetGroupArn" LoadBalancerProperty where
  type PropertyType "TargetGroupArn" LoadBalancerProperty = Value Prelude.Text
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty {targetGroupArn = Prelude.pure newValue, ..}