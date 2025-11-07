module Stratosphere.EKS.Addon (
        module Exports, Addon(..), mkAddon
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Addon.NamespaceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Addon.PodIdentityAssociationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Addon
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html>
    Addon {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-addonname>
           addonName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-addonversion>
           addonVersion :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-clustername>
           clusterName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-configurationvalues>
           configurationValues :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-namespaceconfig>
           namespaceConfig :: (Prelude.Maybe NamespaceConfigProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-podidentityassociations>
           podIdentityAssociations :: (Prelude.Maybe [PodIdentityAssociationProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-preserveondelete>
           preserveOnDelete :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-resolveconflicts>
           resolveConflicts :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-serviceaccountrolearn>
           serviceAccountRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-addon.html#cfn-eks-addon-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddon :: Value Prelude.Text -> Value Prelude.Text -> Addon
mkAddon addonName clusterName
  = Addon
      {haddock_workaround_ = (), addonName = addonName,
       clusterName = clusterName, addonVersion = Prelude.Nothing,
       configurationValues = Prelude.Nothing,
       namespaceConfig = Prelude.Nothing,
       podIdentityAssociations = Prelude.Nothing,
       preserveOnDelete = Prelude.Nothing,
       resolveConflicts = Prelude.Nothing,
       serviceAccountRoleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Addon where
  toResourceProperties Addon {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Addon", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AddonName" JSON..= addonName, "ClusterName" JSON..= clusterName]
                           (Prelude.catMaybes
                              [(JSON..=) "AddonVersion" Prelude.<$> addonVersion,
                               (JSON..=) "ConfigurationValues" Prelude.<$> configurationValues,
                               (JSON..=) "NamespaceConfig" Prelude.<$> namespaceConfig,
                               (JSON..=) "PodIdentityAssociations"
                                 Prelude.<$> podIdentityAssociations,
                               (JSON..=) "PreserveOnDelete" Prelude.<$> preserveOnDelete,
                               (JSON..=) "ResolveConflicts" Prelude.<$> resolveConflicts,
                               (JSON..=) "ServiceAccountRoleArn"
                                 Prelude.<$> serviceAccountRoleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Addon where
  toJSON Addon {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AddonName" JSON..= addonName, "ClusterName" JSON..= clusterName]
              (Prelude.catMaybes
                 [(JSON..=) "AddonVersion" Prelude.<$> addonVersion,
                  (JSON..=) "ConfigurationValues" Prelude.<$> configurationValues,
                  (JSON..=) "NamespaceConfig" Prelude.<$> namespaceConfig,
                  (JSON..=) "PodIdentityAssociations"
                    Prelude.<$> podIdentityAssociations,
                  (JSON..=) "PreserveOnDelete" Prelude.<$> preserveOnDelete,
                  (JSON..=) "ResolveConflicts" Prelude.<$> resolveConflicts,
                  (JSON..=) "ServiceAccountRoleArn"
                    Prelude.<$> serviceAccountRoleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddonName" Addon where
  type PropertyType "AddonName" Addon = Value Prelude.Text
  set newValue Addon {..} = Addon {addonName = newValue, ..}
instance Property "AddonVersion" Addon where
  type PropertyType "AddonVersion" Addon = Value Prelude.Text
  set newValue Addon {..}
    = Addon {addonVersion = Prelude.pure newValue, ..}
instance Property "ClusterName" Addon where
  type PropertyType "ClusterName" Addon = Value Prelude.Text
  set newValue Addon {..} = Addon {clusterName = newValue, ..}
instance Property "ConfigurationValues" Addon where
  type PropertyType "ConfigurationValues" Addon = Value Prelude.Text
  set newValue Addon {..}
    = Addon {configurationValues = Prelude.pure newValue, ..}
instance Property "NamespaceConfig" Addon where
  type PropertyType "NamespaceConfig" Addon = NamespaceConfigProperty
  set newValue Addon {..}
    = Addon {namespaceConfig = Prelude.pure newValue, ..}
instance Property "PodIdentityAssociations" Addon where
  type PropertyType "PodIdentityAssociations" Addon = [PodIdentityAssociationProperty]
  set newValue Addon {..}
    = Addon {podIdentityAssociations = Prelude.pure newValue, ..}
instance Property "PreserveOnDelete" Addon where
  type PropertyType "PreserveOnDelete" Addon = Value Prelude.Bool
  set newValue Addon {..}
    = Addon {preserveOnDelete = Prelude.pure newValue, ..}
instance Property "ResolveConflicts" Addon where
  type PropertyType "ResolveConflicts" Addon = Value Prelude.Text
  set newValue Addon {..}
    = Addon {resolveConflicts = Prelude.pure newValue, ..}
instance Property "ServiceAccountRoleArn" Addon where
  type PropertyType "ServiceAccountRoleArn" Addon = Value Prelude.Text
  set newValue Addon {..}
    = Addon {serviceAccountRoleArn = Prelude.pure newValue, ..}
instance Property "Tags" Addon where
  type PropertyType "Tags" Addon = [Tag]
  set newValue Addon {..} = Addon {tags = Prelude.pure newValue, ..}