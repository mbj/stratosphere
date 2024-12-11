module Stratosphere.NetworkManager.TransitGatewayRouteTableAttachment (
        module Exports, TransitGatewayRouteTableAttachment(..),
        mkTransitGatewayRouteTableAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.TransitGatewayRouteTableAttachment.ProposedNetworkFunctionGroupChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.TransitGatewayRouteTableAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayRouteTableAttachment
  = TransitGatewayRouteTableAttachment {networkFunctionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                        peeringId :: (Value Prelude.Text),
                                        proposedNetworkFunctionGroupChange :: (Prelude.Maybe ProposedNetworkFunctionGroupChangeProperty),
                                        proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                                        tags :: (Prelude.Maybe [Tag]),
                                        transitGatewayRouteTableArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayRouteTableAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> TransitGatewayRouteTableAttachment
mkTransitGatewayRouteTableAttachment
  peeringId
  transitGatewayRouteTableArn
  = TransitGatewayRouteTableAttachment
      {peeringId = peeringId,
       transitGatewayRouteTableArn = transitGatewayRouteTableArn,
       networkFunctionGroupName = Prelude.Nothing,
       proposedNetworkFunctionGroupChange = Prelude.Nothing,
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
                              [(JSON..=) "NetworkFunctionGroupName"
                                 Prelude.<$> networkFunctionGroupName,
                               (JSON..=) "ProposedNetworkFunctionGroupChange"
                                 Prelude.<$> proposedNetworkFunctionGroupChange,
                               (JSON..=) "ProposedSegmentChange"
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
                 [(JSON..=) "NetworkFunctionGroupName"
                    Prelude.<$> networkFunctionGroupName,
                  (JSON..=) "ProposedNetworkFunctionGroupChange"
                    Prelude.<$> proposedNetworkFunctionGroupChange,
                  (JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "NetworkFunctionGroupName" TransitGatewayRouteTableAttachment where
  type PropertyType "NetworkFunctionGroupName" TransitGatewayRouteTableAttachment = Value Prelude.Text
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment
        {networkFunctionGroupName = Prelude.pure newValue, ..}
instance Property "PeeringId" TransitGatewayRouteTableAttachment where
  type PropertyType "PeeringId" TransitGatewayRouteTableAttachment = Value Prelude.Text
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment {peeringId = newValue, ..}
instance Property "ProposedNetworkFunctionGroupChange" TransitGatewayRouteTableAttachment where
  type PropertyType "ProposedNetworkFunctionGroupChange" TransitGatewayRouteTableAttachment = ProposedNetworkFunctionGroupChangeProperty
  set newValue TransitGatewayRouteTableAttachment {..}
    = TransitGatewayRouteTableAttachment
        {proposedNetworkFunctionGroupChange = Prelude.pure newValue, ..}
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