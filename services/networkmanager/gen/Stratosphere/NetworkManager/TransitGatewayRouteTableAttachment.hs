module Stratosphere.NetworkManager.TransitGatewayRouteTableAttachment (
        module Exports, TransitGatewayRouteTableAttachment(..),
        mkTransitGatewayRouteTableAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.TransitGatewayRouteTableAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayRouteTableAttachment
  = TransitGatewayRouteTableAttachment {peeringId :: (Value Prelude.Text),
                                        proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                                        tags :: (Prelude.Maybe [Tag]),
                                        transitGatewayRouteTableArn :: (Value Prelude.Text)}
mkTransitGatewayRouteTableAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> TransitGatewayRouteTableAttachment
mkTransitGatewayRouteTableAttachment
  peeringId
  transitGatewayRouteTableArn
  = TransitGatewayRouteTableAttachment
      {peeringId = peeringId,
       transitGatewayRouteTableArn = transitGatewayRouteTableArn,
       proposedSegmentChange = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayRouteTableAttachment where
  toResourceProperties TransitGatewayRouteTableAttachment {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::TransitGatewayRouteTableAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PeeringId" JSON..= peeringId,
                            "TransitGatewayRouteTableArn" JSON..= transitGatewayRouteTableArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ProposedSegmentChange"
                                 Prelude.<$> proposedSegmentChange,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayRouteTableAttachment where
  toJSON TransitGatewayRouteTableAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PeeringId" JSON..= peeringId,
               "TransitGatewayRouteTableArn" JSON..= transitGatewayRouteTableArn]
              (Prelude.catMaybes
                 [(JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PeeringId" TransitGatewayRouteTableAttachment where
  type PropertyType "PeeringId" TransitGatewayRouteTableAttachment = Value Prelude.Text
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment {peeringId = newValue, ..}
instance Property "ProposedSegmentChange" TransitGatewayRouteTableAttachment where
  type PropertyType "ProposedSegmentChange" TransitGatewayRouteTableAttachment = ProposedSegmentChangeProperty
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment
        {proposedSegmentChange = Prelude.pure newValue, ..}
instance Property "Tags" TransitGatewayRouteTableAttachment where
  type PropertyType "Tags" TransitGatewayRouteTableAttachment = [Tag]
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment
        {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayRouteTableArn" TransitGatewayRouteTableAttachment where
  type PropertyType "TransitGatewayRouteTableArn" TransitGatewayRouteTableAttachment = Value Prelude.Text
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment
        {transitGatewayRouteTableArn = newValue, ..}