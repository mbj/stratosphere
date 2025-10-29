module Stratosphere.OpsWorks.Instance (
        module Exports, Instance(..), mkInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorks.Instance.BlockDeviceMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Instance.TimeBasedAutoScalingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Instance
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html>
    Instance {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-agentversion>
              agentVersion :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-amiid>
              amiId :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-architecture>
              architecture :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-autoscalingtype>
              autoScalingType :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-availabilityzone>
              availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-blockdevicemappings>
              blockDeviceMappings :: (Prelude.Maybe [BlockDeviceMappingProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-ebsoptimized>
              ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-elasticips>
              elasticIps :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-hostname>
              hostname :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-installupdatesonboot>
              installUpdatesOnBoot :: (Prelude.Maybe (Value Prelude.Bool)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-instancetype>
              instanceType :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-layerids>
              layerIds :: (ValueList Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-os>
              os :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-rootdevicetype>
              rootDeviceType :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-sshkeyname>
              sshKeyName :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-stackid>
              stackId :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-subnetid>
              subnetId :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-tenancy>
              tenancy :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-timebasedautoscaling>
              timeBasedAutoScaling :: (Prelude.Maybe TimeBasedAutoScalingProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-virtualizationtype>
              virtualizationType :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-volumes>
              volumes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstance ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> Instance
mkInstance instanceType layerIds stackId
  = Instance
      {instanceType = instanceType, layerIds = layerIds,
       stackId = stackId, agentVersion = Prelude.Nothing,
       amiId = Prelude.Nothing, architecture = Prelude.Nothing,
       autoScalingType = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       blockDeviceMappings = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing, elasticIps = Prelude.Nothing,
       hostname = Prelude.Nothing, installUpdatesOnBoot = Prelude.Nothing,
       os = Prelude.Nothing, rootDeviceType = Prelude.Nothing,
       sshKeyName = Prelude.Nothing, subnetId = Prelude.Nothing,
       tenancy = Prelude.Nothing, timeBasedAutoScaling = Prelude.Nothing,
       virtualizationType = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties Instance where
  toResourceProperties Instance {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Instance", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType, "LayerIds" JSON..= layerIds,
                            "StackId" JSON..= stackId]
                           (Prelude.catMaybes
                              [(JSON..=) "AgentVersion" Prelude.<$> agentVersion,
                               (JSON..=) "AmiId" Prelude.<$> amiId,
                               (JSON..=) "Architecture" Prelude.<$> architecture,
                               (JSON..=) "AutoScalingType" Prelude.<$> autoScalingType,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                               (JSON..=) "ElasticIps" Prelude.<$> elasticIps,
                               (JSON..=) "Hostname" Prelude.<$> hostname,
                               (JSON..=) "InstallUpdatesOnBoot" Prelude.<$> installUpdatesOnBoot,
                               (JSON..=) "Os" Prelude.<$> os,
                               (JSON..=) "RootDeviceType" Prelude.<$> rootDeviceType,
                               (JSON..=) "SshKeyName" Prelude.<$> sshKeyName,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "Tenancy" Prelude.<$> tenancy,
                               (JSON..=) "TimeBasedAutoScaling" Prelude.<$> timeBasedAutoScaling,
                               (JSON..=) "VirtualizationType" Prelude.<$> virtualizationType,
                               (JSON..=) "Volumes" Prelude.<$> volumes]))}
instance JSON.ToJSON Instance where
  toJSON Instance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType, "LayerIds" JSON..= layerIds,
               "StackId" JSON..= stackId]
              (Prelude.catMaybes
                 [(JSON..=) "AgentVersion" Prelude.<$> agentVersion,
                  (JSON..=) "AmiId" Prelude.<$> amiId,
                  (JSON..=) "Architecture" Prelude.<$> architecture,
                  (JSON..=) "AutoScalingType" Prelude.<$> autoScalingType,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                  (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                  (JSON..=) "ElasticIps" Prelude.<$> elasticIps,
                  (JSON..=) "Hostname" Prelude.<$> hostname,
                  (JSON..=) "InstallUpdatesOnBoot" Prelude.<$> installUpdatesOnBoot,
                  (JSON..=) "Os" Prelude.<$> os,
                  (JSON..=) "RootDeviceType" Prelude.<$> rootDeviceType,
                  (JSON..=) "SshKeyName" Prelude.<$> sshKeyName,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "Tenancy" Prelude.<$> tenancy,
                  (JSON..=) "TimeBasedAutoScaling" Prelude.<$> timeBasedAutoScaling,
                  (JSON..=) "VirtualizationType" Prelude.<$> virtualizationType,
                  (JSON..=) "Volumes" Prelude.<$> volumes])))
instance Property "AgentVersion" Instance where
  type PropertyType "AgentVersion" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {agentVersion = Prelude.pure newValue, ..}
instance Property "AmiId" Instance where
  type PropertyType "AmiId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {amiId = Prelude.pure newValue, ..}
instance Property "Architecture" Instance where
  type PropertyType "Architecture" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {architecture = Prelude.pure newValue, ..}
instance Property "AutoScalingType" Instance where
  type PropertyType "AutoScalingType" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {autoScalingType = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Instance where
  type PropertyType "AvailabilityZone" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {availabilityZone = Prelude.pure newValue, ..}
instance Property "BlockDeviceMappings" Instance where
  type PropertyType "BlockDeviceMappings" Instance = [BlockDeviceMappingProperty]
  set newValue Instance {..}
    = Instance {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "EbsOptimized" Instance where
  type PropertyType "EbsOptimized" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance {ebsOptimized = Prelude.pure newValue, ..}
instance Property "ElasticIps" Instance where
  type PropertyType "ElasticIps" Instance = ValueList Prelude.Text
  set newValue Instance {..}
    = Instance {elasticIps = Prelude.pure newValue, ..}
instance Property "Hostname" Instance where
  type PropertyType "Hostname" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {hostname = Prelude.pure newValue, ..}
instance Property "InstallUpdatesOnBoot" Instance where
  type PropertyType "InstallUpdatesOnBoot" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance {installUpdatesOnBoot = Prelude.pure newValue, ..}
instance Property "InstanceType" Instance where
  type PropertyType "InstanceType" Instance = Value Prelude.Text
  set newValue Instance {..} = Instance {instanceType = newValue, ..}
instance Property "LayerIds" Instance where
  type PropertyType "LayerIds" Instance = ValueList Prelude.Text
  set newValue Instance {..} = Instance {layerIds = newValue, ..}
instance Property "Os" Instance where
  type PropertyType "Os" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {os = Prelude.pure newValue, ..}
instance Property "RootDeviceType" Instance where
  type PropertyType "RootDeviceType" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {rootDeviceType = Prelude.pure newValue, ..}
instance Property "SshKeyName" Instance where
  type PropertyType "SshKeyName" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {sshKeyName = Prelude.pure newValue, ..}
instance Property "StackId" Instance where
  type PropertyType "StackId" Instance = Value Prelude.Text
  set newValue Instance {..} = Instance {stackId = newValue, ..}
instance Property "SubnetId" Instance where
  type PropertyType "SubnetId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {subnetId = Prelude.pure newValue, ..}
instance Property "Tenancy" Instance where
  type PropertyType "Tenancy" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {tenancy = Prelude.pure newValue, ..}
instance Property "TimeBasedAutoScaling" Instance where
  type PropertyType "TimeBasedAutoScaling" Instance = TimeBasedAutoScalingProperty
  set newValue Instance {..}
    = Instance {timeBasedAutoScaling = Prelude.pure newValue, ..}
instance Property "VirtualizationType" Instance where
  type PropertyType "VirtualizationType" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {virtualizationType = Prelude.pure newValue, ..}
instance Property "Volumes" Instance where
  type PropertyType "Volumes" Instance = ValueList Prelude.Text
  set newValue Instance {..}
    = Instance {volumes = Prelude.pure newValue, ..}