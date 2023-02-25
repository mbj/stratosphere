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
  = LocalGatewayRouteTableVPCAssociation {localGatewayRouteTableId :: (Value Prelude.Text),
                                          tags :: (Prelude.Maybe [Tag]),
                                          vpcId :: (Value Prelude.Text)}
mkLocalGatewayRouteTableVPCAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> LocalGatewayRouteTableVPCAssociation
mkLocalGatewayRouteTableVPCAssociation
  localGatewayRouteTableId
  vpcId
  = LocalGatewayRouteTableVPCAssociation
      {localGatewayRouteTableId = localGatewayRouteTableId,
       vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties LocalGatewayRouteTableVPCAssociation where
  toResourceProperties LocalGatewayRouteTableVPCAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayRouteTableVPCAssociation",
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