module Stratosphere.EC2.TransitGatewayRouteTable (
        TransitGatewayRouteTable(..), mkTransitGatewayRouteTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayRouteTable
  = TransitGatewayRouteTable {tags :: (Prelude.Maybe [Tag]),
                              transitGatewayId :: (Value Prelude.Text)}
mkTransitGatewayRouteTable ::
  Value Prelude.Text -> TransitGatewayRouteTable
mkTransitGatewayRouteTable transitGatewayId
  = TransitGatewayRouteTable
      {transitGatewayId = transitGatewayId, tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayRouteTable where
  toResourceProperties TransitGatewayRouteTable {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayRouteTable",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TransitGatewayId" JSON..= transitGatewayId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayRouteTable where
  toJSON TransitGatewayRouteTable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TransitGatewayId" JSON..= transitGatewayId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" TransitGatewayRouteTable where
  type PropertyType "Tags" TransitGatewayRouteTable = [Tag]
  set newValue TransitGatewayRouteTable {..}
    = TransitGatewayRouteTable {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" TransitGatewayRouteTable where
  type PropertyType "TransitGatewayId" TransitGatewayRouteTable = Value Prelude.Text
  set newValue TransitGatewayRouteTable {..}
    = TransitGatewayRouteTable {transitGatewayId = newValue, ..}