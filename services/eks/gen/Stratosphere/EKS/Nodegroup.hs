module Stratosphere.EKS.Nodegroup (
        module Exports, Nodegroup(..), mkNodegroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.LaunchTemplateSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.NodeRepairConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.RemoteAccessProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.ScalingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.TaintProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Nodegroup.UpdateConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Nodegroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html>
    Nodegroup {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-amitype>
               amiType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-capacitytype>
               capacityType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-clustername>
               clusterName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-disksize>
               diskSize :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-forceupdateenabled>
               forceUpdateEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-instancetypes>
               instanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-labels>
               labels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-launchtemplate>
               launchTemplate :: (Prelude.Maybe LaunchTemplateSpecificationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-noderepairconfig>
               nodeRepairConfig :: (Prelude.Maybe NodeRepairConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-noderole>
               nodeRole :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-nodegroupname>
               nodegroupName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-releaseversion>
               releaseVersion :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-remoteaccess>
               remoteAccess :: (Prelude.Maybe RemoteAccessProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-scalingconfig>
               scalingConfig :: (Prelude.Maybe ScalingConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-subnets>
               subnets :: (ValueList Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-taints>
               taints :: (Prelude.Maybe [TaintProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-updateconfig>
               updateConfig :: (Prelude.Maybe UpdateConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-version>
               version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodegroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValueList Prelude.Text -> Nodegroup
mkNodegroup clusterName nodeRole subnets
  = Nodegroup
      {haddock_workaround_ = (), clusterName = clusterName,
       nodeRole = nodeRole, subnets = subnets, amiType = Prelude.Nothing,
       capacityType = Prelude.Nothing, diskSize = Prelude.Nothing,
       forceUpdateEnabled = Prelude.Nothing,
       instanceTypes = Prelude.Nothing, labels = Prelude.Nothing,
       launchTemplate = Prelude.Nothing,
       nodeRepairConfig = Prelude.Nothing,
       nodegroupName = Prelude.Nothing, releaseVersion = Prelude.Nothing,
       remoteAccess = Prelude.Nothing, scalingConfig = Prelude.Nothing,
       tags = Prelude.Nothing, taints = Prelude.Nothing,
       updateConfig = Prelude.Nothing, version = Prelude.Nothing}
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
                               (JSON..=) "NodeRepairConfig" Prelude.<$> nodeRepairConfig,
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
                  (JSON..=) "NodeRepairConfig" Prelude.<$> nodeRepairConfig,
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
instance Property "NodeRepairConfig" Nodegroup where
  type PropertyType "NodeRepairConfig" Nodegroup = NodeRepairConfigProperty
  set newValue Nodegroup {..}
    = Nodegroup {nodeRepairConfig = Prelude.pure newValue, ..}
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