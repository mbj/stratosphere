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
  = VpcConnectivityProperty {clientAuthentication :: (Prelude.Maybe VpcConnectivityClientAuthenticationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityProperty :: VpcConnectivityProperty
mkVpcConnectivityProperty
  = VpcConnectivityProperty {clientAuthentication = Prelude.Nothing}
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
  set newValue VpcConnectivityProperty {}
    = VpcConnectivityProperty
        {clientAuthentication = Prelude.pure newValue, ..}