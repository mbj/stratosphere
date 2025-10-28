module Stratosphere.IoTFleetWise.DecoderManifest.CanSignalProperty (
        CanSignalProperty(..), mkCanSignalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CanSignalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html>
    CanSignalProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-factor>
                       factor :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-isbigendian>
                       isBigEndian :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-issigned>
                       isSigned :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-length>
                       length :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-messageid>
                       messageId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-name>
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-offset>
                       offset :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-cansignal.html#cfn-iotfleetwise-decodermanifest-cansignal-startbit>
                       startBit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), factor = factor,
       isBigEndian = isBigEndian, isSigned = isSigned, length = length,
       messageId = messageId, offset = offset, startBit = startBit,
       name = Prelude.Nothing}
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