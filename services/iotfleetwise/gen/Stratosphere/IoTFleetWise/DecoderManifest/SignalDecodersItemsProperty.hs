module Stratosphere.IoTFleetWise.DecoderManifest.SignalDecodersItemsProperty (
        module Exports, SignalDecodersItemsProperty(..),
        mkSignalDecodersItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.CanSignalProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.CustomDecodingSignalProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.ObdSignalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignalDecodersItemsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html>
    SignalDecodersItemsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html#cfn-iotfleetwise-decodermanifest-signaldecodersitems-cansignal>
                                 canSignal :: (Prelude.Maybe CanSignalProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html#cfn-iotfleetwise-decodermanifest-signaldecodersitems-customdecodingsignal>
                                 customDecodingSignal :: (Prelude.Maybe CustomDecodingSignalProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html#cfn-iotfleetwise-decodermanifest-signaldecodersitems-fullyqualifiedname>
                                 fullyQualifiedName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html#cfn-iotfleetwise-decodermanifest-signaldecodersitems-interfaceid>
                                 interfaceId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html#cfn-iotfleetwise-decodermanifest-signaldecodersitems-obdsignal>
                                 obdSignal :: (Prelude.Maybe ObdSignalProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-signaldecodersitems.html#cfn-iotfleetwise-decodermanifest-signaldecodersitems-type>
                                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignalDecodersItemsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SignalDecodersItemsProperty
mkSignalDecodersItemsProperty fullyQualifiedName interfaceId type'
  = SignalDecodersItemsProperty
      {haddock_workaround_ = (), fullyQualifiedName = fullyQualifiedName,
       interfaceId = interfaceId, type' = type',
       canSignal = Prelude.Nothing,
       customDecodingSignal = Prelude.Nothing,
       obdSignal = Prelude.Nothing}
instance ToResourceProperties SignalDecodersItemsProperty where
  toResourceProperties SignalDecodersItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.SignalDecodersItems",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FullyQualifiedName" JSON..= fullyQualifiedName,
                            "InterfaceId" JSON..= interfaceId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CanSignal" Prelude.<$> canSignal,
                               (JSON..=) "CustomDecodingSignal" Prelude.<$> customDecodingSignal,
                               (JSON..=) "ObdSignal" Prelude.<$> obdSignal]))}
instance JSON.ToJSON SignalDecodersItemsProperty where
  toJSON SignalDecodersItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FullyQualifiedName" JSON..= fullyQualifiedName,
               "InterfaceId" JSON..= interfaceId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CanSignal" Prelude.<$> canSignal,
                  (JSON..=) "CustomDecodingSignal" Prelude.<$> customDecodingSignal,
                  (JSON..=) "ObdSignal" Prelude.<$> obdSignal])))
instance Property "CanSignal" SignalDecodersItemsProperty where
  type PropertyType "CanSignal" SignalDecodersItemsProperty = CanSignalProperty
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty
        {canSignal = Prelude.pure newValue, ..}
instance Property "CustomDecodingSignal" SignalDecodersItemsProperty where
  type PropertyType "CustomDecodingSignal" SignalDecodersItemsProperty = CustomDecodingSignalProperty
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty
        {customDecodingSignal = Prelude.pure newValue, ..}
instance Property "FullyQualifiedName" SignalDecodersItemsProperty where
  type PropertyType "FullyQualifiedName" SignalDecodersItemsProperty = Value Prelude.Text
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty {fullyQualifiedName = newValue, ..}
instance Property "InterfaceId" SignalDecodersItemsProperty where
  type PropertyType "InterfaceId" SignalDecodersItemsProperty = Value Prelude.Text
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty {interfaceId = newValue, ..}
instance Property "ObdSignal" SignalDecodersItemsProperty where
  type PropertyType "ObdSignal" SignalDecodersItemsProperty = ObdSignalProperty
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty
        {obdSignal = Prelude.pure newValue, ..}
instance Property "Type" SignalDecodersItemsProperty where
  type PropertyType "Type" SignalDecodersItemsProperty = Value Prelude.Text
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty {type' = newValue, ..}