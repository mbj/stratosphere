module Stratosphere.EC2.TransitGatewayPeeringAttachment (
        TransitGatewayPeeringAttachment(..),
        mkTransitGatewayPeeringAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayPeeringAttachment
  = TransitGatewayPeeringAttachment {peerAccountId :: (Value Prelude.Text),
                                     peerRegion :: (Value Prelude.Text),
                                     peerTransitGatewayId :: (Value Prelude.Text),
                                     tags :: (Prelude.Maybe [Tag]),
                                     transitGatewayId :: (Value Prelude.Text)}
mkTransitGatewayPeeringAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> TransitGatewayPeeringAttachment
mkTransitGatewayPeeringAttachment
  peerAccountId
  peerRegion
  peerTransitGatewayId
  transitGatewayId
  = TransitGatewayPeeringAttachment
      {peerAccountId = peerAccountId, peerRegion = peerRegion,
       peerTransitGatewayId = peerTransitGatewayId,
       transitGatewayId = transitGatewayId, tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayPeeringAttachment where
  toResourceProperties TransitGatewayPeeringAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayPeeringAttachment",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PeerAccountId" JSON..= peerAccountId,
                            "PeerRegion" JSON..= peerRegion,
                            "PeerTransitGatewayId" JSON..= peerTransitGatewayId,
                            "TransitGatewayId" JSON..= transitGatewayId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayPeeringAttachment where
  toJSON TransitGatewayPeeringAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PeerAccountId" JSON..= peerAccountId,
               "PeerRegion" JSON..= peerRegion,
               "PeerTransitGatewayId" JSON..= peerTransitGatewayId,
               "TransitGatewayId" JSON..= transitGatewayId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PeerAccountId" TransitGatewayPeeringAttachment where
  type PropertyType "PeerAccountId" TransitGatewayPeeringAttachment = Value Prelude.Text
  set newValue TransitGatewayPeeringAttachment {..}
    = TransitGatewayPeeringAttachment {peerAccountId = newValue, ..}
instance Property "PeerRegion" TransitGatewayPeeringAttachment where
  type PropertyType "PeerRegion" TransitGatewayPeeringAttachment = Value Prelude.Text
  set newValue TransitGatewayPeeringAttachment {..}
    = TransitGatewayPeeringAttachment {peerRegion = newValue, ..}
instance Property "PeerTransitGatewayId" TransitGatewayPeeringAttachment where
  type PropertyType "PeerTransitGatewayId" TransitGatewayPeeringAttachment = Value Prelude.Text
  set newValue TransitGatewayPeeringAttachment {..}
    = TransitGatewayPeeringAttachment
        {peerTransitGatewayId = newValue, ..}
instance Property "Tags" TransitGatewayPeeringAttachment where
  type PropertyType "Tags" TransitGatewayPeeringAttachment = [Tag]
  set newValue TransitGatewayPeeringAttachment {..}
    = TransitGatewayPeeringAttachment
        {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" TransitGatewayPeeringAttachment where
  type PropertyType "TransitGatewayId" TransitGatewayPeeringAttachment = Value Prelude.Text
  set newValue TransitGatewayPeeringAttachment {..}
    = TransitGatewayPeeringAttachment {transitGatewayId = newValue, ..}