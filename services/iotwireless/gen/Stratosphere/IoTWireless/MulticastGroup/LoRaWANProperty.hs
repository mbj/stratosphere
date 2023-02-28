module Stratosphere.IoTWireless.MulticastGroup.LoRaWANProperty (
        LoRaWANProperty(..), mkLoRaWANProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANProperty
  = LoRaWANProperty {dlClass :: (Value Prelude.Text),
                     numberOfDevicesInGroup :: (Prelude.Maybe (Value Prelude.Integer)),
                     numberOfDevicesRequested :: (Prelude.Maybe (Value Prelude.Integer)),
                     rfRegion :: (Value Prelude.Text)}
mkLoRaWANProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LoRaWANProperty
mkLoRaWANProperty dlClass rfRegion
  = LoRaWANProperty
      {dlClass = dlClass, rfRegion = rfRegion,
       numberOfDevicesInGroup = Prelude.Nothing,
       numberOfDevicesRequested = Prelude.Nothing}
instance ToResourceProperties LoRaWANProperty where
  toResourceProperties LoRaWANProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::MulticastGroup.LoRaWAN",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DlClass" JSON..= dlClass, "RfRegion" JSON..= rfRegion]
                           (Prelude.catMaybes
                              [(JSON..=) "NumberOfDevicesInGroup"
                                 Prelude.<$> numberOfDevicesInGroup,
                               (JSON..=) "NumberOfDevicesRequested"
                                 Prelude.<$> numberOfDevicesRequested]))}
instance JSON.ToJSON LoRaWANProperty where
  toJSON LoRaWANProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DlClass" JSON..= dlClass, "RfRegion" JSON..= rfRegion]
              (Prelude.catMaybes
                 [(JSON..=) "NumberOfDevicesInGroup"
                    Prelude.<$> numberOfDevicesInGroup,
                  (JSON..=) "NumberOfDevicesRequested"
                    Prelude.<$> numberOfDevicesRequested])))
instance Property "DlClass" LoRaWANProperty where
  type PropertyType "DlClass" LoRaWANProperty = Value Prelude.Text
  set newValue LoRaWANProperty {..}
    = LoRaWANProperty {dlClass = newValue, ..}
instance Property "NumberOfDevicesInGroup" LoRaWANProperty where
  type PropertyType "NumberOfDevicesInGroup" LoRaWANProperty = Value Prelude.Integer
  set newValue LoRaWANProperty {..}
    = LoRaWANProperty
        {numberOfDevicesInGroup = Prelude.pure newValue, ..}
instance Property "NumberOfDevicesRequested" LoRaWANProperty where
  type PropertyType "NumberOfDevicesRequested" LoRaWANProperty = Value Prelude.Integer
  set newValue LoRaWANProperty {..}
    = LoRaWANProperty
        {numberOfDevicesRequested = Prelude.pure newValue, ..}
instance Property "RfRegion" LoRaWANProperty where
  type PropertyType "RfRegion" LoRaWANProperty = Value Prelude.Text
  set newValue LoRaWANProperty {..}
    = LoRaWANProperty {rfRegion = newValue, ..}