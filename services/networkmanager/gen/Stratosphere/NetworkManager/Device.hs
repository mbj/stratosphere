module Stratosphere.NetworkManager.Device (
        module Exports, Device(..), mkDevice
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.Device.LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Device
  = Device {description :: (Prelude.Maybe (Value Prelude.Text)),
            globalNetworkId :: (Value Prelude.Text),
            location :: (Prelude.Maybe LocationProperty),
            model :: (Prelude.Maybe (Value Prelude.Text)),
            serialNumber :: (Prelude.Maybe (Value Prelude.Text)),
            siteId :: (Prelude.Maybe (Value Prelude.Text)),
            tags :: (Prelude.Maybe [Tag]),
            type' :: (Prelude.Maybe (Value Prelude.Text)),
            vendor :: (Prelude.Maybe (Value Prelude.Text))}
mkDevice :: Value Prelude.Text -> Device
mkDevice globalNetworkId
  = Device
      {globalNetworkId = globalNetworkId, description = Prelude.Nothing,
       location = Prelude.Nothing, model = Prelude.Nothing,
       serialNumber = Prelude.Nothing, siteId = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing,
       vendor = Prelude.Nothing}
instance ToResourceProperties Device where
  toResourceProperties Device {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::Device",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GlobalNetworkId" JSON..= globalNetworkId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Model" Prelude.<$> model,
                               (JSON..=) "SerialNumber" Prelude.<$> serialNumber,
                               (JSON..=) "SiteId" Prelude.<$> siteId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "Vendor" Prelude.<$> vendor]))}
instance JSON.ToJSON Device where
  toJSON Device {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GlobalNetworkId" JSON..= globalNetworkId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Model" Prelude.<$> model,
                  (JSON..=) "SerialNumber" Prelude.<$> serialNumber,
                  (JSON..=) "SiteId" Prelude.<$> siteId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "Vendor" Prelude.<$> vendor])))
instance Property "Description" Device where
  type PropertyType "Description" Device = Value Prelude.Text
  set newValue Device {..}
    = Device {description = Prelude.pure newValue, ..}
instance Property "GlobalNetworkId" Device where
  type PropertyType "GlobalNetworkId" Device = Value Prelude.Text
  set newValue Device {..} = Device {globalNetworkId = newValue, ..}
instance Property "Location" Device where
  type PropertyType "Location" Device = LocationProperty
  set newValue Device {..}
    = Device {location = Prelude.pure newValue, ..}
instance Property "Model" Device where
  type PropertyType "Model" Device = Value Prelude.Text
  set newValue Device {..}
    = Device {model = Prelude.pure newValue, ..}
instance Property "SerialNumber" Device where
  type PropertyType "SerialNumber" Device = Value Prelude.Text
  set newValue Device {..}
    = Device {serialNumber = Prelude.pure newValue, ..}
instance Property "SiteId" Device where
  type PropertyType "SiteId" Device = Value Prelude.Text
  set newValue Device {..}
    = Device {siteId = Prelude.pure newValue, ..}
instance Property "Tags" Device where
  type PropertyType "Tags" Device = [Tag]
  set newValue Device {..}
    = Device {tags = Prelude.pure newValue, ..}
instance Property "Type" Device where
  type PropertyType "Type" Device = Value Prelude.Text
  set newValue Device {..}
    = Device {type' = Prelude.pure newValue, ..}
instance Property "Vendor" Device where
  type PropertyType "Vendor" Device = Value Prelude.Text
  set newValue Device {..}
    = Device {vendor = Prelude.pure newValue, ..}