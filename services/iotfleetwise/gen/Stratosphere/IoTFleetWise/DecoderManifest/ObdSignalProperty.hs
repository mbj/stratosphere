module Stratosphere.IoTFleetWise.DecoderManifest.ObdSignalProperty (
        ObdSignalProperty(..), mkObdSignalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObdSignalProperty
  = ObdSignalProperty {bitMaskLength :: (Prelude.Maybe (Value Prelude.Text)),
                       bitRightShift :: (Prelude.Maybe (Value Prelude.Text)),
                       byteLength :: (Value Prelude.Text),
                       offset :: (Value Prelude.Text),
                       pid :: (Value Prelude.Text),
                       pidResponseLength :: (Value Prelude.Text),
                       scaling :: (Value Prelude.Text),
                       serviceMode :: (Value Prelude.Text),
                       startByte :: (Value Prelude.Text)}
mkObdSignalProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> Value Prelude.Text -> ObdSignalProperty
mkObdSignalProperty
  byteLength
  offset
  pid
  pidResponseLength
  scaling
  serviceMode
  startByte
  = ObdSignalProperty
      {byteLength = byteLength, offset = offset, pid = pid,
       pidResponseLength = pidResponseLength, scaling = scaling,
       serviceMode = serviceMode, startByte = startByte,
       bitMaskLength = Prelude.Nothing, bitRightShift = Prelude.Nothing}
instance ToResourceProperties ObdSignalProperty where
  toResourceProperties ObdSignalProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.ObdSignal",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ByteLength" JSON..= byteLength, "Offset" JSON..= offset,
                            "Pid" JSON..= pid, "PidResponseLength" JSON..= pidResponseLength,
                            "Scaling" JSON..= scaling, "ServiceMode" JSON..= serviceMode,
                            "StartByte" JSON..= startByte]
                           (Prelude.catMaybes
                              [(JSON..=) "BitMaskLength" Prelude.<$> bitMaskLength,
                               (JSON..=) "BitRightShift" Prelude.<$> bitRightShift]))}
instance JSON.ToJSON ObdSignalProperty where
  toJSON ObdSignalProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ByteLength" JSON..= byteLength, "Offset" JSON..= offset,
               "Pid" JSON..= pid, "PidResponseLength" JSON..= pidResponseLength,
               "Scaling" JSON..= scaling, "ServiceMode" JSON..= serviceMode,
               "StartByte" JSON..= startByte]
              (Prelude.catMaybes
                 [(JSON..=) "BitMaskLength" Prelude.<$> bitMaskLength,
                  (JSON..=) "BitRightShift" Prelude.<$> bitRightShift])))
instance Property "BitMaskLength" ObdSignalProperty where
  type PropertyType "BitMaskLength" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {bitMaskLength = Prelude.pure newValue, ..}
instance Property "BitRightShift" ObdSignalProperty where
  type PropertyType "BitRightShift" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {bitRightShift = Prelude.pure newValue, ..}
instance Property "ByteLength" ObdSignalProperty where
  type PropertyType "ByteLength" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {byteLength = newValue, ..}
instance Property "Offset" ObdSignalProperty where
  type PropertyType "Offset" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {offset = newValue, ..}
instance Property "Pid" ObdSignalProperty where
  type PropertyType "Pid" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {pid = newValue, ..}
instance Property "PidResponseLength" ObdSignalProperty where
  type PropertyType "PidResponseLength" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {pidResponseLength = newValue, ..}
instance Property "Scaling" ObdSignalProperty where
  type PropertyType "Scaling" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {scaling = newValue, ..}
instance Property "ServiceMode" ObdSignalProperty where
  type PropertyType "ServiceMode" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {serviceMode = newValue, ..}
instance Property "StartByte" ObdSignalProperty where
  type PropertyType "StartByte" ObdSignalProperty = Value Prelude.Text
  set newValue ObdSignalProperty {..}
    = ObdSignalProperty {startByte = newValue, ..}