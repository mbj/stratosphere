module Stratosphere.NetworkManager.TransitGatewayRegistration (
        TransitGatewayRegistration(..), mkTransitGatewayRegistration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayRegistration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewayregistration.html>
    TransitGatewayRegistration {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewayregistration.html#cfn-networkmanager-transitgatewayregistration-globalnetworkid>
                                globalNetworkId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewayregistration.html#cfn-networkmanager-transitgatewayregistration-transitgatewayarn>
                                transitGatewayArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayRegistration ::
  Value Prelude.Text
  -> Value Prelude.Text -> TransitGatewayRegistration
mkTransitGatewayRegistration globalNetworkId transitGatewayArn
  = TransitGatewayRegistration
      {haddock_workaround_ = (), globalNetworkId = globalNetworkId,
       transitGatewayArn = transitGatewayArn}
instance ToResourceProperties TransitGatewayRegistration where
  toResourceProperties TransitGatewayRegistration {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::TransitGatewayRegistration",
         supportsTags = Prelude.False,
         properties = ["GlobalNetworkId" JSON..= globalNetworkId,
                       "TransitGatewayArn" JSON..= transitGatewayArn]}
instance JSON.ToJSON TransitGatewayRegistration where
  toJSON TransitGatewayRegistration {..}
    = JSON.object
        ["GlobalNetworkId" JSON..= globalNetworkId,
         "TransitGatewayArn" JSON..= transitGatewayArn]
instance Property "GlobalNetworkId" TransitGatewayRegistration where
  type PropertyType "GlobalNetworkId" TransitGatewayRegistration = Value Prelude.Text
  set newValue TransitGatewayRegistration {..}
    = TransitGatewayRegistration {globalNetworkId = newValue, ..}
instance Property "TransitGatewayArn" TransitGatewayRegistration where
  type PropertyType "TransitGatewayArn" TransitGatewayRegistration = Value Prelude.Text
  set newValue TransitGatewayRegistration {..}
    = TransitGatewayRegistration {transitGatewayArn = newValue, ..}