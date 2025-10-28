module Stratosphere.CodeDeploy.DeploymentGroup (
        module Exports, DeploymentGroup(..), mkDeploymentGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.AlarmConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.AutoRollbackConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.BlueGreenDeploymentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.DeploymentProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.DeploymentStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.EC2TagFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.EC2TagSetProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.ECSServiceProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.LoadBalancerInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.OnPremisesTagSetProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TagFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TriggerConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeploymentGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html>
    DeploymentGroup {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-alarmconfiguration>
                     alarmConfiguration :: (Prelude.Maybe AlarmConfigurationProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-applicationname>
                     applicationName :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration>
                     autoRollbackConfiguration :: (Prelude.Maybe AutoRollbackConfigurationProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autoscalinggroups>
                     autoScalingGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration>
                     blueGreenDeploymentConfiguration :: (Prelude.Maybe BlueGreenDeploymentConfigurationProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deployment>
                     deployment :: (Prelude.Maybe DeploymentProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentconfigname>
                     deploymentConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentgroupname>
                     deploymentGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentstyle>
                     deploymentStyle :: (Prelude.Maybe DeploymentStyleProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ecsservices>
                     eCSServices :: (Prelude.Maybe [ECSServiceProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagfilters>
                     ec2TagFilters :: (Prelude.Maybe [EC2TagFilterProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagset>
                     ec2TagSet :: (Prelude.Maybe EC2TagSetProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo>
                     loadBalancerInfo :: (Prelude.Maybe LoadBalancerInfoProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisesinstancetagfilters>
                     onPremisesInstanceTagFilters :: (Prelude.Maybe [TagFilterProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisestagset>
                     onPremisesTagSet :: (Prelude.Maybe OnPremisesTagSetProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-outdatedinstancesstrategy>
                     outdatedInstancesStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-servicerolearn>
                     serviceRoleArn :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-terminationhookenabled>
                     terminationHookEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-triggerconfigurations>
                     triggerConfigurations :: (Prelude.Maybe [TriggerConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentGroup ::
  Value Prelude.Text -> Value Prelude.Text -> DeploymentGroup
mkDeploymentGroup applicationName serviceRoleArn
  = DeploymentGroup
      {haddock_workaround_ = (), applicationName = applicationName,
       serviceRoleArn = serviceRoleArn,
       alarmConfiguration = Prelude.Nothing,
       autoRollbackConfiguration = Prelude.Nothing,
       autoScalingGroups = Prelude.Nothing,
       blueGreenDeploymentConfiguration = Prelude.Nothing,
       deployment = Prelude.Nothing,
       deploymentConfigName = Prelude.Nothing,
       deploymentGroupName = Prelude.Nothing,
       deploymentStyle = Prelude.Nothing, eCSServices = Prelude.Nothing,
       ec2TagFilters = Prelude.Nothing, ec2TagSet = Prelude.Nothing,
       loadBalancerInfo = Prelude.Nothing,
       onPremisesInstanceTagFilters = Prelude.Nothing,
       onPremisesTagSet = Prelude.Nothing,
       outdatedInstancesStrategy = Prelude.Nothing,
       tags = Prelude.Nothing, terminationHookEnabled = Prelude.Nothing,
       triggerConfigurations = Prelude.Nothing}
instance ToResourceProperties DeploymentGroup where
  toResourceProperties DeploymentGroup {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationName" JSON..= applicationName,
                            "ServiceRoleArn" JSON..= serviceRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AlarmConfiguration" Prelude.<$> alarmConfiguration,
                               (JSON..=) "AutoRollbackConfiguration"
                                 Prelude.<$> autoRollbackConfiguration,
                               (JSON..=) "AutoScalingGroups" Prelude.<$> autoScalingGroups,
                               (JSON..=) "BlueGreenDeploymentConfiguration"
                                 Prelude.<$> blueGreenDeploymentConfiguration,
                               (JSON..=) "Deployment" Prelude.<$> deployment,
                               (JSON..=) "DeploymentConfigName" Prelude.<$> deploymentConfigName,
                               (JSON..=) "DeploymentGroupName" Prelude.<$> deploymentGroupName,
                               (JSON..=) "DeploymentStyle" Prelude.<$> deploymentStyle,
                               (JSON..=) "ECSServices" Prelude.<$> eCSServices,
                               (JSON..=) "Ec2TagFilters" Prelude.<$> ec2TagFilters,
                               (JSON..=) "Ec2TagSet" Prelude.<$> ec2TagSet,
                               (JSON..=) "LoadBalancerInfo" Prelude.<$> loadBalancerInfo,
                               (JSON..=) "OnPremisesInstanceTagFilters"
                                 Prelude.<$> onPremisesInstanceTagFilters,
                               (JSON..=) "OnPremisesTagSet" Prelude.<$> onPremisesTagSet,
                               (JSON..=) "OutdatedInstancesStrategy"
                                 Prelude.<$> outdatedInstancesStrategy,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TerminationHookEnabled"
                                 Prelude.<$> terminationHookEnabled,
                               (JSON..=) "TriggerConfigurations"
                                 Prelude.<$> triggerConfigurations]))}
instance JSON.ToJSON DeploymentGroup where
  toJSON DeploymentGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationName" JSON..= applicationName,
               "ServiceRoleArn" JSON..= serviceRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AlarmConfiguration" Prelude.<$> alarmConfiguration,
                  (JSON..=) "AutoRollbackConfiguration"
                    Prelude.<$> autoRollbackConfiguration,
                  (JSON..=) "AutoScalingGroups" Prelude.<$> autoScalingGroups,
                  (JSON..=) "BlueGreenDeploymentConfiguration"
                    Prelude.<$> blueGreenDeploymentConfiguration,
                  (JSON..=) "Deployment" Prelude.<$> deployment,
                  (JSON..=) "DeploymentConfigName" Prelude.<$> deploymentConfigName,
                  (JSON..=) "DeploymentGroupName" Prelude.<$> deploymentGroupName,
                  (JSON..=) "DeploymentStyle" Prelude.<$> deploymentStyle,
                  (JSON..=) "ECSServices" Prelude.<$> eCSServices,
                  (JSON..=) "Ec2TagFilters" Prelude.<$> ec2TagFilters,
                  (JSON..=) "Ec2TagSet" Prelude.<$> ec2TagSet,
                  (JSON..=) "LoadBalancerInfo" Prelude.<$> loadBalancerInfo,
                  (JSON..=) "OnPremisesInstanceTagFilters"
                    Prelude.<$> onPremisesInstanceTagFilters,
                  (JSON..=) "OnPremisesTagSet" Prelude.<$> onPremisesTagSet,
                  (JSON..=) "OutdatedInstancesStrategy"
                    Prelude.<$> outdatedInstancesStrategy,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TerminationHookEnabled"
                    Prelude.<$> terminationHookEnabled,
                  (JSON..=) "TriggerConfigurations"
                    Prelude.<$> triggerConfigurations])))
instance Property "AlarmConfiguration" DeploymentGroup where
  type PropertyType "AlarmConfiguration" DeploymentGroup = AlarmConfigurationProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup {alarmConfiguration = Prelude.pure newValue, ..}
instance Property "ApplicationName" DeploymentGroup where
  type PropertyType "ApplicationName" DeploymentGroup = Value Prelude.Text
  set newValue DeploymentGroup {..}
    = DeploymentGroup {applicationName = newValue, ..}
instance Property "AutoRollbackConfiguration" DeploymentGroup where
  type PropertyType "AutoRollbackConfiguration" DeploymentGroup = AutoRollbackConfigurationProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {autoRollbackConfiguration = Prelude.pure newValue, ..}
instance Property "AutoScalingGroups" DeploymentGroup where
  type PropertyType "AutoScalingGroups" DeploymentGroup = ValueList Prelude.Text
  set newValue DeploymentGroup {..}
    = DeploymentGroup {autoScalingGroups = Prelude.pure newValue, ..}
instance Property "BlueGreenDeploymentConfiguration" DeploymentGroup where
  type PropertyType "BlueGreenDeploymentConfiguration" DeploymentGroup = BlueGreenDeploymentConfigurationProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {blueGreenDeploymentConfiguration = Prelude.pure newValue, ..}
instance Property "Deployment" DeploymentGroup where
  type PropertyType "Deployment" DeploymentGroup = DeploymentProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup {deployment = Prelude.pure newValue, ..}
instance Property "DeploymentConfigName" DeploymentGroup where
  type PropertyType "DeploymentConfigName" DeploymentGroup = Value Prelude.Text
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {deploymentConfigName = Prelude.pure newValue, ..}
instance Property "DeploymentGroupName" DeploymentGroup where
  type PropertyType "DeploymentGroupName" DeploymentGroup = Value Prelude.Text
  set newValue DeploymentGroup {..}
    = DeploymentGroup {deploymentGroupName = Prelude.pure newValue, ..}
instance Property "DeploymentStyle" DeploymentGroup where
  type PropertyType "DeploymentStyle" DeploymentGroup = DeploymentStyleProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup {deploymentStyle = Prelude.pure newValue, ..}
instance Property "ECSServices" DeploymentGroup where
  type PropertyType "ECSServices" DeploymentGroup = [ECSServiceProperty]
  set newValue DeploymentGroup {..}
    = DeploymentGroup {eCSServices = Prelude.pure newValue, ..}
instance Property "Ec2TagFilters" DeploymentGroup where
  type PropertyType "Ec2TagFilters" DeploymentGroup = [EC2TagFilterProperty]
  set newValue DeploymentGroup {..}
    = DeploymentGroup {ec2TagFilters = Prelude.pure newValue, ..}
instance Property "Ec2TagSet" DeploymentGroup where
  type PropertyType "Ec2TagSet" DeploymentGroup = EC2TagSetProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup {ec2TagSet = Prelude.pure newValue, ..}
instance Property "LoadBalancerInfo" DeploymentGroup where
  type PropertyType "LoadBalancerInfo" DeploymentGroup = LoadBalancerInfoProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup {loadBalancerInfo = Prelude.pure newValue, ..}
instance Property "OnPremisesInstanceTagFilters" DeploymentGroup where
  type PropertyType "OnPremisesInstanceTagFilters" DeploymentGroup = [TagFilterProperty]
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {onPremisesInstanceTagFilters = Prelude.pure newValue, ..}
instance Property "OnPremisesTagSet" DeploymentGroup where
  type PropertyType "OnPremisesTagSet" DeploymentGroup = OnPremisesTagSetProperty
  set newValue DeploymentGroup {..}
    = DeploymentGroup {onPremisesTagSet = Prelude.pure newValue, ..}
instance Property "OutdatedInstancesStrategy" DeploymentGroup where
  type PropertyType "OutdatedInstancesStrategy" DeploymentGroup = Value Prelude.Text
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {outdatedInstancesStrategy = Prelude.pure newValue, ..}
instance Property "ServiceRoleArn" DeploymentGroup where
  type PropertyType "ServiceRoleArn" DeploymentGroup = Value Prelude.Text
  set newValue DeploymentGroup {..}
    = DeploymentGroup {serviceRoleArn = newValue, ..}
instance Property "Tags" DeploymentGroup where
  type PropertyType "Tags" DeploymentGroup = [Tag]
  set newValue DeploymentGroup {..}
    = DeploymentGroup {tags = Prelude.pure newValue, ..}
instance Property "TerminationHookEnabled" DeploymentGroup where
  type PropertyType "TerminationHookEnabled" DeploymentGroup = Value Prelude.Bool
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {terminationHookEnabled = Prelude.pure newValue, ..}
instance Property "TriggerConfigurations" DeploymentGroup where
  type PropertyType "TriggerConfigurations" DeploymentGroup = [TriggerConfigProperty]
  set newValue DeploymentGroup {..}
    = DeploymentGroup
        {triggerConfigurations = Prelude.pure newValue, ..}