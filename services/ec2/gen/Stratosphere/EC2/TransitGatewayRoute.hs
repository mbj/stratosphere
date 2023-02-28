module Stratosphere.EC2.TransitGatewayRoute (
        TransitGatewayRoute(..), mkTransitGatewayRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayRoute
  = TransitGatewayRoute {blackhole :: (Prelude.Maybe (Value Prelude.Bool)),
                         destinationCidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                         transitGatewayAttachmentId :: (Prelude.Maybe (Value Prelude.Text)),
                         transitGatewayRouteTableId :: (Value Prelude.Text)}
mkTransitGatewayRoute :: Value Prelude.Text -> TransitGatewayRoute
mkTransitGatewayRoute transitGatewayRouteTableId
  = TransitGatewayRoute
      {transitGatewayRouteTableId = transitGatewayRouteTableId,
       blackhole = Prelude.Nothing,
       destinationCidrBlock = Prelude.Nothing,
       transitGatewayAttachmentId = Prelude.Nothing}
instance ToResourceProperties TransitGatewayRoute where
  toResourceProperties TransitGatewayRoute {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TransitGatewayRouteTableId" JSON..= transitGatewayRouteTableId]
                           (Prelude.catMaybes
                              [(JSON..=) "Blackhole" Prelude.<$> blackhole,
                               (JSON..=) "DestinationCidrBlock" Prelude.<$> destinationCidrBlock,
                               (JSON..=) "TransitGatewayAttachmentId"
                                 Prelude.<$> transitGatewayAttachmentId]))}
instance JSON.ToJSON TransitGatewayRoute where
  toJSON TransitGatewayRoute {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TransitGatewayRouteTableId" JSON..= transitGatewayRouteTableId]
              (Prelude.catMaybes
                 [(JSON..=) "Blackhole" Prelude.<$> blackhole,
                  (JSON..=) "DestinationCidrBlock" Prelude.<$> destinationCidrBlock,
                  (JSON..=) "TransitGatewayAttachmentId"
                    Prelude.<$> transitGatewayAttachmentId])))
instance Property "Blackhole" TransitGatewayRoute where
  type PropertyType "Blackhole" TransitGatewayRoute = Value Prelude.Bool
  set newValue TransitGatewayRoute {..}
    = TransitGatewayRoute {blackhole = Prelude.pure newValue, ..}
instance Property "DestinationCidrBlock" TransitGatewayRoute where
  type PropertyType "DestinationCidrBlock" TransitGatewayRoute = Value Prelude.Text
  set newValue TransitGatewayRoute {..}
    = TransitGatewayRoute
        {destinationCidrBlock = Prelude.pure newValue, ..}
instance Property "TransitGatewayAttachmentId" TransitGatewayRoute where
  type PropertyType "TransitGatewayAttachmentId" TransitGatewayRoute = Value Prelude.Text
  set newValue TransitGatewayRoute {..}
    = TransitGatewayRoute
        {transitGatewayAttachmentId = Prelude.pure newValue, ..}
instance Property "TransitGatewayRouteTableId" TransitGatewayRoute where
  type PropertyType "TransitGatewayRouteTableId" TransitGatewayRoute = Value Prelude.Text
  set newValue TransitGatewayRoute {..}
    = TransitGatewayRoute {transitGatewayRouteTableId = newValue, ..}