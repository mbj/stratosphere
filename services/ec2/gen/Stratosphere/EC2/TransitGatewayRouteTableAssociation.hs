module Stratosphere.EC2.TransitGatewayRouteTableAssociation (
        TransitGatewayRouteTableAssociation(..),
        mkTransitGatewayRouteTableAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayRouteTableAssociation
  = TransitGatewayRouteTableAssociation {transitGatewayAttachmentId :: (Value Prelude.Text),
                                         transitGatewayRouteTableId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayRouteTableAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> TransitGatewayRouteTableAssociation
mkTransitGatewayRouteTableAssociation
  transitGatewayAttachmentId
  transitGatewayRouteTableId
  = TransitGatewayRouteTableAssociation
      {transitGatewayAttachmentId = transitGatewayAttachmentId,
       transitGatewayRouteTableId = transitGatewayRouteTableId}
instance ToResourceProperties TransitGatewayRouteTableAssociation where
  toResourceProperties TransitGatewayRouteTableAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayRouteTableAssociation",
         supportsTags = Prelude.False,
         properties = ["TransitGatewayAttachmentId"
                         JSON..= transitGatewayAttachmentId,
                       "TransitGatewayRouteTableId" JSON..= transitGatewayRouteTableId]}
instance JSON.ToJSON TransitGatewayRouteTableAssociation where
  toJSON TransitGatewayRouteTableAssociation {..}
    = JSON.object
        ["TransitGatewayAttachmentId" JSON..= transitGatewayAttachmentId,
         "TransitGatewayRouteTableId" JSON..= transitGatewayRouteTableId]
instance Property "TransitGatewayAttachmentId" TransitGatewayRouteTableAssociation where
  type PropertyType "TransitGatewayAttachmentId" TransitGatewayRouteTableAssociation = Value Prelude.Text
  set newValue TransitGatewayRouteTableAssociation {..}
    = TransitGatewayRouteTableAssociation
        {transitGatewayAttachmentId = newValue, ..}
instance Property "TransitGatewayRouteTableId" TransitGatewayRouteTableAssociation where
  type PropertyType "TransitGatewayRouteTableId" TransitGatewayRouteTableAssociation = Value Prelude.Text
  set newValue TransitGatewayRouteTableAssociation {..}
    = TransitGatewayRouteTableAssociation
        {transitGatewayRouteTableId = newValue, ..}