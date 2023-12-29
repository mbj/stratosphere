module Stratosphere.NetworkManager.ConnectPeer.ConnectPeerBgpConfigurationProperty (
        ConnectPeerBgpConfigurationProperty(..),
        mkConnectPeerBgpConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectPeerBgpConfigurationProperty
  = ConnectPeerBgpConfigurationProperty {coreNetworkAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                         coreNetworkAsn :: (Prelude.Maybe (Value Prelude.Double)),
                                         peerAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                         peerAsn :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectPeerBgpConfigurationProperty ::
  ConnectPeerBgpConfigurationProperty
mkConnectPeerBgpConfigurationProperty
  = ConnectPeerBgpConfigurationProperty
      {coreNetworkAddress = Prelude.Nothing,
       coreNetworkAsn = Prelude.Nothing, peerAddress = Prelude.Nothing,
       peerAsn = Prelude.Nothing}
instance ToResourceProperties ConnectPeerBgpConfigurationProperty where
  toResourceProperties ConnectPeerBgpConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectPeer.ConnectPeerBgpConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
                            (JSON..=) "CoreNetworkAsn" Prelude.<$> coreNetworkAsn,
                            (JSON..=) "PeerAddress" Prelude.<$> peerAddress,
                            (JSON..=) "PeerAsn" Prelude.<$> peerAsn])}
instance JSON.ToJSON ConnectPeerBgpConfigurationProperty where
  toJSON ConnectPeerBgpConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
               (JSON..=) "CoreNetworkAsn" Prelude.<$> coreNetworkAsn,
               (JSON..=) "PeerAddress" Prelude.<$> peerAddress,
               (JSON..=) "PeerAsn" Prelude.<$> peerAsn]))
instance Property "CoreNetworkAddress" ConnectPeerBgpConfigurationProperty where
  type PropertyType "CoreNetworkAddress" ConnectPeerBgpConfigurationProperty = Value Prelude.Text
  set newValue ConnectPeerBgpConfigurationProperty {..}
    = ConnectPeerBgpConfigurationProperty
        {coreNetworkAddress = Prelude.pure newValue, ..}
instance Property "CoreNetworkAsn" ConnectPeerBgpConfigurationProperty where
  type PropertyType "CoreNetworkAsn" ConnectPeerBgpConfigurationProperty = Value Prelude.Double
  set newValue ConnectPeerBgpConfigurationProperty {..}
    = ConnectPeerBgpConfigurationProperty
        {coreNetworkAsn = Prelude.pure newValue, ..}
instance Property "PeerAddress" ConnectPeerBgpConfigurationProperty where
  type PropertyType "PeerAddress" ConnectPeerBgpConfigurationProperty = Value Prelude.Text
  set newValue ConnectPeerBgpConfigurationProperty {..}
    = ConnectPeerBgpConfigurationProperty
        {peerAddress = Prelude.pure newValue, ..}
instance Property "PeerAsn" ConnectPeerBgpConfigurationProperty where
  type PropertyType "PeerAsn" ConnectPeerBgpConfigurationProperty = Value Prelude.Double
  set newValue ConnectPeerBgpConfigurationProperty {..}
    = ConnectPeerBgpConfigurationProperty
        {peerAsn = Prelude.pure newValue, ..}