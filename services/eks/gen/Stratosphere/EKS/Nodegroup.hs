module Stratosphere.EKS.Nodegroup (
        module Exports, Nodegroup(..), mkNodegroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.LaunchTemplateSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.RemoteAccessProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.ScalingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.TaintProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.UpdateConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Nodegroup
  = Nodegroup {amiType :: (Prelude.Maybe (Value Prelude.Text)),
               capacityType :: (Prelude.Maybe (Value Prelude.Text)),
               clusterName :: (Value Prelude.Text),
               diskSize :: (Prelude.Maybe (Value Prelude.Integer)),
               forceUpdateEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               instanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
               labels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               launchTemplate :: (Prelude.Maybe LaunchTemplateSpecificationProperty),
               nodeRole :: (Value Prelude.Text),
               nodegroupName :: (Prelude.Maybe (Value Prelude.Text)),
               releaseVersion :: (Prelude.Maybe (Value Prelude.Text)),
               remoteAccess :: (Prelude.Maybe RemoteAccessProperty),
               scalingConfig :: (Prelude.Maybe ScalingConfigProperty),
               subnets :: (ValueList Prelude.Text),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               taints :: (Prelude.Maybe [TaintProperty]),
               updateConfig :: (Prelude.Maybe UpdateConfigProperty),
               version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodegroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValueList Prelude.Text -> Nodegroup
mkNodegroup clusterName nodeRole subnets
  = Nodegroup
      {clusterName = clusterName, nodeRole = nodeRole, subnets = subnets,
       amiType = Prelude.Nothing, capacityType = Prelude.Nothing,
       diskSize = Prelude.Nothing, forceUpdateEnabled = Prelude.Nothing,
       instanceTypes = Prelude.Nothing, labels = Prelude.Nothing,
       launchTemplate = Prelude.Nothing, nodegroupName = Prelude.Nothing,
       releaseVersion = Prelude.Nothing, remoteAccess = Prelude.Nothing,
       scalingConfig = Prelude.Nothing, tags = Prelude.Nothing,
       taints = Prelude.Nothing, updateConfig = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties Nodegroup where
  toResourceProperties Nodegroup {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterName" JSON..= clusterName, "NodeRole" JSON..= nodeRole,
                            "Subnets" JSON..= subnets]
                           (Prelude.catMaybes
                              [(JSON..=) "AmiType" Prelude.<$> amiType,
                               (JSON..=) "CapacityType" Prelude.<$> capacityType,
                               (JSON..=) "DiskSize" Prelude.<$> diskSize,
                               (JSON..=) "ForceUpdateEnabled" Prelude.<$> forceUpdateEnabled,
                               (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes,
                               (JSON..=) "Labels" Prelude.<$> labels,
                               (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                               (JSON..=) "NodegroupName" Prelude.<$> nodegroupName,
                               (JSON..=) "ReleaseVersion" Prelude.<$> releaseVersion,
                               (JSON..=) "RemoteAccess" Prelude.<$> remoteAccess,
                               (JSON..=) "ScalingConfig" Prelude.<$> scalingConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Taints" Prelude.<$> taints,
                               (JSON..=) "UpdateConfig" Prelude.<$> updateConfig,
                               (JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON Nodegroup where
  toJSON Nodegroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterName" JSON..= clusterName, "NodeRole" JSON..= nodeRole,
               "Subnets" JSON..= subnets]
              (Prelude.catMaybes
                 [(JSON..=) "AmiType" Prelude.<$> amiType,
                  (JSON..=) "CapacityType" Prelude.<$> capacityType,
                  (JSON..=) "DiskSize" Prelude.<$> diskSize,
                  (JSON..=) "ForceUpdateEnabled" Prelude.<$> forceUpdateEnabled,
                  (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes,
                  (JSON..=) "Labels" Prelude.<$> labels,
                  (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                  (JSON..=) "NodegroupName" Prelude.<$> nodegroupName,
                  (JSON..=) "ReleaseVersion" Prelude.<$> releaseVersion,
                  (JSON..=) "RemoteAccess" Prelude.<$> remoteAccess,
                  (JSON..=) "ScalingConfig" Prelude.<$> scalingConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Taints" Prelude.<$> taints,
                  (JSON..=) "UpdateConfig" Prelude.<$> updateConfig,
                  (JSON..=) "Version" Prelude.<$> version])))
instance Property "AmiType" Nodegroup where
  type PropertyType "AmiType" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {amiType = Prelude.pure newValue, ..}
instance Property "CapacityType" Nodegroup where
  type PropertyType "CapacityType" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {capacityType = Prelude.pure newValue, ..}
instance Property "ClusterName" Nodegroup where
  type PropertyType "ClusterName" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {clusterName = newValue, ..}
instance Property "DiskSize" Nodegroup where
  type PropertyType "DiskSize" Nodegroup = Value Prelude.Integer
  set newValue Nodegroup {..}
    = Nodegroup {diskSize = Prelude.pure newValue, ..}
instance Property "ForceUpdateEnabled" Nodegroup where
  type PropertyType "ForceUpdateEnabled" Nodegroup = Value Prelude.Bool
  set newValue Nodegroup {..}
    = Nodegroup {forceUpdateEnabled = Prelude.pure newValue, ..}
instance Property "InstanceTypes" Nodegroup where
  type PropertyType "InstanceTypes" Nodegroup = ValueList Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {instanceTypes = Prelude.pure newValue, ..}
instance Property "Labels" Nodegroup where
  type PropertyType "Labels" Nodegroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Nodegroup {..}
    = Nodegroup {labels = Prelude.pure newValue, ..}
instance Property "LaunchTemplate" Nodegroup where
  type PropertyType "LaunchTemplate" Nodegroup = LaunchTemplateSpecificationProperty
  set newValue Nodegroup {..}
    = Nodegroup {launchTemplate = Prelude.pure newValue, ..}
instance Property "NodeRole" Nodegroup where
  type PropertyType "NodeRole" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..} = Nodegroup {nodeRole = newValue, ..}
instance Property "NodegroupName" Nodegroup where
  type PropertyType "NodegroupName" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {nodegroupName = Prelude.pure newValue, ..}
instance Property "ReleaseVersion" Nodegroup where
  type PropertyType "ReleaseVersion" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {releaseVersion = Prelude.pure newValue, ..}
instance Property "RemoteAccess" Nodegroup where
  type PropertyType "RemoteAccess" Nodegroup = RemoteAccessProperty
  set newValue Nodegroup {..}
    = Nodegroup {remoteAccess = Prelude.pure newValue, ..}
instance Property "ScalingConfig" Nodegroup where
  type PropertyType "ScalingConfig" Nodegroup = ScalingConfigProperty
  set newValue Nodegroup {..}
    = Nodegroup {scalingConfig = Prelude.pure newValue, ..}
instance Property "Subnets" Nodegroup where
  type PropertyType "Subnets" Nodegroup = ValueList Prelude.Text
  set newValue Nodegroup {..} = Nodegroup {subnets = newValue, ..}
instance Property "Tags" Nodegroup where
  type PropertyType "Tags" Nodegroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Nodegroup {..}
    = Nodegroup {tags = Prelude.pure newValue, ..}
instance Property "Taints" Nodegroup where
  type PropertyType "Taints" Nodegroup = [TaintProperty]
  set newValue Nodegroup {..}
    = Nodegroup {taints = Prelude.pure newValue, ..}
instance Property "UpdateConfig" Nodegroup where
  type PropertyType "UpdateConfig" Nodegroup = UpdateConfigProperty
  set newValue Nodegroup {..}
    = Nodegroup {updateConfig = Prelude.pure newValue, ..}
instance Property "Version" Nodegroup where
  type PropertyType "Version" Nodegroup = Value Prelude.Text
  set newValue Nodegroup {..}
    = Nodegroup {version = Prelude.pure newValue, ..}