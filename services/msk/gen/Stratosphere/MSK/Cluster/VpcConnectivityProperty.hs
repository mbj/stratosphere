module Stratosphere.MSK.Cluster.VpcConnectivityProperty (
        module Exports, VpcConnectivityProperty(..),
        mkVpcConnectivityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.VpcConnectivityClientAuthenticationProperty as Exports
import Stratosphere.ResourceProperties
data VpcConnectivityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivity.html>
    VpcConnectivityProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivity.html#cfn-msk-cluster-vpcconnectivity-clientauthentication>
                             clientAuthentication :: (Prelude.Maybe VpcConnectivityClientAuthenticationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityProperty :: VpcConnectivityProperty
mkVpcConnectivityProperty
  = VpcConnectivityProperty
      {haddock_workaround_ = (), clientAuthentication = Prelude.Nothing}
instance ToResourceProperties VpcConnectivityProperty where
  toResourceProperties VpcConnectivityProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.VpcConnectivity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientAuthentication"
                              Prelude.<$> clientAuthentication])}
instance JSON.ToJSON VpcConnectivityProperty where
  toJSON VpcConnectivityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientAuthentication"
                 Prelude.<$> clientAuthentication]))
instance Property "ClientAuthentication" VpcConnectivityProperty where
  type PropertyType "ClientAuthentication" VpcConnectivityProperty = VpcConnectivityClientAuthenticationProperty
  set newValue VpcConnectivityProperty {..}
    = VpcConnectivityProperty
        {clientAuthentication = Prelude.pure newValue, ..}