module Stratosphere.IoTWireless.DeviceProfile.LoRaWANDeviceProfileProperty (
        LoRaWANDeviceProfileProperty(..), mkLoRaWANDeviceProfileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANDeviceProfileProperty
  = LoRaWANDeviceProfileProperty {classBTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                  classCTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                  factoryPresetFreqsList :: (Prelude.Maybe (ValueList Prelude.Integer)),
                                  macVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                  maxDutyCycle :: (Prelude.Maybe (Value Prelude.Integer)),
                                  maxEirp :: (Prelude.Maybe (Value Prelude.Integer)),
                                  pingSlotDr :: (Prelude.Maybe (Value Prelude.Integer)),
                                  pingSlotFreq :: (Prelude.Maybe (Value Prelude.Integer)),
                                  pingSlotPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                                  regParamsRevision :: (Prelude.Maybe (Value Prelude.Text)),
                                  rfRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                  rxDataRate2 :: (Prelude.Maybe (Value Prelude.Integer)),
                                  rxDelay1 :: (Prelude.Maybe (Value Prelude.Integer)),
                                  rxDrOffset1 :: (Prelude.Maybe (Value Prelude.Integer)),
                                  rxFreq2 :: (Prelude.Maybe (Value Prelude.Integer)),
                                  supports32BitFCnt :: (Prelude.Maybe (Value Prelude.Bool)),
                                  supportsClassB :: (Prelude.Maybe (Value Prelude.Bool)),
                                  supportsClassC :: (Prelude.Maybe (Value Prelude.Bool)),
                                  supportsJoin :: (Prelude.Maybe (Value Prelude.Bool))}
mkLoRaWANDeviceProfileProperty :: LoRaWANDeviceProfileProperty
mkLoRaWANDeviceProfileProperty
  = LoRaWANDeviceProfileProperty
      {classBTimeout = Prelude.Nothing, classCTimeout = Prelude.Nothing,
       factoryPresetFreqsList = Prelude.Nothing,
       macVersion = Prelude.Nothing, maxDutyCycle = Prelude.Nothing,
       maxEirp = Prelude.Nothing, pingSlotDr = Prelude.Nothing,
       pingSlotFreq = Prelude.Nothing, pingSlotPeriod = Prelude.Nothing,
       regParamsRevision = Prelude.Nothing, rfRegion = Prelude.Nothing,
       rxDataRate2 = Prelude.Nothing, rxDelay1 = Prelude.Nothing,
       rxDrOffset1 = Prelude.Nothing, rxFreq2 = Prelude.Nothing,
       supports32BitFCnt = Prelude.Nothing,
       supportsClassB = Prelude.Nothing, supportsClassC = Prelude.Nothing,
       supportsJoin = Prelude.Nothing}
instance ToResourceProperties LoRaWANDeviceProfileProperty where
  toResourceProperties LoRaWANDeviceProfileProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::DeviceProfile.LoRaWANDeviceProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClassBTimeout" Prelude.<$> classBTimeout,
                            (JSON..=) "ClassCTimeout" Prelude.<$> classCTimeout,
                            (JSON..=) "FactoryPresetFreqsList"
                              Prelude.<$> factoryPresetFreqsList,
                            (JSON..=) "MacVersion" Prelude.<$> macVersion,
                            (JSON..=) "MaxDutyCycle" Prelude.<$> maxDutyCycle,
                            (JSON..=) "MaxEirp" Prelude.<$> maxEirp,
                            (JSON..=) "PingSlotDr" Prelude.<$> pingSlotDr,
                            (JSON..=) "PingSlotFreq" Prelude.<$> pingSlotFreq,
                            (JSON..=) "PingSlotPeriod" Prelude.<$> pingSlotPeriod,
                            (JSON..=) "RegParamsRevision" Prelude.<$> regParamsRevision,
                            (JSON..=) "RfRegion" Prelude.<$> rfRegion,
                            (JSON..=) "RxDataRate2" Prelude.<$> rxDataRate2,
                            (JSON..=) "RxDelay1" Prelude.<$> rxDelay1,
                            (JSON..=) "RxDrOffset1" Prelude.<$> rxDrOffset1,
                            (JSON..=) "RxFreq2" Prelude.<$> rxFreq2,
                            (JSON..=) "Supports32BitFCnt" Prelude.<$> supports32BitFCnt,
                            (JSON..=) "SupportsClassB" Prelude.<$> supportsClassB,
                            (JSON..=) "SupportsClassC" Prelude.<$> supportsClassC,
                            (JSON..=) "SupportsJoin" Prelude.<$> supportsJoin])}
