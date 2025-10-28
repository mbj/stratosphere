module Stratosphere.EC2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation (
        LocalGatewayRouteTableVirtualInterfaceGroupAssociation(..),
        mkLocalGatewayRouteTableVirtualInterfaceGroupAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocalGatewayRouteTableVirtualInterfaceGroupAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevirtualinterfacegroupassociation.html>
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevirtualinterfacegroupassociation.html#cfn-ec2-localgatewayroutetablevirtualinterfacegroupassociation-localgatewayroutetableid>
                                                            localGatewayRouteTableId :: (Value Prelude.Text),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevirtualinterfacegroupassociation.html#cfn-ec2-localgatewayroutetablevirtualinterfacegroupassociation-localgatewayvirtualinterfacegroupid>
                                                            localGatewayVirtualInterfaceGroupId :: (Value Prelude.Text),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevirtualinterfacegroupassociation.html#cfn-ec2-localgatewayroutetablevirtualinterfacegroupassociation-tags>
                                                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalGatewayRouteTableVirtualInterfaceGroupAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> LocalGatewayRouteTableVirtualInterfaceGroupAssociation
mkLocalGatewayRouteTableVirtualInterfaceGroupAssociation
  localGatewayRouteTableId
  localGatewayVirtualInterfaceGroupId
  = LocalGatewayRouteTableVirtualInterfaceGroupAssociation
      {haddock_workaround_ = (),
       localGatewayRouteTableId = localGatewayRouteTableId,
       localGatewayVirtualInterfaceGroupId = localGatewayVirtualInterfaceGroupId,
       tags = Prelude.Nothing}
instance ToResourceProperties LocalGatewayRouteTableVirtualInterfaceGroupAssociation where
  toResourceProperties
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalGatewayRouteTableId" JSON..= localGatewayRouteTableId,
                            "LocalGatewayVirtualInterfaceGroupId"
                              JSON..= localGatewayVirtualInterfaceGroupId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocalGatewayRouteTableVirtualInterfaceGroupAssociation where
  toJSON LocalGatewayRouteTableVirtualInterfaceGroupAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalGatewayRouteTableId" JSON..= localGatewayRouteTableId,
               "LocalGatewayVirtualInterfaceGroupId"
                 JSON..= localGatewayVirtualInterfaceGroupId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LocalGatewayRouteTableId" LocalGatewayRouteTableVirtualInterfaceGroupAssociation where
  type PropertyType "LocalGatewayRouteTableId" LocalGatewayRouteTableVirtualInterfaceGroupAssociation = Value Prelude.Text
  set
    newValue
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation {..}
    = LocalGatewayRouteTableVirtualInterfaceGroupAssociation
        {localGatewayRouteTableId = newValue, ..}
instance Property "LocalGatewayVirtualInterfaceGroupId" LocalGatewayRouteTableVirtualInterfaceGroupAssociation where
  type PropertyType "LocalGatewayVirtualInterfaceGroupId" LocalGatewayRouteTableVirtualInterfaceGroupAssociation = Value Prelude.Text
  set
    newValue
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation {..}
    = LocalGatewayRouteTableVirtualInterfaceGroupAssociation
        {localGatewayVirtualInterfaceGroupId = newValue, ..}
instance Property "Tags" LocalGatewayRouteTableVirtualInterfaceGroupAssociation where
  type PropertyType "Tags" LocalGatewayRouteTableVirtualInterfaceGroupAssociation = [Tag]
  set
    newValue
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation {..}
    = LocalGatewayRouteTableVirtualInterfaceGroupAssociation
        {tags = Prelude.pure newValue, ..}