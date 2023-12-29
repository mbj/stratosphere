module Stratosphere.IoTFleetWise.DecoderManifest.NetworkInterfacesItemsProperty (
        module Exports, NetworkInterfacesItemsProperty(..),
        mkNetworkInterfacesItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.CanInterfaceProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.ObdInterfaceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfacesItemsProperty
  = NetworkInterfacesItemsProperty {canInterface :: (Prelude.Maybe CanInterfaceProperty),
                                    interfaceId :: (Value Prelude.Text),
                                    obdInterface :: (Prelude.Maybe ObdInterfaceProperty),
                                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfacesItemsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> NetworkInterfacesItemsProperty
mkNetworkInterfacesItemsProperty interfaceId type'
  = NetworkInterfacesItemsProperty
      {interfaceId = interfaceId, type' = type',
       canInterface = Prelude.Nothing, obdInterface = Prelude.Nothing}
instance ToResourceProperties NetworkInterfacesItemsProperty where
  toResourceProperties NetworkInterfacesItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.NetworkInterfacesItems",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InterfaceId" JSON..= interfaceId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CanInterface" Prelude.<$> canInterface,
                               (JSON..=) "ObdInterface" Prelude.<$> obdInterface]))}
instance JSON.ToJSON NetworkInterfacesItemsProperty where
  toJSON NetworkInterfacesItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InterfaceId" JSON..= interfaceId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CanInterface" Prelude.<$> canInterface,
                  (JSON..=) "ObdInterface" Prelude.<$> obdInterface])))
instance Property "CanInterface" NetworkInterfacesItemsProperty where
  type PropertyType "CanInterface" NetworkInterfacesItemsProperty = CanInterfaceProperty
  set newValue NetworkInterfacesItemsProperty {..}
    = NetworkInterfacesItemsProperty
        {canInterface = Prelude.pure newValue, ..}
instance Property "InterfaceId" NetworkInterfacesItemsProperty where
  type PropertyType "InterfaceId" NetworkInterfacesItemsProperty = Value Prelude.Text
  set newValue NetworkInterfacesItemsProperty {..}
    = NetworkInterfacesItemsProperty {interfaceId = newValue, ..}
instance Property "ObdInterface" NetworkInterfacesItemsProperty where
  type PropertyType "ObdInterface" NetworkInterfacesItemsProperty = ObdInterfaceProperty
  set newValue NetworkInterfacesItemsProperty {..}
    = NetworkInterfacesItemsProperty
        {obdInterface = Prelude.pure newValue, ..}
instance Property "Type" NetworkInterfacesItemsProperty where
  type PropertyType "Type" NetworkInterfacesItemsProperty = Value Prelude.Text
  set newValue NetworkInterfacesItemsProperty {..}
    = NetworkInterfacesItemsProperty {type' = newValue, ..}