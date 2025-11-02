module Stratosphere.IoTFleetWise.DecoderManifest.ObdSignalProperty (
        ObdSignalProperty(..), mkObdSignalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObdSignalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html>
    ObdSignalProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-bitmasklength>
                       bitMaskLength :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-bitrightshift>
                       bitRightShift :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-bytelength>
                       byteLength :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-offset>
                       offset :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-pid>
                       pid :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-pidresponselength>
                       pidResponseLength :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-scaling>
                       scaling :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-servicemode>
                       serviceMode :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdsignal.html#cfn-iotfleetwise-decodermanifest-obdsignal-startbyte>
                       startByte :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), byteLength = byteLength,
       offset = offset, pid = pid, pidResponseLength = pidResponseLength,
       scaling = scaling, serviceMode = serviceMode,
       startByte = startByte, bitMaskLength = Prelude.Nothing,
       bitRightShift = Prelude.Nothing}
instance ToResourceProperties ObdSignalProperty where
  toResourceProperties ObdSignalProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.ObdSignal",
         supportsTags = Prelude.False,
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