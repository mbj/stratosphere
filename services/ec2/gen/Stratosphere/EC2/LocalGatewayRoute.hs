module Stratosphere.EC2.LocalGatewayRoute (
        LocalGatewayRoute(..), mkLocalGatewayRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalGatewayRoute
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html>
    LocalGatewayRoute {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-destinationcidrblock>
                       destinationCidrBlock :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-localgatewayroutetableid>
                       localGatewayRouteTableId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-localgatewayvirtualinterfacegroupid>
                       localGatewayVirtualInterfaceGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-networkinterfaceid>
                       networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalGatewayRoute ::
  Value Prelude.Text -> Value Prelude.Text -> LocalGatewayRoute
mkLocalGatewayRoute destinationCidrBlock localGatewayRouteTableId
  = LocalGatewayRoute
      {haddock_workaround_ = (),
       destinationCidrBlock = destinationCidrBlock,
       localGatewayRouteTableId = localGatewayRouteTableId,
       localGatewayVirtualInterfaceGroupId = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing}
instance ToResourceProperties LocalGatewayRoute where
  toResourceProperties LocalGatewayRoute {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationCidrBlock" JSON..= destinationCidrBlock,
                            "LocalGatewayRouteTableId" JSON..= localGatewayRouteTableId]
                           (Prelude.catMaybes
                              [(JSON..=) "LocalGatewayVirtualInterfaceGroupId"
                                 Prelude.<$> localGatewayVirtualInterfaceGroupId,
                               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId]))}
instance JSON.ToJSON LocalGatewayRoute where
  toJSON LocalGatewayRoute {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationCidrBlock" JSON..= destinationCidrBlock,
               "LocalGatewayRouteTableId" JSON..= localGatewayRouteTableId]
              (Prelude.catMaybes
                 [(JSON..=) "LocalGatewayVirtualInterfaceGroupId"
                    Prelude.<$> localGatewayVirtualInterfaceGroupId,
                  (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId])))
instance Property "DestinationCidrBlock" LocalGatewayRoute where
  type PropertyType "DestinationCidrBlock" LocalGatewayRoute = Value Prelude.Text
  set newValue LocalGatewayRoute {..}
    = LocalGatewayRoute {destinationCidrBlock = newValue, ..}
instance Property "LocalGatewayRouteTableId" LocalGatewayRoute where
  type PropertyType "LocalGatewayRouteTableId" LocalGatewayRoute = Value Prelude.Text
  set newValue LocalGatewayRoute {..}
    = LocalGatewayRoute {localGatewayRouteTableId = newValue, ..}
instance Property "LocalGatewayVirtualInterfaceGroupId" LocalGatewayRoute where
  type PropertyType "LocalGatewayVirtualInterfaceGroupId" LocalGatewayRoute = Value Prelude.Text
  set newValue LocalGatewayRoute {..}
    = LocalGatewayRoute
        {localGatewayVirtualInterfaceGroupId = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" LocalGatewayRoute where
  type PropertyType "NetworkInterfaceId" LocalGatewayRoute = Value Prelude.Text
  set newValue LocalGatewayRoute {..}
    = LocalGatewayRoute
        {networkInterfaceId = Prelude.pure newValue, ..}