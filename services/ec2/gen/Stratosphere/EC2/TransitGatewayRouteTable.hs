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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html>
    TransitGatewayRouteTable {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-tags>
                              tags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-transitgatewayid>
                              transitGatewayId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayRouteTable ::
  Value Prelude.Text -> TransitGatewayRouteTable
mkTransitGatewayRouteTable transitGatewayId
  = TransitGatewayRouteTable
      {haddock_workaround_ = (), transitGatewayId = transitGatewayId,
       tags = Prelude.Nothing}
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