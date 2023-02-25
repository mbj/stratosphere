module Stratosphere.EC2.LocalGatewayRouteTable (
        LocalGatewayRouteTable(..), mkLocalGatewayRouteTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocalGatewayRouteTable
  = LocalGatewayRouteTable {localGatewayId :: (Value Prelude.Text),
                            mode :: (Prelude.Maybe (Value Prelude.Text)),
                            tags :: (Prelude.Maybe [Tag])}
mkLocalGatewayRouteTable ::
  Value Prelude.Text -> LocalGatewayRouteTable
mkLocalGatewayRouteTable localGatewayId
  = LocalGatewayRouteTable
      {localGatewayId = localGatewayId, mode = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocalGatewayRouteTable where
  toResourceProperties LocalGatewayRouteTable {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayRouteTable",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalGatewayId" JSON..= localGatewayId]
                           (Prelude.catMaybes
                              [(JSON..=) "Mode" Prelude.<$> mode,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocalGatewayRouteTable where
  toJSON LocalGatewayRouteTable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalGatewayId" JSON..= localGatewayId]
              (Prelude.catMaybes
                 [(JSON..=) "Mode" Prelude.<$> mode,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LocalGatewayId" LocalGatewayRouteTable where
  type PropertyType "LocalGatewayId" LocalGatewayRouteTable = Value Prelude.Text
  set newValue LocalGatewayRouteTable {..}
    = LocalGatewayRouteTable {localGatewayId = newValue, ..}
instance Property "Mode" LocalGatewayRouteTable where
  type PropertyType "Mode" LocalGatewayRouteTable = Value Prelude.Text
  set newValue LocalGatewayRouteTable {..}
    = LocalGatewayRouteTable {mode = Prelude.pure newValue, ..}
instance Property "Tags" LocalGatewayRouteTable where
  type PropertyType "Tags" LocalGatewayRouteTable = [Tag]
  set newValue LocalGatewayRouteTable {..}
    = LocalGatewayRouteTable {tags = Prelude.pure newValue, ..}