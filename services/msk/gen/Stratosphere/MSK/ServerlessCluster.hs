module Stratosphere.MSK.ServerlessCluster (
        module Exports, ServerlessCluster(..), mkServerlessCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.ServerlessCluster.ClientAuthenticationProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.ServerlessCluster.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerlessCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-serverlesscluster.html>
    ServerlessCluster {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-serverlesscluster.html#cfn-msk-serverlesscluster-clientauthentication>
                       clientAuthentication :: ClientAuthenticationProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-serverlesscluster.html#cfn-msk-serverlesscluster-clustername>
                       clusterName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-serverlesscluster.html#cfn-msk-serverlesscluster-tags>
                       tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-serverlesscluster.html#cfn-msk-serverlesscluster-vpcconfigs>
                       vpcConfigs :: [VpcConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerlessCluster ::
  ClientAuthenticationProperty
  -> Value Prelude.Text -> [VpcConfigProperty] -> ServerlessCluster
mkServerlessCluster clientAuthentication clusterName vpcConfigs
  = ServerlessCluster
      {haddock_workaround_ = (),
       clientAuthentication = clientAuthentication,
       clusterName = clusterName, vpcConfigs = vpcConfigs,
       tags = Prelude.Nothing}
instance ToResourceProperties ServerlessCluster where
  toResourceProperties ServerlessCluster {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ServerlessCluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientAuthentication" JSON..= clientAuthentication,
                            "ClusterName" JSON..= clusterName, "VpcConfigs" JSON..= vpcConfigs]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ServerlessCluster where
  toJSON ServerlessCluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientAuthentication" JSON..= clientAuthentication,
               "ClusterName" JSON..= clusterName, "VpcConfigs" JSON..= vpcConfigs]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClientAuthentication" ServerlessCluster where
  type PropertyType "ClientAuthentication" ServerlessCluster = ClientAuthenticationProperty
  set newValue ServerlessCluster {..}
    = ServerlessCluster {clientAuthentication = newValue, ..}
instance Property "ClusterName" ServerlessCluster where
  type PropertyType "ClusterName" ServerlessCluster = Value Prelude.Text
  set newValue ServerlessCluster {..}
    = ServerlessCluster {clusterName = newValue, ..}
instance Property "Tags" ServerlessCluster where
  type PropertyType "Tags" ServerlessCluster = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ServerlessCluster {..}
    = ServerlessCluster {tags = Prelude.pure newValue, ..}
instance Property "VpcConfigs" ServerlessCluster where
  type PropertyType "VpcConfigs" ServerlessCluster = [VpcConfigProperty]
  set newValue ServerlessCluster {..}
    = ServerlessCluster {vpcConfigs = newValue, ..}