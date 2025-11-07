module Stratosphere.ECS.Service.LoadBalancerProperty (
        module Exports, LoadBalancerProperty(..), mkLoadBalancerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.AdvancedConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html>
    LoadBalancerProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-advancedconfiguration>
                          advancedConfiguration :: (Prelude.Maybe AdvancedConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-containername>
                          containerName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-containerport>
                          containerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-loadbalancername>
                          loadBalancerName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-targetgrouparn>
                          targetGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancerProperty :: LoadBalancerProperty
mkLoadBalancerProperty
  = LoadBalancerProperty
      {haddock_workaround_ = (), advancedConfiguration = Prelude.Nothing,
       containerName = Prelude.Nothing, containerPort = Prelude.Nothing,
       loadBalancerName = Prelude.Nothing,
       targetGroupArn = Prelude.Nothing}
instance ToResourceProperties LoadBalancerProperty where
  toResourceProperties LoadBalancerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.LoadBalancer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdvancedConfiguration"
                              Prelude.<$> advancedConfiguration,
                            (JSON..=) "ContainerName" Prelude.<$> containerName,
                            (JSON..=) "ContainerPort" Prelude.<$> containerPort,
                            (JSON..=) "LoadBalancerName" Prelude.<$> loadBalancerName,
                            (JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn])}
instance JSON.ToJSON LoadBalancerProperty where
  toJSON LoadBalancerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdvancedConfiguration"
                 Prelude.<$> advancedConfiguration,
               (JSON..=) "ContainerName" Prelude.<$> containerName,
               (JSON..=) "ContainerPort" Prelude.<$> containerPort,
               (JSON..=) "LoadBalancerName" Prelude.<$> loadBalancerName,
               (JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn]))
instance Property "AdvancedConfiguration" LoadBalancerProperty where
  type PropertyType "AdvancedConfiguration" LoadBalancerProperty = AdvancedConfigurationProperty
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty
        {advancedConfiguration = Prelude.pure newValue, ..}
instance Property "ContainerName" LoadBalancerProperty where
  type PropertyType "ContainerName" LoadBalancerProperty = Value Prelude.Text
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty {containerName = Prelude.pure newValue, ..}
instance Property "ContainerPort" LoadBalancerProperty where
  type PropertyType "ContainerPort" LoadBalancerProperty = Value Prelude.Integer
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty {containerPort = Prelude.pure newValue, ..}
instance Property "LoadBalancerName" LoadBalancerProperty where
  type PropertyType "LoadBalancerName" LoadBalancerProperty = Value Prelude.Text
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty
        {loadBalancerName = Prelude.pure newValue, ..}
instance Property "TargetGroupArn" LoadBalancerProperty where
  type PropertyType "TargetGroupArn" LoadBalancerProperty = Value Prelude.Text
  set newValue LoadBalancerProperty {..}
    = LoadBalancerProperty {targetGroupArn = Prelude.pure newValue, ..}