module Stratosphere.IoTWireless.TaskDefinition.LoRaWANGatewayVersionProperty (
        LoRaWANGatewayVersionProperty(..), mkLoRaWANGatewayVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANGatewayVersionProperty
  = LoRaWANGatewayVersionProperty {model :: (Prelude.Maybe (Value Prelude.Text)),
                                   packageVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                   station :: (Prelude.Maybe (Value Prelude.Text))}
mkLoRaWANGatewayVersionProperty :: LoRaWANGatewayVersionProperty
mkLoRaWANGatewayVersionProperty
  = LoRaWANGatewayVersionProperty
      {model = Prelude.Nothing, packageVersion = Prelude.Nothing,
       station = Prelude.Nothing}
instance ToResourceProperties LoRaWANGatewayVersionProperty where
  toResourceProperties LoRaWANGatewayVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::TaskDefinition.LoRaWANGatewayVersion",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Model" Prelude.<$> model,
                            (JSON..=) "PackageVersion" Prelude.<$> packageVersion,
                            (JSON..=) "Station" Prelude.<$> station])}
instance JSON.ToJSON LoRaWANGatewayVersionProperty where
  toJSON LoRaWANGatewayVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Model" Prelude.<$> model,
               (JSON..=) "PackageVersion" Prelude.<$> packageVersion,
               (JSON..=) "Station" Prelude.<$> station]))
instance Property "Model" LoRaWANGatewayVersionProperty where
  type PropertyType "Model" LoRaWANGatewayVersionProperty = Value Prelude.Text
  set newValue LoRaWANGatewayVersionProperty {..}
    = LoRaWANGatewayVersionProperty {model = Prelude.pure newValue, ..}
instance Property "PackageVersion" LoRaWANGatewayVersionProperty where
  type PropertyType "PackageVersion" LoRaWANGatewayVersionProperty = Value Prelude.Text
  set newValue LoRaWANGatewayVersionProperty {..}
    = LoRaWANGatewayVersionProperty
        {packageVersion = Prelude.pure newValue, ..}
instance Property "Station" LoRaWANGatewayVersionProperty where
  type PropertyType "Station" LoRaWANGatewayVersionProperty = Value Prelude.Text
  set newValue LoRaWANGatewayVersionProperty {..}
    = LoRaWANGatewayVersionProperty
        {station = Prelude.pure newValue, ..}