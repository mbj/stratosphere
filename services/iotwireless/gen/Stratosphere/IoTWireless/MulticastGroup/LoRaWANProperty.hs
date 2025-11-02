module Stratosphere.IoTWireless.MulticastGroup.LoRaWANProperty (
        LoRaWANProperty(..), mkLoRaWANProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-multicastgroup-lorawan.html>
    LoRaWANProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-multicastgroup-lorawan.html#cfn-iotwireless-multicastgroup-lorawan-dlclass>
                     dlClass :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-multicastgroup-lorawan.html#cfn-iotwireless-multicastgroup-lorawan-numberofdevicesingroup>
                     numberOfDevicesInGroup :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-multicastgroup-lorawan.html#cfn-iotwireless-multicastgroup-lorawan-numberofdevicesrequested>
                     numberOfDevicesRequested :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-multicastgroup-lorawan.html#cfn-iotwireless-multicastgroup-lorawan-rfregion>
                     rfRegion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LoRaWANProperty
mkLoRaWANProperty dlClass rfRegion
  = LoRaWANProperty
      {haddock_workaround_ = (), dlClass = dlClass, rfRegion = rfRegion,
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