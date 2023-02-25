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
  = JobFlowInstancesConfigProperty {additionalMasterSecurityGroups :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                    additionalSlaveSecurityGroups :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                    coreInstanceFleet :: (Prelude.Maybe InstanceFleetConfigProperty),
                                    coreInstanceGroup :: (Prelude.Maybe InstanceGroupConfigProperty),
                                    ec2KeyName :: (Prelude.Maybe (Value Prelude.Text)),
                                    ec2SubnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                    ec2SubnetIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                    emrManagedMasterSecurityGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                    emrManagedSlaveSecurityGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                    hadoopVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                    keepJobFlowAliveWhenNoSteps :: (Prelude.Maybe (Value Prelude.Bool)),
                                    masterInstanceFleet :: (Prelude.Maybe InstanceFleetConfigProperty),
                                    masterInstanceGroup :: (Prelude.Maybe InstanceGroupConfigProperty),
                                    placement :: (Prelude.Maybe PlacementTypeProperty),
                                    serviceAccessSecurityGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                    taskInstanceFleets :: (Prelude.Maybe [InstanceFleetConfigProperty]),
                                    taskInstanceGroups :: (Prelude.Maybe [InstanceGroupConfigProperty]),
                                    terminationProtected :: (Prelude.Maybe (Value Prelude.Bool))}
mkJobFlowInstancesConfigProperty :: JobFlowInstancesConfigProperty
mkJobFlowInstancesConfigProperty
  = JobFlowInstancesConfigProperty
      {additionalMasterSecurityGroups = Prelude.Nothing,
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
       terminationProtected = Prelude.Nothing}
instance ToResourceProperties JobFlowInstancesConfigProperty where
  toResourceProperties JobFlowInstancesConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.JobFlowInstancesConfig",
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
                            (JSON..=) "TerminationProtected"
                              Prelude.<$> terminationProtected])}
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
               (JSON..=) "TerminationProtected"
                 Prelude.<$> terminationProtected]))
instance Property "AdditionalMasterSecurityGroups" JobFlowInstancesConfigProperty where
  type PropertyType "AdditionalMasterSecurityGroups" JobFlowInstancesConfigProperty = ValueList (Value Prelude.Text)
  set newValue JobFlowInstancesConfigProperty {..}
    = JobFlowInstancesConfigProperty
        {additionalMasterSecurityGroups = Prelude.pure newValue, ..}
instance Property "AdditionalSlaveSecurityGroups" JobFlowInstancesConfigProperty where
  type PropertyType "AdditionalSlaveSecurityGroups" JobFlowInstancesConfigProperty = ValueList (Value Prelude.Text)
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
  type PropertyType "Ec2SubnetIds" JobFlowInstancesConfigProperty = ValueList (Value Prelude.Text)
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