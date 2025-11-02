module Stratosphere.EC2.LocalGatewayRouteTableVPCAssociation (
        LocalGatewayRouteTableVPCAssociation(..),
        mkLocalGatewayRouteTableVPCAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocalGatewayRouteTableVPCAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html>
    LocalGatewayRouteTableVPCAssociation {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html#cfn-ec2-localgatewayroutetablevpcassociation-localgatewayroutetableid>
                                          localGatewayRouteTableId :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html#cfn-ec2-localgatewayroutetablevpcassociation-tags>
                                          tags :: (Prelude.Maybe [Tag]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html#cfn-ec2-localgatewayroutetablevpcassociation-vpcid>
                                          vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalGatewayRouteTableVPCAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> LocalGatewayRouteTableVPCAssociation
mkLocalGatewayRouteTableVPCAssociation
  localGatewayRouteTableId
  vpcId
  = LocalGatewayRouteTableVPCAssociation
      {haddock_workaround_ = (),
       localGatewayRouteTableId = localGatewayRouteTableId, vpcId = vpcId,
       tags = Prelude.Nothing}
instance ToResourceProperties LocalGatewayRouteTableVPCAssociation where
  toResourceProperties LocalGatewayRouteTableVPCAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayRouteTableVPCAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalGatewayRouteTableId" JSON..= localGatewayRouteTableId,
                            "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocalGatewayRouteTableVPCAssociation where
  toJSON LocalGatewayRouteTableVPCAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalGatewayRouteTableId" JSON..= localGatewayRouteTableId,
               "VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LocalGatewayRouteTableId" LocalGatewayRouteTableVPCAssociation where
  type PropertyType "LocalGatewayRouteTableId" LocalGatewayRouteTableVPCAssociation = Value Prelude.Text
  set newValue LocalGatewayRouteTableVPCAssociation {..}
    = LocalGatewayRouteTableVPCAssociation
        {localGatewayRouteTableId = newValue, ..}
instance Property "Tags" LocalGatewayRouteTableVPCAssociation where
  type PropertyType "Tags" LocalGatewayRouteTableVPCAssociation = [Tag]
  set newValue LocalGatewayRouteTableVPCAssociation {..}
    = LocalGatewayRouteTableVPCAssociation
        {tags = Prelude.pure newValue, ..}
instance Property "VpcId" LocalGatewayRouteTableVPCAssociation where
  type PropertyType "VpcId" LocalGatewayRouteTableVPCAssociation = Value Prelude.Text
  set newValue LocalGatewayRouteTableVPCAssociation {..}
    = LocalGatewayRouteTableVPCAssociation {vpcId = newValue, ..}