instance JSON.ToJSON LoRaWANDeviceProfileProperty where
  toJSON LoRaWANDeviceProfileProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClassBTimeout" Prelude.<$> classBTimeout,
               (JSON..=) "ClassCTimeout" Prelude.<$> classCTimeout,
               (JSON..=) "FactoryPresetFreqsList"
                 Prelude.<$> factoryPresetFreqsList,
               (JSON..=) "MacVersion" Prelude.<$> macVersion,
               (JSON..=) "MaxDutyCycle" Prelude.<$> maxDutyCycle,
               (JSON..=) "MaxEirp" Prelude.<$> maxEirp,
               (JSON..=) "PingSlotDr" Prelude.<$> pingSlotDr,
               (JSON..=) "PingSlotFreq" Prelude.<$> pingSlotFreq,
               (JSON..=) "PingSlotPeriod" Prelude.<$> pingSlotPeriod,
               (JSON..=) "RegParamsRevision" Prelude.<$> regParamsRevision,
               (JSON..=) "RfRegion" Prelude.<$> rfRegion,
               (JSON..=) "RxDataRate2" Prelude.<$> rxDataRate2,
               (JSON..=) "RxDelay1" Prelude.<$> rxDelay1,
               (JSON..=) "RxDrOffset1" Prelude.<$> rxDrOffset1,
               (JSON..=) "RxFreq2" Prelude.<$> rxFreq2,
               (JSON..=) "Supports32BitFCnt" Prelude.<$> supports32BitFCnt,
               (JSON..=) "SupportsClassB" Prelude.<$> supportsClassB,
               (JSON..=) "SupportsClassC" Prelude.<$> supportsClassC,
               (JSON..=) "SupportsJoin" Prelude.<$> supportsJoin]))
instance Property "ClassBTimeout" LoRaWANDeviceProfileProperty where
  type PropertyType "ClassBTimeout" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {classBTimeout = Prelude.pure newValue, ..}
instance Property "ClassCTimeout" LoRaWANDeviceProfileProperty where
  type PropertyType "ClassCTimeout" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {classCTimeout = Prelude.pure newValue, ..}
instance Property "FactoryPresetFreqsList" LoRaWANDeviceProfileProperty where
  type PropertyType "FactoryPresetFreqsList" LoRaWANDeviceProfileProperty = ValueList Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {factoryPresetFreqsList = Prelude.pure newValue, ..}
instance Property "MacVersion" LoRaWANDeviceProfileProperty where
  type PropertyType "MacVersion" LoRaWANDeviceProfileProperty = Value Prelude.Text
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {macVersion = Prelude.pure newValue, ..}
instance Property "MaxDutyCycle" LoRaWANDeviceProfileProperty where
  type PropertyType "MaxDutyCycle" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {maxDutyCycle = Prelude.pure newValue, ..}
instance Property "MaxEirp" LoRaWANDeviceProfileProperty where
  type PropertyType "MaxEirp" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {maxEirp = Prelude.pure newValue, ..}
instance Property "PingSlotDr" LoRaWANDeviceProfileProperty where
  type PropertyType "PingSlotDr" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {pingSlotDr = Prelude.pure newValue, ..}
instance Property "PingSlotFreq" LoRaWANDeviceProfileProperty where
  type PropertyType "PingSlotFreq" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {pingSlotFreq = Prelude.pure newValue, ..}
instance Property "PingSlotPeriod" LoRaWANDeviceProfileProperty where
  type PropertyType "PingSlotPeriod" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {pingSlotPeriod = Prelude.pure newValue, ..}
instance Property "RegParamsRevision" LoRaWANDeviceProfileProperty where
  type PropertyType "RegParamsRevision" LoRaWANDeviceProfileProperty = Value Prelude.Text
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {regParamsRevision = Prelude.pure newValue, ..}
instance Property "RfRegion" LoRaWANDeviceProfileProperty where
  type PropertyType "RfRegion" LoRaWANDeviceProfileProperty = Value Prelude.Text
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {rfRegion = Prelude.pure newValue, ..}
instance Property "RxDataRate2" LoRaWANDeviceProfileProperty where
  type PropertyType "RxDataRate2" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {rxDataRate2 = Prelude.pure newValue, ..}
instance Property "RxDelay1" LoRaWANDeviceProfileProperty where
  type PropertyType "RxDelay1" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {rxDelay1 = Prelude.pure newValue, ..}
instance Property "RxDrOffset1" LoRaWANDeviceProfileProperty where
  type PropertyType "RxDrOffset1" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {rxDrOffset1 = Prelude.pure newValue, ..}
instance Property "RxFreq2" LoRaWANDeviceProfileProperty where
  type PropertyType "RxFreq2" LoRaWANDeviceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {rxFreq2 = Prelude.pure newValue, ..}
instance Property "Supports32BitFCnt" LoRaWANDeviceProfileProperty where
  type PropertyType "Supports32BitFCnt" LoRaWANDeviceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {supports32BitFCnt = Prelude.pure newValue, ..}
instance Property "SupportsClassB" LoRaWANDeviceProfileProperty where
  type PropertyType "SupportsClassB" LoRaWANDeviceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {supportsClassB = Prelude.pure newValue, ..}
instance Property "SupportsClassC" LoRaWANDeviceProfileProperty where
  type PropertyType "SupportsClassC" LoRaWANDeviceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {supportsClassC = Prelude.pure newValue, ..}
instance Property "SupportsJoin" LoRaWANDeviceProfileProperty where
  type PropertyType "SupportsJoin" LoRaWANDeviceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANDeviceProfileProperty {..}
    = LoRaWANDeviceProfileProperty
        {supportsJoin = Prelude.pure newValue, ..}