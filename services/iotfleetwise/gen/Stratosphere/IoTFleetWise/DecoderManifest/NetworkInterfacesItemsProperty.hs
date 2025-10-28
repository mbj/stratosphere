module Stratosphere.IoTFleetWise.DecoderManifest.NetworkInterfacesItemsProperty (
        module Exports, NetworkInterfacesItemsProperty(..),
        mkNetworkInterfacesItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.CanInterfaceProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.CustomDecodingInterfaceProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.ObdInterfaceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfacesItemsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-networkinterfacesitems.html>
    NetworkInterfacesItemsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-networkinterfacesitems.html#cfn-iotfleetwise-decodermanifest-networkinterfacesitems-caninterface>
                                    canInterface :: (Prelude.Maybe CanInterfaceProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-networkinterfacesitems.html#cfn-iotfleetwise-decodermanifest-networkinterfacesitems-customdecodinginterface>
                                    customDecodingInterface :: (Prelude.Maybe CustomDecodingInterfaceProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-networkinterfacesitems.html#cfn-iotfleetwise-decodermanifest-networkinterfacesitems-interfaceid>
                                    interfaceId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-networkinterfacesitems.html#cfn-iotfleetwise-decodermanifest-networkinterfacesitems-obdinterface>
                                    obdInterface :: (Prelude.Maybe ObdInterfaceProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-networkinterfacesitems.html#cfn-iotfleetwise-decodermanifest-networkinterfacesitems-type>
                                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfacesItemsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> NetworkInterfacesItemsProperty
mkNetworkInterfacesItemsProperty interfaceId type'
  = NetworkInterfacesItemsProperty
      {haddock_workaround_ = (), interfaceId = interfaceId,
       type' = type', canInterface = Prelude.Nothing,
       customDecodingInterface = Prelude.Nothing,
       obdInterface = Prelude.Nothing}
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
                               (JSON..=) "CustomDecodingInterface"
                                 Prelude.<$> customDecodingInterface,
                               (JSON..=) "ObdInterface" Prelude.<$> obdInterface]))}
instance JSON.ToJSON NetworkInterfacesItemsProperty where
  toJSON NetworkInterfacesItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InterfaceId" JSON..= interfaceId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CanInterface" Prelude.<$> canInterface,
                  (JSON..=) "CustomDecodingInterface"
                    Prelude.<$> customDecodingInterface,
                  (JSON..=) "ObdInterface" Prelude.<$> obdInterface])))
instance Property "CanInterface" NetworkInterfacesItemsProperty where
  type PropertyType "CanInterface" NetworkInterfacesItemsProperty = CanInterfaceProperty
  set newValue NetworkInterfacesItemsProperty {..}
    = NetworkInterfacesItemsProperty
        {canInterface = Prelude.pure newValue, ..}
instance Property "CustomDecodingInterface" NetworkInterfacesItemsProperty where
  type PropertyType "CustomDecodingInterface" NetworkInterfacesItemsProperty = CustomDecodingInterfaceProperty
  set newValue NetworkInterfacesItemsProperty {..}
    = NetworkInterfacesItemsProperty
        {customDecodingInterface = Prelude.pure newValue, ..}
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