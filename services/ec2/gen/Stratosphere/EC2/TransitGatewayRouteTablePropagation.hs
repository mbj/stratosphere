module Stratosphere.EC2.TransitGatewayRouteTablePropagation (
        TransitGatewayRouteTablePropagation(..),
        mkTransitGatewayRouteTablePropagation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayRouteTablePropagation
  = TransitGatewayRouteTablePropagation {transitGatewayAttachmentId :: (Value Prelude.Text),
                                         transitGatewayRouteTableId :: (Value Prelude.Text)}
mkTransitGatewayRouteTablePropagation ::
  Value Prelude.Text
  -> Value Prelude.Text -> TransitGatewayRouteTablePropagation
mkTransitGatewayRouteTablePropagation
  transitGatewayAttachmentId
  transitGatewayRouteTableId
  = TransitGatewayRouteTablePropagation
      {transitGatewayAttachmentId = transitGatewayAttachmentId,
       transitGatewayRouteTableId = transitGatewayRouteTableId}
instance ToResourceProperties TransitGatewayRouteTablePropagation where
  toResourceProperties TransitGatewayRouteTablePropagation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayRouteTablePropagation",
         supportsTags = Prelude.False,
         properties = ["TransitGatewayAttachmentId"
                         JSON..= transitGatewayAttachmentId,
                       "TransitGatewayRouteTableId" JSON..= transitGatewayRouteTableId]}
instance JSON.ToJSON TransitGatewayRouteTablePropagation where
  toJSON TransitGatewayRouteTablePropagation {..}
    = JSON.object
        ["TransitGatewayAttachmentId" JSON..= transitGatewayAttachmentId,
         "TransitGatewayRouteTableId" JSON..= transitGatewayRouteTableId]
instance Property "TransitGatewayAttachmentId" TransitGatewayRouteTablePropagation where
  type PropertyType "TransitGatewayAttachmentId" TransitGatewayRouteTablePropagation = Value Prelude.Text
  set newValue TransitGatewayRouteTablePropagation {..}
    = TransitGatewayRouteTablePropagation
        {transitGatewayAttachmentId = newValue, ..}
instance Property "TransitGatewayRouteTableId" TransitGatewayRouteTablePropagation where
  type PropertyType "TransitGatewayRouteTableId" TransitGatewayRouteTablePropagation = Value Prelude.Text
  set newValue TransitGatewayRouteTablePropagation {..}
    = TransitGatewayRouteTablePropagation
        {transitGatewayRouteTableId = newValue, ..}