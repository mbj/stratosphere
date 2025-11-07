module Stratosphere.EC2.TransitGatewayConnectPeer (
        module Exports, TransitGatewayConnectPeer(..),
        mkTransitGatewayConnectPeer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TransitGatewayConnectPeer.TransitGatewayConnectPeerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayConnectPeer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnectpeer.html>
    TransitGatewayConnectPeer {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnectpeer.html#cfn-ec2-transitgatewayconnectpeer-connectpeerconfiguration>
                               connectPeerConfiguration :: TransitGatewayConnectPeerConfigurationProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnectpeer.html#cfn-ec2-transitgatewayconnectpeer-tags>
                               tags :: (Prelude.Maybe [Tag]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnectpeer.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayattachmentid>
                               transitGatewayAttachmentId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayConnectPeer ::
  TransitGatewayConnectPeerConfigurationProperty
  -> Value Prelude.Text -> TransitGatewayConnectPeer
mkTransitGatewayConnectPeer
  connectPeerConfiguration
  transitGatewayAttachmentId
  = TransitGatewayConnectPeer
      {haddock_workaround_ = (),
       connectPeerConfiguration = connectPeerConfiguration,
       transitGatewayAttachmentId = transitGatewayAttachmentId,
       tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayConnectPeer where
  toResourceProperties TransitGatewayConnectPeer {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayConnectPeer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectPeerConfiguration" JSON..= connectPeerConfiguration,
                            "TransitGatewayAttachmentId" JSON..= transitGatewayAttachmentId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayConnectPeer where
  toJSON TransitGatewayConnectPeer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectPeerConfiguration" JSON..= connectPeerConfiguration,
               "TransitGatewayAttachmentId" JSON..= transitGatewayAttachmentId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectPeerConfiguration" TransitGatewayConnectPeer where
  type PropertyType "ConnectPeerConfiguration" TransitGatewayConnectPeer = TransitGatewayConnectPeerConfigurationProperty
  set newValue TransitGatewayConnectPeer {..}
    = TransitGatewayConnectPeer
        {connectPeerConfiguration = newValue, ..}
instance Property "Tags" TransitGatewayConnectPeer where
  type PropertyType "Tags" TransitGatewayConnectPeer = [Tag]
  set newValue TransitGatewayConnectPeer {..}
    = TransitGatewayConnectPeer {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayAttachmentId" TransitGatewayConnectPeer where
  type PropertyType "TransitGatewayAttachmentId" TransitGatewayConnectPeer = Value Prelude.Text
  set newValue TransitGatewayConnectPeer {..}
    = TransitGatewayConnectPeer
        {transitGatewayAttachmentId = newValue, ..}