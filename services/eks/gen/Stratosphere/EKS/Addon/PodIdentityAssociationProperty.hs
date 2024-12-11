module Stratosphere.EKS.Addon.PodIdentityAssociationProperty (
        PodIdentityAssociationProperty(..),
        mkPodIdentityAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PodIdentityAssociationProperty
  = PodIdentityAssociationProperty {roleArn :: (Value Prelude.Text),
                                    serviceAccount :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPodIdentityAssociationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> PodIdentityAssociationProperty
mkPodIdentityAssociationProperty roleArn serviceAccount
  = PodIdentityAssociationProperty
      {roleArn = roleArn, serviceAccount = serviceAccount}
instance ToResourceProperties PodIdentityAssociationProperty where
  toResourceProperties PodIdentityAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Addon.PodIdentityAssociation",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn,
                       "ServiceAccount" JSON..= serviceAccount]}
instance JSON.ToJSON PodIdentityAssociationProperty where
  toJSON PodIdentityAssociationProperty {..}
    = JSON.object
        ["RoleArn" JSON..= roleArn,
         "ServiceAccount" JSON..= serviceAccount]
instance Property "RoleArn" PodIdentityAssociationProperty where
  type PropertyType "RoleArn" PodIdentityAssociationProperty = Value Prelude.Text
  set newValue PodIdentityAssociationProperty {..}
    = PodIdentityAssociationProperty {roleArn = newValue, ..}
instance Property "ServiceAccount" PodIdentityAssociationProperty where
  type PropertyType "ServiceAccount" PodIdentityAssociationProperty = Value Prelude.Text
  set newValue PodIdentityAssociationProperty {..}
    = PodIdentityAssociationProperty {serviceAccount = newValue, ..}