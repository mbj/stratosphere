module Stratosphere.EC2.IpPoolRouteTableAssociation (
        IpPoolRouteTableAssociation(..), mkIpPoolRouteTableAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpPoolRouteTableAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ippoolroutetableassociation.html>
    IpPoolRouteTableAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ippoolroutetableassociation.html#cfn-ec2-ippoolroutetableassociation-publicipv4pool>
                                 publicIpv4Pool :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ippoolroutetableassociation.html#cfn-ec2-ippoolroutetableassociation-routetableid>
                                 routeTableId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpPoolRouteTableAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> IpPoolRouteTableAssociation
mkIpPoolRouteTableAssociation publicIpv4Pool routeTableId
  = IpPoolRouteTableAssociation
      {haddock_workaround_ = (), publicIpv4Pool = publicIpv4Pool,
       routeTableId = routeTableId}
instance ToResourceProperties IpPoolRouteTableAssociation where
  toResourceProperties IpPoolRouteTableAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IpPoolRouteTableAssociation",
         supportsTags = Prelude.False,
         properties = ["PublicIpv4Pool" JSON..= publicIpv4Pool,
                       "RouteTableId" JSON..= routeTableId]}
instance JSON.ToJSON IpPoolRouteTableAssociation where
  toJSON IpPoolRouteTableAssociation {..}
    = JSON.object
        ["PublicIpv4Pool" JSON..= publicIpv4Pool,
         "RouteTableId" JSON..= routeTableId]
instance Property "PublicIpv4Pool" IpPoolRouteTableAssociation where
  type PropertyType "PublicIpv4Pool" IpPoolRouteTableAssociation = Value Prelude.Text
  set newValue IpPoolRouteTableAssociation {..}
    = IpPoolRouteTableAssociation {publicIpv4Pool = newValue, ..}
instance Property "RouteTableId" IpPoolRouteTableAssociation where
  type PropertyType "RouteTableId" IpPoolRouteTableAssociation = Value Prelude.Text
  set newValue IpPoolRouteTableAssociation {..}
    = IpPoolRouteTableAssociation {routeTableId = newValue, ..}