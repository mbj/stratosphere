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
  = PodIdentityAssociation {clusterName :: (Value Prelude.Text),
                            namespace :: (Value Prelude.Text),
                            roleArn :: (Value Prelude.Text),
                            serviceAccount :: (Value Prelude.Text),
                            tags :: (Prelude.Maybe [Tag])}
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
      {clusterName = clusterName, namespace = namespace,
       roleArn = roleArn, serviceAccount = serviceAccount,
       tags = Prelude.Nothing}
instance ToResourceProperties PodIdentityAssociation where
  toResourceProperties PodIdentityAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EKS::PodIdentityAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterName" JSON..= clusterName, "Namespace" JSON..= namespace,
                            "RoleArn" JSON..= roleArn, "ServiceAccount" JSON..= serviceAccount]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PodIdentityAssociation where
  toJSON PodIdentityAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterName" JSON..= clusterName, "Namespace" JSON..= namespace,
               "RoleArn" JSON..= roleArn, "ServiceAccount" JSON..= serviceAccount]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClusterName" PodIdentityAssociation where
  type PropertyType "ClusterName" PodIdentityAssociation = Value Prelude.Text
  set newValue PodIdentityAssociation {..}
    = PodIdentityAssociation {clusterName = newValue, ..}
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