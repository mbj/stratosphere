module Stratosphere.IoTFleetWise.DecoderManifest.SignalDecodersItemsProperty (
        module Exports, SignalDecodersItemsProperty(..),
        mkSignalDecodersItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.CanSignalProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.ObdSignalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignalDecodersItemsProperty
  = SignalDecodersItemsProperty {canSignal :: (Prelude.Maybe CanSignalProperty),
                                 fullyQualifiedName :: (Value Prelude.Text),
                                 interfaceId :: (Value Prelude.Text),
                                 obdSignal :: (Prelude.Maybe ObdSignalProperty),
                                 type' :: (Value Prelude.Text)}
mkSignalDecodersItemsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SignalDecodersItemsProperty
mkSignalDecodersItemsProperty fullyQualifiedName interfaceId type'
  = SignalDecodersItemsProperty
      {fullyQualifiedName = fullyQualifiedName,
       interfaceId = interfaceId, type' = type',
       canSignal = Prelude.Nothing, obdSignal = Prelude.Nothing}
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
                  (JSON..=) "ObdSignal" Prelude.<$> obdSignal])))
instance Property "CanSignal" SignalDecodersItemsProperty where
  type PropertyType "CanSignal" SignalDecodersItemsProperty = CanSignalProperty
  set newValue SignalDecodersItemsProperty {..}
    = SignalDecodersItemsProperty
        {canSignal = Prelude.pure newValue, ..}
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