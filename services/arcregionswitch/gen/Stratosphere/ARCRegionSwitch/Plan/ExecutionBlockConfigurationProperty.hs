module Stratosphere.ARCRegionSwitch.Plan.ExecutionBlockConfigurationProperty (
        module Exports, ExecutionBlockConfigurationProperty(..),
        mkExecutionBlockConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.ArcRoutingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.CustomActionLambdaConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.Ec2AsgCapacityIncreaseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.EcsCapacityIncreaseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.EksResourceScalingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.ExecutionApprovalConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.GlobalAuroraConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.ParallelExecutionBlockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.RegionSwitchPlanConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.Route53HealthCheckConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ExecutionBlockConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html>
    ExecutionBlockConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-arcroutingcontrolconfig>
                                         arcRoutingControlConfig :: (Prelude.Maybe ArcRoutingControlConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-customactionlambdaconfig>
                                         customActionLambdaConfig :: (Prelude.Maybe CustomActionLambdaConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-ec2asgcapacityincreaseconfig>
                                         ec2AsgCapacityIncreaseConfig :: (Prelude.Maybe Ec2AsgCapacityIncreaseConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-ecscapacityincreaseconfig>
                                         ecsCapacityIncreaseConfig :: (Prelude.Maybe EcsCapacityIncreaseConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-eksresourcescalingconfig>
                                         eksResourceScalingConfig :: (Prelude.Maybe EksResourceScalingConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-executionapprovalconfig>
                                         executionApprovalConfig :: (Prelude.Maybe ExecutionApprovalConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-globalauroraconfig>
                                         globalAuroraConfig :: (Prelude.Maybe GlobalAuroraConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-parallelconfig>
                                         parallelConfig :: (Prelude.Maybe ParallelExecutionBlockConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-regionswitchplanconfig>
                                         regionSwitchPlanConfig :: (Prelude.Maybe RegionSwitchPlanConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-route53healthcheckconfig>
                                         route53HealthCheckConfig :: (Prelude.Maybe Route53HealthCheckConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionBlockConfigurationProperty ::
  ExecutionBlockConfigurationProperty
mkExecutionBlockConfigurationProperty
  = ExecutionBlockConfigurationProperty
      {haddock_workaround_ = (),
       arcRoutingControlConfig = Prelude.Nothing,
       customActionLambdaConfig = Prelude.Nothing,
       ec2AsgCapacityIncreaseConfig = Prelude.Nothing,
       ecsCapacityIncreaseConfig = Prelude.Nothing,
       eksResourceScalingConfig = Prelude.Nothing,
       executionApprovalConfig = Prelude.Nothing,
       globalAuroraConfig = Prelude.Nothing,
       parallelConfig = Prelude.Nothing,
       regionSwitchPlanConfig = Prelude.Nothing,
       route53HealthCheckConfig = Prelude.Nothing}
instance ToResourceProperties ExecutionBlockConfigurationProperty where
  toResourceProperties ExecutionBlockConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.ExecutionBlockConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArcRoutingControlConfig"
                              Prelude.<$> arcRoutingControlConfig,
                            (JSON..=) "CustomActionLambdaConfig"
                              Prelude.<$> customActionLambdaConfig,
                            (JSON..=) "Ec2AsgCapacityIncreaseConfig"
                              Prelude.<$> ec2AsgCapacityIncreaseConfig,
                            (JSON..=) "EcsCapacityIncreaseConfig"
                              Prelude.<$> ecsCapacityIncreaseConfig,
                            (JSON..=) "EksResourceScalingConfig"
                              Prelude.<$> eksResourceScalingConfig,
                            (JSON..=) "ExecutionApprovalConfig"
                              Prelude.<$> executionApprovalConfig,
                            (JSON..=) "GlobalAuroraConfig" Prelude.<$> globalAuroraConfig,
                            (JSON..=) "ParallelConfig" Prelude.<$> parallelConfig,
                            (JSON..=) "RegionSwitchPlanConfig"
                              Prelude.<$> regionSwitchPlanConfig,
                            (JSON..=) "Route53HealthCheckConfig"
                              Prelude.<$> route53HealthCheckConfig])}
instance JSON.ToJSON ExecutionBlockConfigurationProperty where
  toJSON ExecutionBlockConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArcRoutingControlConfig"
                 Prelude.<$> arcRoutingControlConfig,
               (JSON..=) "CustomActionLambdaConfig"
                 Prelude.<$> customActionLambdaConfig,
               (JSON..=) "Ec2AsgCapacityIncreaseConfig"
                 Prelude.<$> ec2AsgCapacityIncreaseConfig,
               (JSON..=) "EcsCapacityIncreaseConfig"
                 Prelude.<$> ecsCapacityIncreaseConfig,
               (JSON..=) "EksResourceScalingConfig"
                 Prelude.<$> eksResourceScalingConfig,
               (JSON..=) "ExecutionApprovalConfig"
                 Prelude.<$> executionApprovalConfig,
               (JSON..=) "GlobalAuroraConfig" Prelude.<$> globalAuroraConfig,
               (JSON..=) "ParallelConfig" Prelude.<$> parallelConfig,
               (JSON..=) "RegionSwitchPlanConfig"
                 Prelude.<$> regionSwitchPlanConfig,
               (JSON..=) "Route53HealthCheckConfig"
                 Prelude.<$> route53HealthCheckConfig]))
instance Property "ArcRoutingControlConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "ArcRoutingControlConfig" ExecutionBlockConfigurationProperty = ArcRoutingControlConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {arcRoutingControlConfig = Prelude.pure newValue, ..}
instance Property "CustomActionLambdaConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "CustomActionLambdaConfig" ExecutionBlockConfigurationProperty = CustomActionLambdaConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {customActionLambdaConfig = Prelude.pure newValue, ..}
instance Property "Ec2AsgCapacityIncreaseConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "Ec2AsgCapacityIncreaseConfig" ExecutionBlockConfigurationProperty = Ec2AsgCapacityIncreaseConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {ec2AsgCapacityIncreaseConfig = Prelude.pure newValue, ..}
instance Property "EcsCapacityIncreaseConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "EcsCapacityIncreaseConfig" ExecutionBlockConfigurationProperty = EcsCapacityIncreaseConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {ecsCapacityIncreaseConfig = Prelude.pure newValue, ..}
instance Property "EksResourceScalingConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "EksResourceScalingConfig" ExecutionBlockConfigurationProperty = EksResourceScalingConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {eksResourceScalingConfig = Prelude.pure newValue, ..}
instance Property "ExecutionApprovalConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "ExecutionApprovalConfig" ExecutionBlockConfigurationProperty = ExecutionApprovalConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {executionApprovalConfig = Prelude.pure newValue, ..}
instance Property "GlobalAuroraConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "GlobalAuroraConfig" ExecutionBlockConfigurationProperty = GlobalAuroraConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {globalAuroraConfig = Prelude.pure newValue, ..}
instance Property "ParallelConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "ParallelConfig" ExecutionBlockConfigurationProperty = ParallelExecutionBlockConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {parallelConfig = Prelude.pure newValue, ..}
instance Property "RegionSwitchPlanConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "RegionSwitchPlanConfig" ExecutionBlockConfigurationProperty = RegionSwitchPlanConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {regionSwitchPlanConfig = Prelude.pure newValue, ..}
instance Property "Route53HealthCheckConfig" ExecutionBlockConfigurationProperty where
  type PropertyType "Route53HealthCheckConfig" ExecutionBlockConfigurationProperty = Route53HealthCheckConfigurationProperty
  set newValue ExecutionBlockConfigurationProperty {..}
    = ExecutionBlockConfigurationProperty
        {route53HealthCheckConfig = Prelude.pure newValue, ..}