module Stratosphere.EKS.Addon (
        Addon(..), mkAddon
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Addon
  = Addon {addonName :: (Value Prelude.Text),
           addonVersion :: (Prelude.Maybe (Value Prelude.Text)),
           clusterName :: (Value Prelude.Text),
           configurationValues :: (Prelude.Maybe (Value Prelude.Text)),
           preserveOnDelete :: (Prelude.Maybe (Value Prelude.Bool)),
           resolveConflicts :: (Prelude.Maybe (Value Prelude.Text)),
           serviceAccountRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
mkAddon :: Value Prelude.Text -> Value Prelude.Text -> Addon
mkAddon addonName clusterName
  = Addon
      {addonName = addonName, clusterName = clusterName,
       addonVersion = Prelude.Nothing,
       configurationValues = Prelude.Nothing,
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