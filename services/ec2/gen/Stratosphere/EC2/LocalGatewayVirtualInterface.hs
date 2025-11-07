module Stratosphere.EC2.LocalGatewayVirtualInterface (
        LocalGatewayVirtualInterface(..), mkLocalGatewayVirtualInterface
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocalGatewayVirtualInterface
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html>
    LocalGatewayVirtualInterface {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-localaddress>
                                  localAddress :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-localgatewayvirtualinterfacegroupid>
                                  localGatewayVirtualInterfaceGroupId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-outpostlagid>
                                  outpostLagId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-peeraddress>
                                  peerAddress :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-peerbgpasn>
                                  peerBgpAsn :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-peerbgpasnextended>
                                  peerBgpAsnExtended :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-tags>
                                  tags :: (Prelude.Maybe [Tag]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterface.html#cfn-ec2-localgatewayvirtualinterface-vlan>
                                  vlan :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalGatewayVirtualInterface ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Integer -> LocalGatewayVirtualInterface
mkLocalGatewayVirtualInterface
  localAddress
  localGatewayVirtualInterfaceGroupId
  outpostLagId
  peerAddress
  vlan
  = LocalGatewayVirtualInterface
      {haddock_workaround_ = (), localAddress = localAddress,
       localGatewayVirtualInterfaceGroupId = localGatewayVirtualInterfaceGroupId,
       outpostLagId = outpostLagId, peerAddress = peerAddress,
       vlan = vlan, peerBgpAsn = Prelude.Nothing,
       peerBgpAsnExtended = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LocalGatewayVirtualInterface where
  toResourceProperties LocalGatewayVirtualInterface {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayVirtualInterface",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalAddress" JSON..= localAddress,
                            "LocalGatewayVirtualInterfaceGroupId"
                              JSON..= localGatewayVirtualInterfaceGroupId,
                            "OutpostLagId" JSON..= outpostLagId,
                            "PeerAddress" JSON..= peerAddress, "Vlan" JSON..= vlan]
                           (Prelude.catMaybes
                              [(JSON..=) "PeerBgpAsn" Prelude.<$> peerBgpAsn,
                               (JSON..=) "PeerBgpAsnExtended" Prelude.<$> peerBgpAsnExtended,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocalGatewayVirtualInterface where
  toJSON LocalGatewayVirtualInterface {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalAddress" JSON..= localAddress,
               "LocalGatewayVirtualInterfaceGroupId"
                 JSON..= localGatewayVirtualInterfaceGroupId,
               "OutpostLagId" JSON..= outpostLagId,
               "PeerAddress" JSON..= peerAddress, "Vlan" JSON..= vlan]
              (Prelude.catMaybes
                 [(JSON..=) "PeerBgpAsn" Prelude.<$> peerBgpAsn,
                  (JSON..=) "PeerBgpAsnExtended" Prelude.<$> peerBgpAsnExtended,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LocalAddress" LocalGatewayVirtualInterface where
  type PropertyType "LocalAddress" LocalGatewayVirtualInterface = Value Prelude.Text
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface {localAddress = newValue, ..}
instance Property "LocalGatewayVirtualInterfaceGroupId" LocalGatewayVirtualInterface where
  type PropertyType "LocalGatewayVirtualInterfaceGroupId" LocalGatewayVirtualInterface = Value Prelude.Text
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface
        {localGatewayVirtualInterfaceGroupId = newValue, ..}
instance Property "OutpostLagId" LocalGatewayVirtualInterface where
  type PropertyType "OutpostLagId" LocalGatewayVirtualInterface = Value Prelude.Text
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface {outpostLagId = newValue, ..}
instance Property "PeerAddress" LocalGatewayVirtualInterface where
  type PropertyType "PeerAddress" LocalGatewayVirtualInterface = Value Prelude.Text
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface {peerAddress = newValue, ..}
instance Property "PeerBgpAsn" LocalGatewayVirtualInterface where
  type PropertyType "PeerBgpAsn" LocalGatewayVirtualInterface = Value Prelude.Integer
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface
        {peerBgpAsn = Prelude.pure newValue, ..}
instance Property "PeerBgpAsnExtended" LocalGatewayVirtualInterface where
  type PropertyType "PeerBgpAsnExtended" LocalGatewayVirtualInterface = Value Prelude.Integer
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface
        {peerBgpAsnExtended = Prelude.pure newValue, ..}
instance Property "Tags" LocalGatewayVirtualInterface where
  type PropertyType "Tags" LocalGatewayVirtualInterface = [Tag]
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface {tags = Prelude.pure newValue, ..}
instance Property "Vlan" LocalGatewayVirtualInterface where
  type PropertyType "Vlan" LocalGatewayVirtualInterface = Value Prelude.Integer
  set newValue LocalGatewayVirtualInterface {..}
    = LocalGatewayVirtualInterface {vlan = newValue, ..}