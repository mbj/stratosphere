module Stratosphere.EMR.Cluster.JobFlowInstancesConfigProperty (
        module Exports, JobFlowInstancesConfigProperty(..),
        mkJobFlowInstancesConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.InstanceFleetConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.InstanceGroupConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.PlacementTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobFlowInstancesConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html>
    JobFlowInstancesConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-additionalmastersecuritygroups>
                                    additionalMasterSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-additionalslavesecuritygroups>
                                    additionalSlaveSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-coreinstancefleet>
                                    coreInstanceFleet :: (Prelude.Maybe InstanceFleetConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-coreinstancegroup>
                                    coreInstanceGroup :: (Prelude.Maybe InstanceGroupConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-ec2keyname>
                                    ec2KeyName :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-ec2subnetid>
                                    ec2SubnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-ec2subnetids>
                                    ec2SubnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-emrmanagedmastersecuritygroup>
                                    emrManagedMasterSecurityGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-emrmanagedslavesecuritygroup>
                                    emrManagedSlaveSecurityGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-hadoopversion>
                                    hadoopVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-keepjobflowalivewhennosteps>
                                    keepJobFlowAliveWhenNoSteps :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-masterinstancefleet>
                                    masterInstanceFleet :: (Prelude.Maybe InstanceFleetConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-masterinstancegroup>
                                    masterInstanceGroup :: (Prelude.Maybe InstanceGroupConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-placement>
                                    placement :: (Prelude.Maybe PlacementTypeProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-serviceaccesssecuritygroup>
                                    serviceAccessSecurityGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-taskinstancefleets>
                                    taskInstanceFleets :: (Prelude.Maybe [InstanceFleetConfigProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-taskinstancegroups>
                                    taskInstanceGroups :: (Prelude.Maybe [InstanceGroupConfigProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-terminationprotected>
                                    terminationProtected :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-unhealthynodereplacement>
                                    unhealthyNodeReplacement :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobFlowInstancesConfigProperty :: JobFlowInstancesConfigProperty
mkJobFlowInstancesConfigProperty
  = JobFlowInstancesConfigProperty
      {haddock_workaround_ = (),
       additionalMasterSecurityGroups = Prelude.Nothing,
       additionalSlaveSecurityGroups = Prelude.Nothing,
       coreInstanceFleet = Prelude.Nothing,
       coreInstanceGroup = Prelude.Nothing, ec2KeyName = Prelude.Nothing,
       ec2SubnetId = Prelude.Nothing, ec2SubnetIds = Prelude.Nothing,
       emrManagedMasterSecurityGroup = Prelude.Nothing,
       emrManagedSlaveSecurityGroup = Prelude.Nothing,
       hadoopVersion = Prelude.Nothing,
       keepJobFlowAliveWhenNoSteps = Prelude.Nothing,
       masterInstanceFleet = Prelude.Nothing,
       masterInstanceGroup = Prelude.Nothing, placement = Prelude.Nothing,
       serviceAccessSecurityGroup = Prelude.Nothing,
       taskInstanceFleets = Prelude.Nothing,
       taskInstanceGroups = Prelude.Nothing,
       terminationProtected = Prelude.Nothing,
       unhealthyNodeReplacement = Prelude.Nothing}
instance ToResourceProperties JobFlowInstancesConfigProperty where
  toResourceProperties JobFlowInstancesConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.JobFlowInstancesConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalMasterSecurityGroups"
                              Prelude.<$> additionalMasterSecurityGroups,
                            (JSON..=) "AdditionalSlaveSecurityGroups"
                              Prelude.<$> additionalSlaveSecurityGroups,
                            (JSON..=) "CoreInstanceFleet" Prelude.<$> coreInstanceFleet,
                            (JSON..=) "CoreInstanceGroup" Prelude.<$> coreInstanceGroup,
                            (JSON..=) "Ec2KeyName" Prelude.<$> ec2KeyName,
                            (JSON..=) "Ec2SubnetId" Prelude.<$> ec2SubnetId,
                            (JSON..=) "Ec2SubnetIds" Prelude.<$> ec2SubnetIds,
                            (JSON..=) "EmrManagedMasterSecurityGroup"
                              Prelude.<$> emrManagedMasterSecurityGroup,
                            (JSON..=) "EmrManagedSlaveSecurityGroup"
                              Prelude.<$> emrManagedSlaveSecurityGroup,
                            (JSON..=) "HadoopVersion" Prelude.<$> hadoopVersion,
                            (JSON..=) "KeepJobFlowAliveWhenNoSteps"
                              Prelude.<$> keepJobFlowAliveWhenNoSteps,
                            (JSON..=) "MasterInstanceFleet" Prelude.<$> masterInstanceFleet,
                            (JSON..=) "MasterInstanceGroup" Prelude.<$> masterInstanceGroup,
                            (JSON..=) "Placement" Prelude.<$> placement,
                            (JSON..=) "ServiceAccessSecurityGroup"
                              Prelude.<$> serviceAccessSecurityGroup,
                            (JSON..=) "TaskInstanceFleets" Prelude.<$> taskInstanceFleets,
                            (JSON..=) "TaskInstanceGroups" Prelude.<$> taskInstanceGroups,
                            (JSON..=) "TerminationProtected" Prelude.<$> terminationProtected,
                            (JSON..=) "UnhealthyNodeReplacement"
                              Prelude.<$> unhealthyNodeReplacement])}
instance JSON.ToJSON JobFlowInstancesConfigProperty where
  toJSON JobFlowInstancesConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalMasterSecurityGroups"
                 Prelude.<$> additionalMasterSecurityGroups,
               (JSON..=) "AdditionalSlaveSecurityGroups"
                 Prelude.<$> additionalSlaveSecurityGroups,
               (JSON..=) "CoreInstanceFleet" Prelude.<$> coreInstanceFleet,
               (JSON..=) "CoreInstanceGroup" Prelude.<$> coreInstanceGroup,
               (JSON..=) "Ec2KeyName" Prelude.<$> ec2KeyName,
               (JSON..=) "Ec2SubnetId" Prelude.<$> ec2SubnetId,
               (JSON..=) "Ec2SubnetIds" Prelude.<$> ec2SubnetIds,
               (JSON..=) "EmrManagedMasterSecurityGroup"
                 Prelude.<$> emrManagedMasterSecurityGroup,
               (JSON..=) "EmrManagedSlaveSecurityGroup"
                 Prelude.<$> emrManagedSlaveSecurityGroup,
               (JSON..=) "HadoopVersion" Prelude.<$> hadoopVersion,
               (JSON..=) "KeepJobFlowAliveWhenNoSteps"
                 Prelude.<$> keepJobFlowAliveWhenNoSteps,
               (JSON..=) "MasterInstanceFleet" Prelude.<$> masterInstanceFleet,
               (JSON..=) "MasterInstanceGroup" Prelude.<$> masterInstanceGroup,
               (JSON..=) "Placement" Prelude.<$> placement,
               (JSON..=) "ServiceAccessSecurityGroup"
                 Prelude.<$> serviceAccessSecurityGroup,
               (JSON..=) "TaskInstanceFleets" Prelude.<$> taskInstanceFleets,
               (JSON..=) "TaskInstanceGroups" Prelude.<$> taskInstanceGroups,
               (JSON..=) "TerminationProtected" Prelude.<$> terminationProtected,
               (JSON..=) "UnhealthyNodeReplacement"
                 Prelude.<$> unhealthyNodeReplacement]))
instance Property "AdditionalMasterSecurityGroups" JobFlowInstancesConfigProperty where
  type PropertyType "AdditionalMasterSecurityGroups" JobFlowInstancesConfigProperty = ValueList Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {additionalMasterSecurityGroups = Prelude.pure newValue, ..}
instance Property "AdditionalSlaveSecurityGroups" JobFlowInstancesConfigProperty where
  type PropertyType "AdditionalSlaveSecurityGroups" JobFlowInstancesConfigProperty = ValueList Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {additionalSlaveSecurityGroups = Prelude.pure newValue, ..}
instance Property "CoreInstanceFleet" JobFlowInstancesConfigProperty where
  type PropertyType "CoreInstanceFleet" JobFlowInstancesConfigProperty = InstanceFleetConfigProperty
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {coreInstanceFleet = Prelude.pure newValue, ..}
instance Property "CoreInstanceGroup" JobFlowInstancesConfigProperty where
  type PropertyType "CoreInstanceGroup" JobFlowInstancesConfigProperty = InstanceGroupConfigProperty
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {coreInstanceGroup = Prelude.pure newValue, ..}
instance Property "Ec2KeyName" JobFlowInstancesConfigProperty where
  type PropertyType "Ec2KeyName" JobFlowInstancesConfigProperty = Value Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {ec2KeyName = Prelude.pure newValue, ..}
instance Property "Ec2SubnetId" JobFlowInstancesConfigProperty where
  type PropertyType "Ec2SubnetId" JobFlowInstancesConfigProperty = Value Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {ec2SubnetId = Prelude.pure newValue, ..}
instance Property "Ec2SubnetIds" JobFlowInstancesConfigProperty where
  type PropertyType "Ec2SubnetIds" JobFlowInstancesConfigProperty = ValueList Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {ec2SubnetIds = Prelude.pure newValue, ..}
instance Property "EmrManagedMasterSecurityGroup" JobFlowInstancesConfigProperty where
  type PropertyType "EmrManagedMasterSecurityGroup" JobFlowInstancesConfigProperty = Value Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {emrManagedMasterSecurityGroup = Prelude.pure newValue, ..}
instance Property "EmrManagedSlaveSecurityGroup" JobFlowInstancesConfigProperty where
  type PropertyType "EmrManagedSlaveSecurityGroup" JobFlowInstancesConfigProperty = Value Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {emrManagedSlaveSecurityGroup = Prelude.pure newValue, ..}
instance Property "HadoopVersion" JobFlowInstancesConfigProperty where
  type PropertyType "HadoopVersion" JobFlowInstancesConfigProperty = Value Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {hadoopVersion = Prelude.pure newValue, ..}
instance Property "KeepJobFlowAliveWhenNoSteps" JobFlowInstancesConfigProperty where
  type PropertyType "KeepJobFlowAliveWhenNoSteps" JobFlowInstancesConfigProperty = Value Prelude.Bool
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {keepJobFlowAliveWhenNoSteps = Prelude.pure newValue, ..}
instance Property "MasterInstanceFleet" JobFlowInstancesConfigProperty where
  type PropertyType "MasterInstanceFleet" JobFlowInstancesConfigProperty = InstanceFleetConfigProperty
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {masterInstanceFleet = Prelude.pure newValue, ..}
instance Property "MasterInstanceGroup" JobFlowInstancesConfigProperty where
  type PropertyType "MasterInstanceGroup" JobFlowInstancesConfigProperty = InstanceGroupConfigProperty
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {masterInstanceGroup = Prelude.pure newValue, ..}
instance Property "Placement" JobFlowInstancesConfigProperty where
  type PropertyType "Placement" JobFlowInstancesConfigProperty = PlacementTypeProperty
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {placement = Prelude.pure newValue, ..}
instance Property "ServiceAccessSecurityGroup" JobFlowInstancesConfigProperty where
  type PropertyType "ServiceAccessSecurityGroup" JobFlowInstancesConfigProperty = Value Prelude.Text
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {serviceAccessSecurityGroup = Prelude.pure newValue, ..}
instance Property "TaskInstanceFleets" JobFlowInstancesConfigProperty where
  type PropertyType "TaskInstanceFleets" JobFlowInstancesConfigProperty = [InstanceFleetConfigProperty]
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {taskInstanceFleets = Prelude.pure newValue, ..}
instance Property "TaskInstanceGroups" JobFlowInstancesConfigProperty where
  type PropertyType "TaskInstanceGroups" JobFlowInstancesConfigProperty = [InstanceGroupConfigProperty]
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {taskInstanceGroups = Prelude.pure newValue, ..}
instance Property "TerminationProtected" JobFlowInstancesConfigProperty where
  type PropertyType "TerminationProtected" JobFlowInstancesConfigProperty = Value Prelude.Bool
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {terminationProtected = Prelude.pure newValue, ..}
instance Property "UnhealthyNodeReplacement" JobFlowInstancesConfigProperty where
  type PropertyType "UnhealthyNodeReplacement" JobFlowInstancesConfigProperty = Value Prelude.Bool
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {unhealthyNodeReplacement = Prelude.pure newValue, ..}