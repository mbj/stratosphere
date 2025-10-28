module Stratosphere.IoTWireless.TaskDefinition.LoRaWANGatewayVersionProperty (
        LoRaWANGatewayVersionProperty(..), mkLoRaWANGatewayVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANGatewayVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawangatewayversion.html>
    LoRaWANGatewayVersionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawangatewayversion.html#cfn-iotwireless-taskdefinition-lorawangatewayversion-model>
                                   model :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawangatewayversion.html#cfn-iotwireless-taskdefinition-lorawangatewayversion-packageversion>
                                   packageVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawangatewayversion.html#cfn-iotwireless-taskdefinition-lorawangatewayversion-station>
                                   station :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANGatewayVersionProperty :: LoRaWANGatewayVersionProperty
mkLoRaWANGatewayVersionProperty
  = LoRaWANGatewayVersionProperty
      {haddock_workaround_ = (), model = Prelude.Nothing,
       packageVersion = Prelude.Nothing, station = Prelude.Nothing}
instance ToResourceProperties LoRaWANGatewayVersionProperty where
  toResourceProperties LoRaWANGatewayVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::TaskDefinition.LoRaWANGatewayVersion",
         supportsTags = Prelude.False,
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