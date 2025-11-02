module Stratosphere.EC2.SubnetRouteTableAssociation (
        SubnetRouteTableAssociation(..), mkSubnetRouteTableAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetRouteTableAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetroutetableassociation.html>
    SubnetRouteTableAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetroutetableassociation.html#cfn-ec2-subnetroutetableassociation-routetableid>
                                 routeTableId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetroutetableassociation.html#cfn-ec2-subnetroutetableassociation-subnetid>
                                 subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetRouteTableAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubnetRouteTableAssociation
mkSubnetRouteTableAssociation routeTableId subnetId
  = SubnetRouteTableAssociation
      {haddock_workaround_ = (), routeTableId = routeTableId,
       subnetId = subnetId}
instance ToResourceProperties SubnetRouteTableAssociation where
  toResourceProperties SubnetRouteTableAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SubnetRouteTableAssociation",
         supportsTags = Prelude.False,
         properties = ["RouteTableId" JSON..= routeTableId,
                       "SubnetId" JSON..= subnetId]}
instance JSON.ToJSON SubnetRouteTableAssociation where
  toJSON SubnetRouteTableAssociation {..}
    = JSON.object
        ["RouteTableId" JSON..= routeTableId, "SubnetId" JSON..= subnetId]
instance Property "RouteTableId" SubnetRouteTableAssociation where
  type PropertyType "RouteTableId" SubnetRouteTableAssociation = Value Prelude.Text
  set newValue SubnetRouteTableAssociation {..}
    = SubnetRouteTableAssociation {routeTableId = newValue, ..}
instance Property "SubnetId" SubnetRouteTableAssociation where
  type PropertyType "SubnetId" SubnetRouteTableAssociation = Value Prelude.Text
  set newValue SubnetRouteTableAssociation {..}
    = SubnetRouteTableAssociation {subnetId = newValue, ..}