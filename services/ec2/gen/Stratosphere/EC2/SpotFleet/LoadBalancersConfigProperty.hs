module Stratosphere.EC2.SpotFleet.LoadBalancersConfigProperty (
        module Exports, LoadBalancersConfigProperty(..),
        mkLoadBalancersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.ClassicLoadBalancersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.TargetGroupsConfigProperty as Exports
import Stratosphere.ResourceProperties
data LoadBalancersConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html>
    LoadBalancersConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-classicloadbalancersconfig>
                                 classicLoadBalancersConfig :: (Prelude.Maybe ClassicLoadBalancersConfigProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-targetgroupsconfig>
                                 targetGroupsConfig :: (Prelude.Maybe TargetGroupsConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancersConfigProperty :: LoadBalancersConfigProperty
mkLoadBalancersConfigProperty
  = LoadBalancersConfigProperty
      {haddock_workaround_ = (),
       classicLoadBalancersConfig = Prelude.Nothing,
       targetGroupsConfig = Prelude.Nothing}
instance ToResourceProperties LoadBalancersConfigProperty where
  toResourceProperties LoadBalancersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.LoadBalancersConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClassicLoadBalancersConfig"
                              Prelude.<$> classicLoadBalancersConfig,
                            (JSON..=) "TargetGroupsConfig" Prelude.<$> targetGroupsConfig])}
instance JSON.ToJSON LoadBalancersConfigProperty where
  toJSON LoadBalancersConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClassicLoadBalancersConfig"
                 Prelude.<$> classicLoadBalancersConfig,
               (JSON..=) "TargetGroupsConfig" Prelude.<$> targetGroupsConfig]))
instance Property "ClassicLoadBalancersConfig" LoadBalancersConfigProperty where
  type PropertyType "ClassicLoadBalancersConfig" LoadBalancersConfigProperty = ClassicLoadBalancersConfigProperty
  set newValue LoadBalancersConfigProperty {..}
    = LoadBalancersConfigProperty
        {classicLoadBalancersConfig = Prelude.pure newValue, ..}
instance Property "TargetGroupsConfig" LoadBalancersConfigProperty where
  type PropertyType "TargetGroupsConfig" LoadBalancersConfigProperty = TargetGroupsConfigProperty
  set newValue LoadBalancersConfigProperty {..}
    = LoadBalancersConfigProperty
        {targetGroupsConfig = Prelude.pure newValue, ..}