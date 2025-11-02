module Stratosphere.AutoScaling.AutoScalingGroup (
        module Exports, AutoScalingGroup(..), mkAutoScalingGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.AvailabilityZoneDistributionProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.AvailabilityZoneImpairmentPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.CapacityReservationSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.InstanceMaintenancePolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.LifecycleHookSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.MetricsCollectionProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.MixedInstancesPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.NotificationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.TagPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.TrafficSourceIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html>
    AutoScalingGroup {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-autoscalinggroupname>
                      autoScalingGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-availabilityzonedistribution>
                      availabilityZoneDistribution :: (Prelude.Maybe AvailabilityZoneDistributionProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-availabilityzoneimpairmentpolicy>
                      availabilityZoneImpairmentPolicy :: (Prelude.Maybe AvailabilityZoneImpairmentPolicyProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-availabilityzones>
                      availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-capacityrebalance>
                      capacityRebalance :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-capacityreservationspecification>
                      capacityReservationSpecification :: (Prelude.Maybe CapacityReservationSpecificationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-context>
                      context :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-cooldown>
                      cooldown :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-defaultinstancewarmup>
                      defaultInstanceWarmup :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-desiredcapacity>
                      desiredCapacity :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-desiredcapacitytype>
                      desiredCapacityType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-healthcheckgraceperiod>
                      healthCheckGracePeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-healthchecktype>
                      healthCheckType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-instanceid>
                      instanceId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-instancemaintenancepolicy>
                      instanceMaintenancePolicy :: (Prelude.Maybe InstanceMaintenancePolicyProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-launchconfigurationname>
                      launchConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-launchtemplate>
                      launchTemplate :: (Prelude.Maybe LaunchTemplateSpecificationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecificationlist>
                      lifecycleHookSpecificationList :: (Prelude.Maybe [LifecycleHookSpecificationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-loadbalancernames>
                      loadBalancerNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-maxinstancelifetime>
                      maxInstanceLifetime :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-maxsize>
                      maxSize :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-metricscollection>
                      metricsCollection :: (Prelude.Maybe [MetricsCollectionProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-minsize>
                      minSize :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-mixedinstancespolicy>
                      mixedInstancesPolicy :: (Prelude.Maybe MixedInstancesPolicyProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-newinstancesprotectedfromscalein>
                      newInstancesProtectedFromScaleIn :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations>
                      notificationConfigurations :: (Prelude.Maybe [NotificationConfigurationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-placementgroup>
                      placementGroup :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-servicelinkedrolearn>
                      serviceLinkedRoleARN :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-skipzonalshiftvalidation>
                      skipZonalShiftValidation :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-tags>
                      tags :: (Prelude.Maybe [TagPropertyProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-targetgrouparns>
                      targetGroupARNs :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-terminationpolicies>
                      terminationPolicies :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-trafficsources>
                      trafficSources :: (Prelude.Maybe [TrafficSourceIdentifierProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#cfn-autoscaling-autoscalinggroup-vpczoneidentifier>
                      vPCZoneIdentifier :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingGroup ::
  Value Prelude.Text -> Value Prelude.Text -> AutoScalingGroup
mkAutoScalingGroup maxSize minSize
  = AutoScalingGroup
      {haddock_workaround_ = (), maxSize = maxSize, minSize = minSize,
       autoScalingGroupName = Prelude.Nothing,
       availabilityZoneDistribution = Prelude.Nothing,
       availabilityZoneImpairmentPolicy = Prelude.Nothing,
       availabilityZones = Prelude.Nothing,
       capacityRebalance = Prelude.Nothing,
       capacityReservationSpecification = Prelude.Nothing,
       context = Prelude.Nothing, cooldown = Prelude.Nothing,
       defaultInstanceWarmup = Prelude.Nothing,
       desiredCapacity = Prelude.Nothing,
       desiredCapacityType = Prelude.Nothing,
       healthCheckGracePeriod = Prelude.Nothing,
       healthCheckType = Prelude.Nothing, instanceId = Prelude.Nothing,
       instanceMaintenancePolicy = Prelude.Nothing,
       launchConfigurationName = Prelude.Nothing,
       launchTemplate = Prelude.Nothing,
       lifecycleHookSpecificationList = Prelude.Nothing,
       loadBalancerNames = Prelude.Nothing,
       maxInstanceLifetime = Prelude.Nothing,
       metricsCollection = Prelude.Nothing,
       mixedInstancesPolicy = Prelude.Nothing,
       newInstancesProtectedFromScaleIn = Prelude.Nothing,
       notificationConfigurations = Prelude.Nothing,
       placementGroup = Prelude.Nothing,
       serviceLinkedRoleARN = Prelude.Nothing,
       skipZonalShiftValidation = Prelude.Nothing, tags = Prelude.Nothing,
       targetGroupARNs = Prelude.Nothing,
       terminationPolicies = Prelude.Nothing,
       trafficSources = Prelude.Nothing,
       vPCZoneIdentifier = Prelude.Nothing}
instance ToResourceProperties AutoScalingGroup where
  toResourceProperties AutoScalingGroup {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxSize" JSON..= maxSize, "MinSize" JSON..= minSize]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingGroupName" Prelude.<$> autoScalingGroupName,
                               (JSON..=) "AvailabilityZoneDistribution"
                                 Prelude.<$> availabilityZoneDistribution,
                               (JSON..=) "AvailabilityZoneImpairmentPolicy"
                                 Prelude.<$> availabilityZoneImpairmentPolicy,
                               (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                               (JSON..=) "CapacityRebalance" Prelude.<$> capacityRebalance,
                               (JSON..=) "CapacityReservationSpecification"
                                 Prelude.<$> capacityReservationSpecification,
                               (JSON..=) "Context" Prelude.<$> context,
                               (JSON..=) "Cooldown" Prelude.<$> cooldown,
                               (JSON..=) "DefaultInstanceWarmup"
                                 Prelude.<$> defaultInstanceWarmup,
                               (JSON..=) "DesiredCapacity" Prelude.<$> desiredCapacity,
                               (JSON..=) "DesiredCapacityType" Prelude.<$> desiredCapacityType,
                               (JSON..=) "HealthCheckGracePeriod"
                                 Prelude.<$> healthCheckGracePeriod,
                               (JSON..=) "HealthCheckType" Prelude.<$> healthCheckType,
                               (JSON..=) "InstanceId" Prelude.<$> instanceId,
                               (JSON..=) "InstanceMaintenancePolicy"
                                 Prelude.<$> instanceMaintenancePolicy,
                               (JSON..=) "LaunchConfigurationName"
                                 Prelude.<$> launchConfigurationName,
                               (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                               (JSON..=) "LifecycleHookSpecificationList"
                                 Prelude.<$> lifecycleHookSpecificationList,
                               (JSON..=) "LoadBalancerNames" Prelude.<$> loadBalancerNames,
                               (JSON..=) "MaxInstanceLifetime" Prelude.<$> maxInstanceLifetime,
                               (JSON..=) "MetricsCollection" Prelude.<$> metricsCollection,
                               (JSON..=) "MixedInstancesPolicy" Prelude.<$> mixedInstancesPolicy,
                               (JSON..=) "NewInstancesProtectedFromScaleIn"
                                 Prelude.<$> newInstancesProtectedFromScaleIn,
                               (JSON..=) "NotificationConfigurations"
                                 Prelude.<$> notificationConfigurations,
                               (JSON..=) "PlacementGroup" Prelude.<$> placementGroup,
                               (JSON..=) "ServiceLinkedRoleARN" Prelude.<$> serviceLinkedRoleARN,
                               (JSON..=) "SkipZonalShiftValidation"
                                 Prelude.<$> skipZonalShiftValidation,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetGroupARNs" Prelude.<$> targetGroupARNs,
                               (JSON..=) "TerminationPolicies" Prelude.<$> terminationPolicies,
                               (JSON..=) "TrafficSources" Prelude.<$> trafficSources,
                               (JSON..=) "VPCZoneIdentifier" Prelude.<$> vPCZoneIdentifier]))}
instance JSON.ToJSON AutoScalingGroup where
  toJSON AutoScalingGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxSize" JSON..= maxSize, "MinSize" JSON..= minSize]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingGroupName" Prelude.<$> autoScalingGroupName,
                  (JSON..=) "AvailabilityZoneDistribution"
                    Prelude.<$> availabilityZoneDistribution,
                  (JSON..=) "AvailabilityZoneImpairmentPolicy"
                    Prelude.<$> availabilityZoneImpairmentPolicy,
                  (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                  (JSON..=) "CapacityRebalance" Prelude.<$> capacityRebalance,
                  (JSON..=) "CapacityReservationSpecification"
                    Prelude.<$> capacityReservationSpecification,
                  (JSON..=) "Context" Prelude.<$> context,
                  (JSON..=) "Cooldown" Prelude.<$> cooldown,
                  (JSON..=) "DefaultInstanceWarmup"
                    Prelude.<$> defaultInstanceWarmup,
                  (JSON..=) "DesiredCapacity" Prelude.<$> desiredCapacity,
                  (JSON..=) "DesiredCapacityType" Prelude.<$> desiredCapacityType,
                  (JSON..=) "HealthCheckGracePeriod"
                    Prelude.<$> healthCheckGracePeriod,
                  (JSON..=) "HealthCheckType" Prelude.<$> healthCheckType,
                  (JSON..=) "InstanceId" Prelude.<$> instanceId,
                  (JSON..=) "InstanceMaintenancePolicy"
                    Prelude.<$> instanceMaintenancePolicy,
                  (JSON..=) "LaunchConfigurationName"
                    Prelude.<$> launchConfigurationName,
                  (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                  (JSON..=) "LifecycleHookSpecificationList"
                    Prelude.<$> lifecycleHookSpecificationList,
                  (JSON..=) "LoadBalancerNames" Prelude.<$> loadBalancerNames,
                  (JSON..=) "MaxInstanceLifetime" Prelude.<$> maxInstanceLifetime,
                  (JSON..=) "MetricsCollection" Prelude.<$> metricsCollection,
                  (JSON..=) "MixedInstancesPolicy" Prelude.<$> mixedInstancesPolicy,
                  (JSON..=) "NewInstancesProtectedFromScaleIn"
                    Prelude.<$> newInstancesProtectedFromScaleIn,
                  (JSON..=) "NotificationConfigurations"
                    Prelude.<$> notificationConfigurations,
                  (JSON..=) "PlacementGroup" Prelude.<$> placementGroup,
                  (JSON..=) "ServiceLinkedRoleARN" Prelude.<$> serviceLinkedRoleARN,
                  (JSON..=) "SkipZonalShiftValidation"
                    Prelude.<$> skipZonalShiftValidation,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetGroupARNs" Prelude.<$> targetGroupARNs,
                  (JSON..=) "TerminationPolicies" Prelude.<$> terminationPolicies,
                  (JSON..=) "TrafficSources" Prelude.<$> trafficSources,
                  (JSON..=) "VPCZoneIdentifier" Prelude.<$> vPCZoneIdentifier])))
instance Property "AutoScalingGroupName" AutoScalingGroup where
  type PropertyType "AutoScalingGroupName" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {autoScalingGroupName = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneDistribution" AutoScalingGroup where
  type PropertyType "AvailabilityZoneDistribution" AutoScalingGroup = AvailabilityZoneDistributionProperty
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {availabilityZoneDistribution = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneImpairmentPolicy" AutoScalingGroup where
  type PropertyType "AvailabilityZoneImpairmentPolicy" AutoScalingGroup = AvailabilityZoneImpairmentPolicyProperty
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {availabilityZoneImpairmentPolicy = Prelude.pure newValue, ..}
instance Property "AvailabilityZones" AutoScalingGroup where
  type PropertyType "AvailabilityZones" AutoScalingGroup = ValueList Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {availabilityZones = Prelude.pure newValue, ..}
instance Property "CapacityRebalance" AutoScalingGroup where
  type PropertyType "CapacityRebalance" AutoScalingGroup = Value Prelude.Bool
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {capacityRebalance = Prelude.pure newValue, ..}
instance Property "CapacityReservationSpecification" AutoScalingGroup where
  type PropertyType "CapacityReservationSpecification" AutoScalingGroup = CapacityReservationSpecificationProperty
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {capacityReservationSpecification = Prelude.pure newValue, ..}
instance Property "Context" AutoScalingGroup where
  type PropertyType "Context" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {context = Prelude.pure newValue, ..}
instance Property "Cooldown" AutoScalingGroup where
  type PropertyType "Cooldown" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {cooldown = Prelude.pure newValue, ..}
instance Property "DefaultInstanceWarmup" AutoScalingGroup where
  type PropertyType "DefaultInstanceWarmup" AutoScalingGroup = Value Prelude.Integer
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {defaultInstanceWarmup = Prelude.pure newValue, ..}
instance Property "DesiredCapacity" AutoScalingGroup where
  type PropertyType "DesiredCapacity" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {desiredCapacity = Prelude.pure newValue, ..}
instance Property "DesiredCapacityType" AutoScalingGroup where
  type PropertyType "DesiredCapacityType" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {desiredCapacityType = Prelude.pure newValue, ..}
instance Property "HealthCheckGracePeriod" AutoScalingGroup where
  type PropertyType "HealthCheckGracePeriod" AutoScalingGroup = Value Prelude.Integer
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {healthCheckGracePeriod = Prelude.pure newValue, ..}
instance Property "HealthCheckType" AutoScalingGroup where
  type PropertyType "HealthCheckType" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {healthCheckType = Prelude.pure newValue, ..}
instance Property "InstanceId" AutoScalingGroup where
  type PropertyType "InstanceId" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {instanceId = Prelude.pure newValue, ..}
instance Property "InstanceMaintenancePolicy" AutoScalingGroup where
  type PropertyType "InstanceMaintenancePolicy" AutoScalingGroup = InstanceMaintenancePolicyProperty
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {instanceMaintenancePolicy = Prelude.pure newValue, ..}
instance Property "LaunchConfigurationName" AutoScalingGroup where
  type PropertyType "LaunchConfigurationName" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {launchConfigurationName = Prelude.pure newValue, ..}
instance Property "LaunchTemplate" AutoScalingGroup where
  type PropertyType "LaunchTemplate" AutoScalingGroup = LaunchTemplateSpecificationProperty
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {launchTemplate = Prelude.pure newValue, ..}
instance Property "LifecycleHookSpecificationList" AutoScalingGroup where
  type PropertyType "LifecycleHookSpecificationList" AutoScalingGroup = [LifecycleHookSpecificationProperty]
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {lifecycleHookSpecificationList = Prelude.pure newValue, ..}
instance Property "LoadBalancerNames" AutoScalingGroup where
  type PropertyType "LoadBalancerNames" AutoScalingGroup = ValueList Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {loadBalancerNames = Prelude.pure newValue, ..}
instance Property "MaxInstanceLifetime" AutoScalingGroup where
  type PropertyType "MaxInstanceLifetime" AutoScalingGroup = Value Prelude.Integer
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {maxInstanceLifetime = Prelude.pure newValue, ..}
instance Property "MaxSize" AutoScalingGroup where
  type PropertyType "MaxSize" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {maxSize = newValue, ..}
instance Property "MetricsCollection" AutoScalingGroup where
  type PropertyType "MetricsCollection" AutoScalingGroup = [MetricsCollectionProperty]
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {metricsCollection = Prelude.pure newValue, ..}
instance Property "MinSize" AutoScalingGroup where
  type PropertyType "MinSize" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {minSize = newValue, ..}
instance Property "MixedInstancesPolicy" AutoScalingGroup where
  type PropertyType "MixedInstancesPolicy" AutoScalingGroup = MixedInstancesPolicyProperty
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {mixedInstancesPolicy = Prelude.pure newValue, ..}
instance Property "NewInstancesProtectedFromScaleIn" AutoScalingGroup where
  type PropertyType "NewInstancesProtectedFromScaleIn" AutoScalingGroup = Value Prelude.Bool
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {newInstancesProtectedFromScaleIn = Prelude.pure newValue, ..}
instance Property "NotificationConfigurations" AutoScalingGroup where
  type PropertyType "NotificationConfigurations" AutoScalingGroup = [NotificationConfigurationProperty]
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {notificationConfigurations = Prelude.pure newValue, ..}
instance Property "PlacementGroup" AutoScalingGroup where
  type PropertyType "PlacementGroup" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {placementGroup = Prelude.pure newValue, ..}
instance Property "ServiceLinkedRoleARN" AutoScalingGroup where
  type PropertyType "ServiceLinkedRoleARN" AutoScalingGroup = Value Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {serviceLinkedRoleARN = Prelude.pure newValue, ..}
instance Property "SkipZonalShiftValidation" AutoScalingGroup where
  type PropertyType "SkipZonalShiftValidation" AutoScalingGroup = Value Prelude.Bool
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {skipZonalShiftValidation = Prelude.pure newValue, ..}
instance Property "Tags" AutoScalingGroup where
  type PropertyType "Tags" AutoScalingGroup = [TagPropertyProperty]
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {tags = Prelude.pure newValue, ..}
instance Property "TargetGroupARNs" AutoScalingGroup where
  type PropertyType "TargetGroupARNs" AutoScalingGroup = ValueList Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {targetGroupARNs = Prelude.pure newValue, ..}
instance Property "TerminationPolicies" AutoScalingGroup where
  type PropertyType "TerminationPolicies" AutoScalingGroup = ValueList Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup
        {terminationPolicies = Prelude.pure newValue, ..}
instance Property "TrafficSources" AutoScalingGroup where
  type PropertyType "TrafficSources" AutoScalingGroup = [TrafficSourceIdentifierProperty]
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {trafficSources = Prelude.pure newValue, ..}
instance Property "VPCZoneIdentifier" AutoScalingGroup where
  type PropertyType "VPCZoneIdentifier" AutoScalingGroup = ValueList Prelude.Text
  set newValue AutoScalingGroup {..}
    = AutoScalingGroup {vPCZoneIdentifier = Prelude.pure newValue, ..}