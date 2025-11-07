module Stratosphere.EKS.PodIdentityAssociation (
        PodIdentityAssociation(..), mkPodIdentityAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PodIdentityAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html>
    PodIdentityAssociation {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-clustername>
                            clusterName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-disablesessiontags>
                            disableSessionTags :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-namespace>
                            namespace :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-rolearn>
                            roleArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-serviceaccount>
                            serviceAccount :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-tags>
                            tags :: (Prelude.Maybe [Tag]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-podidentityassociation.html#cfn-eks-podidentityassociation-targetrolearn>
                            targetRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPodIdentityAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> PodIdentityAssociation
mkPodIdentityAssociation
  clusterName
  namespace
  roleArn
  serviceAccount
  = PodIdentityAssociation
      {haddock_workaround_ = (), clusterName = clusterName,
       namespace = namespace, roleArn = roleArn,
       serviceAccount = serviceAccount,
       disableSessionTags = Prelude.Nothing, tags = Prelude.Nothing,
       targetRoleArn = Prelude.Nothing}
instance ToResourceProperties PodIdentityAssociation where
  toResourceProperties PodIdentityAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EKS::PodIdentityAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterName" JSON..= clusterName, "Namespace" JSON..= namespace,
                            "RoleArn" JSON..= roleArn, "ServiceAccount" JSON..= serviceAccount]
                           (Prelude.catMaybes
                              [(JSON..=) "DisableSessionTags" Prelude.<$> disableSessionTags,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetRoleArn" Prelude.<$> targetRoleArn]))}
instance JSON.ToJSON PodIdentityAssociation where
  toJSON PodIdentityAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterName" JSON..= clusterName, "Namespace" JSON..= namespace,
               "RoleArn" JSON..= roleArn, "ServiceAccount" JSON..= serviceAccount]
              (Prelude.catMaybes
                 [(JSON..=) "DisableSessionTags" Prelude.<$> disableSessionTags,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetRoleArn" Prelude.<$> targetRoleArn])))
instance Property "ClusterName" PodIdentityAssociation where
  type PropertyType "ClusterName" PodIdentityAssociation = Value Prelude.Text
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation {clusterName = newValue, ..}
instance Property "DisableSessionTags" PodIdentityAssociation where
  type PropertyType "DisableSessionTags" PodIdentityAssociation = Value Prelude.Bool
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation
        {disableSessionTags = Prelude.pure newValue, ..}
instance Property "Namespace" PodIdentityAssociation where
  type PropertyType "Namespace" PodIdentityAssociation = Value Prelude.Text
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation {namespace = newValue, ..}
instance Property "RoleArn" PodIdentityAssociation where
  type PropertyType "RoleArn" PodIdentityAssociation = Value Prelude.Text
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation {roleArn = newValue, ..}
instance Property "ServiceAccount" PodIdentityAssociation where
  type PropertyType "ServiceAccount" PodIdentityAssociation = Value Prelude.Text
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation {serviceAccount = newValue, ..}
instance Property "Tags" PodIdentityAssociation where
  type PropertyType "Tags" PodIdentityAssociation = [Tag]
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation {tags = Prelude.pure newValue, ..}
instance Property "TargetRoleArn" PodIdentityAssociation where
  type PropertyType "TargetRoleArn" PodIdentityAssociation = Value Prelude.Text
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation
        {targetRoleArn = Prelude.pure newValue, ..}