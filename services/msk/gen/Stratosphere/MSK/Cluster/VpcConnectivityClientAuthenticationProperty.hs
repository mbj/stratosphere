module Stratosphere.MSK.Cluster.VpcConnectivityClientAuthenticationProperty (
        module Exports, VpcConnectivityClientAuthenticationProperty(..),
        mkVpcConnectivityClientAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.VpcConnectivitySaslProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.VpcConnectivityTlsProperty as Exports
import Stratosphere.ResourceProperties
data VpcConnectivityClientAuthenticationProperty
  = VpcConnectivityClientAuthenticationProperty {sasl :: (Prelude.Maybe VpcConnectivitySaslProperty),
                                                 tls :: (Prelude.Maybe VpcConnectivityTlsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityClientAuthenticationProperty ::
  VpcConnectivityClientAuthenticationProperty
mkVpcConnectivityClientAuthenticationProperty
  = VpcConnectivityClientAuthenticationProperty
      {sasl = Prelude.Nothing, tls = Prelude.Nothing}
instance ToResourceProperties VpcConnectivityClientAuthenticationProperty where
  toResourceProperties
    VpcConnectivityClientAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.VpcConnectivityClientAuthentication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Sasl" Prelude.<$> sasl,
                            (JSON..=) "Tls" Prelude.<$> tls])}
instance JSON.ToJSON VpcConnectivityClientAuthenticationProperty where
  toJSON VpcConnectivityClientAuthenticationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Sasl" Prelude.<$> sasl,
               (JSON..=) "Tls" Prelude.<$> tls]))
instance Property "Sasl" VpcConnectivityClientAuthenticationProperty where
  type PropertyType "Sasl" VpcConnectivityClientAuthenticationProperty = VpcConnectivitySaslProperty
  set newValue VpcConnectivityClientAuthenticationProperty {..}
    = VpcConnectivityClientAuthenticationProperty
        {sasl = Prelude.pure newValue, ..}
instance Property "Tls" VpcConnectivityClientAuthenticationProperty where
  type PropertyType "Tls" VpcConnectivityClientAuthenticationProperty = VpcConnectivityTlsProperty
  set newValue VpcConnectivityClientAuthenticationProperty {..}
    = VpcConnectivityClientAuthenticationProperty
        {tls = Prelude.pure newValue, ..}