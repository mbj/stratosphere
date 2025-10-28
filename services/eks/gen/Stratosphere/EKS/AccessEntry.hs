module Stratosphere.EKS.AccessEntry (
        module Exports, AccessEntry(..), mkAccessEntry
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.AccessEntry.AccessPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AccessEntry
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html>
    AccessEntry {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-accesspolicies>
                 accessPolicies :: (Prelude.Maybe [AccessPolicyProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-clustername>
                 clusterName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-kubernetesgroups>
                 kubernetesGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-principalarn>
                 principalArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-type>
                 type' :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-accessentry.html#cfn-eks-accessentry-username>
                 username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessEntry ::
  Value Prelude.Text -> Value Prelude.Text -> AccessEntry
mkAccessEntry clusterName principalArn
  = AccessEntry
      {haddock_workaround_ = (), clusterName = clusterName,
       principalArn = principalArn, accessPolicies = Prelude.Nothing,
       kubernetesGroups = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties AccessEntry where
  toResourceProperties AccessEntry {..}
    = ResourceProperties
        {awsType = "AWS::EKS::AccessEntry", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterName" JSON..= clusterName,
                            "PrincipalArn" JSON..= principalArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessPolicies" Prelude.<$> accessPolicies,
                               (JSON..=) "KubernetesGroups" Prelude.<$> kubernetesGroups,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "Username" Prelude.<$> username]))}
instance JSON.ToJSON AccessEntry where
  toJSON AccessEntry {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterName" JSON..= clusterName,
               "PrincipalArn" JSON..= principalArn]
              (Prelude.catMaybes
                 [(JSON..=) "AccessPolicies" Prelude.<$> accessPolicies,
                  (JSON..=) "KubernetesGroups" Prelude.<$> kubernetesGroups,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "Username" Prelude.<$> username])))
instance Property "AccessPolicies" AccessEntry where
  type PropertyType "AccessPolicies" AccessEntry = [AccessPolicyProperty]
  set newValue AccessEntry {..}
    = AccessEntry {accessPolicies = Prelude.pure newValue, ..}
instance Property "ClusterName" AccessEntry where
  type PropertyType "ClusterName" AccessEntry = Value Prelude.Text
  set newValue AccessEntry {..}
    = AccessEntry {clusterName = newValue, ..}
instance Property "KubernetesGroups" AccessEntry where
  type PropertyType "KubernetesGroups" AccessEntry = ValueList Prelude.Text
  set newValue AccessEntry {..}
    = AccessEntry {kubernetesGroups = Prelude.pure newValue, ..}
instance Property "PrincipalArn" AccessEntry where
  type PropertyType "PrincipalArn" AccessEntry = Value Prelude.Text
  set newValue AccessEntry {..}
    = AccessEntry {principalArn = newValue, ..}
instance Property "Tags" AccessEntry where
  type PropertyType "Tags" AccessEntry = [Tag]
  set newValue AccessEntry {..}
    = AccessEntry {tags = Prelude.pure newValue, ..}
instance Property "Type" AccessEntry where
  type PropertyType "Type" AccessEntry = Value Prelude.Text
  set newValue AccessEntry {..}
    = AccessEntry {type' = Prelude.pure newValue, ..}
instance Property "Username" AccessEntry where
  type PropertyType "Username" AccessEntry = Value Prelude.Text
  set newValue AccessEntry {..}
    = AccessEntry {username = Prelude.pure newValue, ..}