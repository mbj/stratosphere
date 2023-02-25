module Stratosphere.NetworkManager.TransitGatewayPeering (
        TransitGatewayPeering(..), mkTransitGatewayPeering
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayPeering
  = TransitGatewayPeering {coreNetworkId :: (Value Prelude.Text),
                           tags :: (Prelude.Maybe [Tag]),
                           transitGatewayArn :: (Value Prelude.Text)}
mkTransitGatewayPeering ::
  Value Prelude.Text -> Value Prelude.Text -> TransitGatewayPeering
mkTransitGatewayPeering coreNetworkId transitGatewayArn
  = TransitGatewayPeering
      {coreNetworkId = coreNetworkId,
       transitGatewayArn = transitGatewayArn, tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayPeering where
  toResourceProperties TransitGatewayPeering {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::TransitGatewayPeering",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CoreNetworkId" JSON..= coreNetworkId,
                            "TransitGatewayArn" JSON..= transitGatewayArn]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayPeering where
  toJSON TransitGatewayPeering {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CoreNetworkId" JSON..= coreNetworkId,
               "TransitGatewayArn" JSON..= transitGatewayArn]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" TransitGatewayPeering where
  type PropertyType "CoreNetworkId" TransitGatewayPeering = Value Prelude.Text
  set newValue TransitGatewayPeering {..}
    = TransitGatewayPeering {coreNetworkId = newValue, ..}
instance Property "Tags" TransitGatewayPeering where
  type PropertyType "Tags" TransitGatewayPeering = [Tag]
  set newValue TransitGatewayPeering {..}
    = TransitGatewayPeering {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayArn" TransitGatewayPeering where
  type PropertyType "TransitGatewayArn" TransitGatewayPeering = Value Prelude.Text
  set newValue TransitGatewayPeering {..}
    = TransitGatewayPeering {transitGatewayArn = newValue, ..}