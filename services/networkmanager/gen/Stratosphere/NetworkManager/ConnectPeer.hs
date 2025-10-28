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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html>
    ConnectPeer {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-bgpoptions>
                 bgpOptions :: (Prelude.Maybe BgpOptionsProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-connectattachmentid>
                 connectAttachmentId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-corenetworkaddress>
                 coreNetworkAddress :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-insidecidrblocks>
                 insideCidrBlocks :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-peeraddress>
                 peerAddress :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-subnetarn>
                 subnetArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectpeer.html#cfn-networkmanager-connectpeer-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectPeer ::
  Value Prelude.Text -> Value Prelude.Text -> ConnectPeer
mkConnectPeer connectAttachmentId peerAddress
  = ConnectPeer
      {haddock_workaround_ = (),
       connectAttachmentId = connectAttachmentId,
       peerAddress = peerAddress, bgpOptions = Prelude.Nothing,
       coreNetworkAddress = Prelude.Nothing,
       insideCidrBlocks = Prelude.Nothing, subnetArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ConnectPeer where
  toResourceProperties ConnectPeer {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectPeer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectAttachmentId" JSON..= connectAttachmentId,
                            "PeerAddress" JSON..= peerAddress]
                           (Prelude.catMaybes
                              [(JSON..=) "BgpOptions" Prelude.<$> bgpOptions,
                               (JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
                               (JSON..=) "InsideCidrBlocks" Prelude.<$> insideCidrBlocks,
                               (JSON..=) "SubnetArn" Prelude.<$> subnetArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConnectPeer where
  toJSON ConnectPeer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectAttachmentId" JSON..= connectAttachmentId,
               "PeerAddress" JSON..= peerAddress]
              (Prelude.catMaybes
                 [(JSON..=) "BgpOptions" Prelude.<$> bgpOptions,
                  (JSON..=) "CoreNetworkAddress" Prelude.<$> coreNetworkAddress,
                  (JSON..=) "InsideCidrBlocks" Prelude.<$> insideCidrBlocks,
                  (JSON..=) "SubnetArn" Prelude.<$> subnetArn,
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
    = ConnectPeer {insideCidrBlocks = Prelude.pure newValue, ..}
instance Property "PeerAddress" ConnectPeer where
  type PropertyType "PeerAddress" ConnectPeer = Value Prelude.Text
  set newValue ConnectPeer {..}
    = ConnectPeer {peerAddress = newValue, ..}
instance Property "SubnetArn" ConnectPeer where
  type PropertyType "SubnetArn" ConnectPeer = Value Prelude.Text
  set newValue ConnectPeer {..}
    = ConnectPeer {subnetArn = Prelude.pure newValue, ..}
instance Property "Tags" ConnectPeer where
  type PropertyType "Tags" ConnectPeer = [Tag]
  set newValue ConnectPeer {..}
    = ConnectPeer {tags = Prelude.pure newValue, ..}