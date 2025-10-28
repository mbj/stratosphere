module Stratosphere.EKS.Cluster.AccessConfigProperty (
        AccessConfigProperty(..), mkAccessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-accessconfig.html>
    AccessConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-accessconfig.html#cfn-eks-cluster-accessconfig-authenticationmode>
                          authenticationMode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-accessconfig.html#cfn-eks-cluster-accessconfig-bootstrapclustercreatoradminpermissions>
                          bootstrapClusterCreatorAdminPermissions :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessConfigProperty :: AccessConfigProperty
mkAccessConfigProperty
  = AccessConfigProperty
      {haddock_workaround_ = (), authenticationMode = Prelude.Nothing,
       bootstrapClusterCreatorAdminPermissions = Prelude.Nothing}
instance ToResourceProperties AccessConfigProperty where
  toResourceProperties AccessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.AccessConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthenticationMode" Prelude.<$> authenticationMode,
                            (JSON..=) "BootstrapClusterCreatorAdminPermissions"
                              Prelude.<$> bootstrapClusterCreatorAdminPermissions])}
instance JSON.ToJSON AccessConfigProperty where
  toJSON AccessConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthenticationMode" Prelude.<$> authenticationMode,
               (JSON..=) "BootstrapClusterCreatorAdminPermissions"
                 Prelude.<$> bootstrapClusterCreatorAdminPermissions]))
instance Property "AuthenticationMode" AccessConfigProperty where
  type PropertyType "AuthenticationMode" AccessConfigProperty = Value Prelude.Text
  set newValue AccessConfigProperty {..}
    = AccessConfigProperty
        {authenticationMode = Prelude.pure newValue, ..}
instance Property "BootstrapClusterCreatorAdminPermissions" AccessConfigProperty where
  type PropertyType "BootstrapClusterCreatorAdminPermissions" AccessConfigProperty = Value Prelude.Bool
  set newValue AccessConfigProperty {..}
    = AccessConfigProperty
        {bootstrapClusterCreatorAdminPermissions = Prelude.pure newValue,
         ..}