module Stratosphere.NetworkManager.ConnectPeer.ConnectPeerConfigurationProperty (
        module Exports, ConnectPeerConfigurationProperty(..),
        mkConnectPeerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectPeer.ConnectPeerBgpConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectPeerConfigurationProperty
  = ConnectPeerConfigurationProperty {bgpConfigurations :: (Prelude.Maybe [ConnectPeerBgpConfigurationProperty]),
                                      coreNetworkAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                      insideCidrBlocks :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      peerAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                      protocol :: (Prelude.Maybe (Value Prelude.Text))}
mkConnectPeerConfigurationProperty ::
  ConnectPeerConfigurationProperty
mkConnectPeerConfigurationProperty
  = ConnectPeerConfigurationProperty
      {bgpConfigurations = Prelude.Nothing,
       coreNetworkAddress = Prelude.Nothing,
       insideCidrBlocks = Prelude.Nothing, peerAddress = Prelude.Nothing,
       protocol = Prelude.Nothing}
instance ToResourceProperties ConnectPeerConfigurationProperty where
  toResourceProperties ConnectPeerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectPeer.ConnectPeerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BgpConfigurations" Prelude.<$> bgpConfigurations,
                            (JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
                            (JSON..=) "InsideCidrBlocks" Prelude.<$> insideCidrBlocks,
                            (JSON..=) "PeerAddress" Prelude.<$> peerAddress,
                            (JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON ConnectPeerConfigurationProperty where
  toJSON ConnectPeerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BgpConfigurations" Prelude.<$> bgpConfigurations,
               (JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
               (JSON..=) "InsideCidrBlocks" Prelude.<$> insideCidrBlocks,
               (JSON..=) "PeerAddress" Prelude.<$> peerAddress,
               (JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "BgpConfigurations" ConnectPeerConfigurationProperty where
  type PropertyType "BgpConfigurations" ConnectPeerConfigurationProperty = [ConnectPeerBgpConfigurationProperty]
  set newValue ConnectPeerConfigurationProperty {..}
    = ConnectPeerConfigurationProperty
        {bgpConfigurations = Prelude.pure newValue, ..}
instance Property "CoreNetworkAddress" ConnectPeerConfigurationProperty where
  type PropertyType "CoreNetworkAddress" ConnectPeerConfigurationProperty = Value Prelude.Text
  set newValue ConnectPeerConfigurationProperty {..}
    = ConnectPeerConfigurationProperty
        {coreNetworkAddress = Prelude.pure newValue, ..}
instance Property "InsideCidrBlocks" ConnectPeerConfigurationProperty where
  type PropertyType "InsideCidrBlocks" ConnectPeerConfigurationProperty = ValueList Prelude.Text
  set newValue ConnectPeerConfigurationProperty {..}
    = ConnectPeerConfigurationProperty
        {insideCidrBlocks = Prelude.pure newValue, ..}
instance Property "PeerAddress" ConnectPeerConfigurationProperty where
  type PropertyType "PeerAddress" ConnectPeerConfigurationProperty = Value Prelude.Text
  set newValue ConnectPeerConfigurationProperty {..}
    = ConnectPeerConfigurationProperty
        {peerAddress = Prelude.pure newValue, ..}
instance Property "Protocol" ConnectPeerConfigurationProperty where
  type PropertyType "Protocol" ConnectPeerConfigurationProperty = Value Prelude.Text
  set newValue ConnectPeerConfigurationProperty {..}
    = ConnectPeerConfigurationProperty
        {protocol = Prelude.pure newValue, ..}