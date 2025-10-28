module Stratosphere.NetworkManager.CustomerGatewayAssociation (
        CustomerGatewayAssociation(..), mkCustomerGatewayAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerGatewayAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html>
    CustomerGatewayAssociation {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-customergatewayarn>
                                customerGatewayArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-deviceid>
                                deviceId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-globalnetworkid>
                                globalNetworkId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-linkid>
                                linkId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerGatewayAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CustomerGatewayAssociation
mkCustomerGatewayAssociation
  customerGatewayArn
  deviceId
  globalNetworkId
  = CustomerGatewayAssociation
      {haddock_workaround_ = (), customerGatewayArn = customerGatewayArn,
       deviceId = deviceId, globalNetworkId = globalNetworkId,
       linkId = Prelude.Nothing}
instance ToResourceProperties CustomerGatewayAssociation where
  toResourceProperties CustomerGatewayAssociation {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CustomerGatewayAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CustomerGatewayArn" JSON..= customerGatewayArn,
                            "DeviceId" JSON..= deviceId,
                            "GlobalNetworkId" JSON..= globalNetworkId]
                           (Prelude.catMaybes [(JSON..=) "LinkId" Prelude.<$> linkId]))}
instance JSON.ToJSON CustomerGatewayAssociation where
  toJSON CustomerGatewayAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CustomerGatewayArn" JSON..= customerGatewayArn,
               "DeviceId" JSON..= deviceId,
               "GlobalNetworkId" JSON..= globalNetworkId]
              (Prelude.catMaybes [(JSON..=) "LinkId" Prelude.<$> linkId])))
instance Property "CustomerGatewayArn" CustomerGatewayAssociation where
  type PropertyType "CustomerGatewayArn" CustomerGatewayAssociation = Value Prelude.Text
  set newValue CustomerGatewayAssociation {..}
    = CustomerGatewayAssociation {customerGatewayArn = newValue, ..}
instance Property "DeviceId" CustomerGatewayAssociation where
  type PropertyType "DeviceId" CustomerGatewayAssociation = Value Prelude.Text
  set newValue CustomerGatewayAssociation {..}
    = CustomerGatewayAssociation {deviceId = newValue, ..}
instance Property "GlobalNetworkId" CustomerGatewayAssociation where
  type PropertyType "GlobalNetworkId" CustomerGatewayAssociation = Value Prelude.Text
  set newValue CustomerGatewayAssociation {..}
    = CustomerGatewayAssociation {globalNetworkId = newValue, ..}
instance Property "LinkId" CustomerGatewayAssociation where
  type PropertyType "LinkId" CustomerGatewayAssociation = Value Prelude.Text
  set newValue CustomerGatewayAssociation {..}
    = CustomerGatewayAssociation {linkId = Prelude.pure newValue, ..}