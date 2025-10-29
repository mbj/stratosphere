module Stratosphere.IoTWireless.WirelessGateway.LoRaWANGatewayProperty (
        LoRaWANGatewayProperty(..), mkLoRaWANGatewayProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANGatewayProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessgateway-lorawangateway.html>
    LoRaWANGatewayProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessgateway-lorawangateway.html#cfn-iotwireless-wirelessgateway-lorawangateway-gatewayeui>
                            gatewayEui :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessgateway-lorawangateway.html#cfn-iotwireless-wirelessgateway-lorawangateway-rfregion>
                            rfRegion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANGatewayProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LoRaWANGatewayProperty
mkLoRaWANGatewayProperty gatewayEui rfRegion
  = LoRaWANGatewayProperty
      {gatewayEui = gatewayEui, rfRegion = rfRegion}
instance ToResourceProperties LoRaWANGatewayProperty where
  toResourceProperties LoRaWANGatewayProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessGateway.LoRaWANGateway",
         supportsTags = Prelude.False,
         properties = ["GatewayEui" JSON..= gatewayEui,
                       "RfRegion" JSON..= rfRegion]}
instance JSON.ToJSON LoRaWANGatewayProperty where
  toJSON LoRaWANGatewayProperty {..}
    = JSON.object
        ["GatewayEui" JSON..= gatewayEui, "RfRegion" JSON..= rfRegion]
instance Property "GatewayEui" LoRaWANGatewayProperty where
  type PropertyType "GatewayEui" LoRaWANGatewayProperty = Value Prelude.Text
  set newValue LoRaWANGatewayProperty {..}
    = LoRaWANGatewayProperty {gatewayEui = newValue, ..}
instance Property "RfRegion" LoRaWANGatewayProperty where
  type PropertyType "RfRegion" LoRaWANGatewayProperty = Value Prelude.Text
  set newValue LoRaWANGatewayProperty {..}
    = LoRaWANGatewayProperty {rfRegion = newValue, ..}