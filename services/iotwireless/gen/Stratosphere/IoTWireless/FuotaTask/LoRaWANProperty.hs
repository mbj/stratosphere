module Stratosphere.IoTWireless.FuotaTask.LoRaWANProperty (
        LoRaWANProperty(..), mkLoRaWANProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-fuotatask-lorawan.html>
    LoRaWANProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-fuotatask-lorawan.html#cfn-iotwireless-fuotatask-lorawan-rfregion>
                     rfRegion :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-fuotatask-lorawan.html#cfn-iotwireless-fuotatask-lorawan-starttime>
                     startTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANProperty :: Value Prelude.Text -> LoRaWANProperty
mkLoRaWANProperty rfRegion
  = LoRaWANProperty
      {haddock_workaround_ = (), rfRegion = rfRegion,
       startTime = Prelude.Nothing}
instance ToResourceProperties LoRaWANProperty where
  toResourceProperties LoRaWANProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::FuotaTask.LoRaWAN",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RfRegion" JSON..= rfRegion]
                           (Prelude.catMaybes [(JSON..=) "StartTime" Prelude.<$> startTime]))}
instance JSON.ToJSON LoRaWANProperty where
  toJSON LoRaWANProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RfRegion" JSON..= rfRegion]
              (Prelude.catMaybes [(JSON..=) "StartTime" Prelude.<$> startTime])))
instance Property "RfRegion" LoRaWANProperty where
  type PropertyType "RfRegion" LoRaWANProperty = Value Prelude.Text
  set newValue LoRaWANProperty {..}
    = LoRaWANProperty {rfRegion = newValue, ..}
instance Property "StartTime" LoRaWANProperty where
  type PropertyType "StartTime" LoRaWANProperty = Value Prelude.Text
  set newValue LoRaWANProperty {..}
    = LoRaWANProperty {startTime = Prelude.pure newValue, ..}