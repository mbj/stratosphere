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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewaypeering.html>
    TransitGatewayPeering {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewaypeering.html#cfn-networkmanager-transitgatewaypeering-corenetworkid>
                           coreNetworkId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewaypeering.html#cfn-networkmanager-transitgatewaypeering-tags>
                           tags :: (Prelude.Maybe [Tag]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewaypeering.html#cfn-networkmanager-transitgatewaypeering-transitgatewayarn>
                           transitGatewayArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayPeering ::
  Value Prelude.Text -> Value Prelude.Text -> TransitGatewayPeering
mkTransitGatewayPeering coreNetworkId transitGatewayArn
  = TransitGatewayPeering
      {haddock_workaround_ = (), coreNetworkId = coreNetworkId,
       transitGatewayArn = transitGatewayArn, tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayPeering where
  toResourceProperties TransitGatewayPeering {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::TransitGatewayPeering",
         supportsTags = Prelude.True,
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