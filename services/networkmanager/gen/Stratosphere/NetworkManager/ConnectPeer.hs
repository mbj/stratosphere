module Stratosphere.NetworkManager.ConnectPeer (
        module Exports, ConnectPeer(..), mkConnectPeer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectPeer.BgpOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConnectPeer
  = ConnectPeer {bgpOptions :: (Prelude.Maybe BgpOptionsProperty),
                 connectAttachmentId :: (Value Prelude.Text),
                 coreNetworkAddress :: (Prelude.Maybe (Value Prelude.Text)),
                 insideCidrBlocks :: (ValueList Prelude.Text),
                 peerAddress :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
mkConnectPeer ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> ConnectPeer
mkConnectPeer connectAttachmentId insideCidrBlocks peerAddress
  = ConnectPeer
      {connectAttachmentId = connectAttachmentId,
       insideCidrBlocks = insideCidrBlocks, peerAddress = peerAddress,
       bgpOptions = Prelude.Nothing, coreNetworkAddress = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ConnectPeer where
  toResourceProperties ConnectPeer {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectPeer",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectAttachmentId" JSON..= connectAttachmentId,
                            "InsideCidrBlocks" JSON..= insideCidrBlocks,
                            "PeerAddress" JSON..= peerAddress]
                           (Prelude.catMaybes
                              [(JSON..=) "BgpOptions" Prelude.<$> bgpOptions,
                               (JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConnectPeer where
  toJSON ConnectPeer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectAttachmentId" JSON..= connectAttachmentId,
               "InsideCidrBlocks" JSON..= insideCidrBlocks,
               "PeerAddress" JSON..= peerAddress]
              (Prelude.catMaybes
                 [(JSON..=) "BgpOptions" Prelude.<$> bgpOptions,
                  (JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BgpOptions" ConnectPeer where
  type PropertyType "BgpOptions" ConnectPeer = BgpOptionsProperty
  set newValue ConnectPeer {..}
    = ConnectPeer {bgpOptions = Prelude.pure newValue, ..}
instance Property "ConnectAttachmentId" ConnectPeer where
  type PropertyType "ConnectAttachmentId" ConnectPeer = Value Prelude.Text
  set newValue ConnectPeer {..}
    = ConnectPeer {connectAttachmentId = newValue, ..}
instance Property "CoreNetworkAddress" ConnectPeer where
  type PropertyType "CoreNetworkAddress" ConnectPeer = Value Prelude.Text
  set newValue ConnectPeer {..}
    = ConnectPeer {coreNetworkAddress = Prelude.pure newValue, ..}
instance Property "InsideCidrBlocks" ConnectPeer where
  type PropertyType "InsideCidrBlocks" ConnectPeer = ValueList Prelude.Text
  set newValue ConnectPeer {..}
    = ConnectPeer {insideCidrBlocks = newValue, ..}
instance Property "PeerAddress" ConnectPeer where
  type PropertyType "PeerAddress" ConnectPeer = Value Prelude.Text
  set newValue ConnectPeer {..}
    = ConnectPeer {peerAddress = newValue, ..}
instance Property "Tags" ConnectPeer where
  type PropertyType "Tags" ConnectPeer = [Tag]
  set newValue ConnectPeer {..}
    = ConnectPeer {tags = Prelude.pure newValue, ..}