module Stratosphere.IoTFleetWise.DecoderManifest.CanSignalProperty (
        CanSignalProperty(..), mkCanSignalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CanSignalProperty
  = CanSignalProperty {factor :: (Value Prelude.Text),
                       isBigEndian :: (Value Prelude.Text),
                       isSigned :: (Value Prelude.Text),
                       length :: (Value Prelude.Text),
                       messageId :: (Value Prelude.Text),
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       offset :: (Value Prelude.Text),
                       startBit :: (Value Prelude.Text)}
mkCanSignalProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> Value Prelude.Text -> CanSignalProperty
mkCanSignalProperty
  factor
  isBigEndian
  isSigned
  length
  messageId
  offset
  startBit
  = CanSignalProperty
      {factor = factor, isBigEndian = isBigEndian, isSigned = isSigned,
       length = length, messageId = messageId, offset = offset,
       startBit = startBit, name = Prelude.Nothing}
instance ToResourceProperties CanSignalProperty where
  toResourceProperties CanSignalProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.CanSignal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Factor" JSON..= factor, "IsBigEndian" JSON..= isBigEndian,
                            "IsSigned" JSON..= isSigned, "Length" JSON..= length,
                            "MessageId" JSON..= messageId, "Offset" JSON..= offset,
                            "StartBit" JSON..= startBit]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON CanSignalProperty where
  toJSON CanSignalProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Factor" JSON..= factor, "IsBigEndian" JSON..= isBigEndian,
               "IsSigned" JSON..= isSigned, "Length" JSON..= length,
               "MessageId" JSON..= messageId, "Offset" JSON..= offset,
               "StartBit" JSON..= startBit]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Factor" CanSignalProperty where
  type PropertyType "Factor" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {factor = newValue, ..}
instance Property "IsBigEndian" CanSignalProperty where
  type PropertyType "IsBigEndian" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {isBigEndian = newValue, ..}
instance Property "IsSigned" CanSignalProperty where
  type PropertyType "IsSigned" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {isSigned = newValue, ..}
instance Property "Length" CanSignalProperty where
  type PropertyType "Length" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {length = newValue, ..}
instance Property "MessageId" CanSignalProperty where
  type PropertyType "MessageId" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {messageId = newValue, ..}
instance Property "Name" CanSignalProperty where
  type PropertyType "Name" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {name = Prelude.pure newValue, ..}
instance Property "Offset" CanSignalProperty where
  type PropertyType "Offset" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {offset = newValue, ..}
instance Property "StartBit" CanSignalProperty where
  type PropertyType "StartBit" CanSignalProperty = Value Prelude.Text
  set newValue CanSignalProperty {..}
    = CanSignalProperty {startBit = newValue, ..}