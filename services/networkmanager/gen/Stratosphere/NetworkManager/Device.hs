module Stratosphere.NetworkManager.Device (
        module Exports, Device(..), mkDevice
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.Device.AWSLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.Device.LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Device
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html>
    Device {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-awslocation>
            aWSLocation :: (Prelude.Maybe AWSLocationProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-globalnetworkid>
            globalNetworkId :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-location>
            location :: (Prelude.Maybe LocationProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-model>
            model :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-serialnumber>
            serialNumber :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-siteid>
            siteId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-type>
            type' :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-vendor>
            vendor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDevice :: Value Prelude.Text -> Device
mkDevice globalNetworkId
  = Device
      {haddock_workaround_ = (), globalNetworkId = globalNetworkId,
       aWSLocation = Prelude.Nothing, description = Prelude.Nothing,
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
                              [(JSON..=) "AWSLocation" Prelude.<$> aWSLocation,
                               (JSON..=) "Description" Prelude.<$> description,
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
                 [(JSON..=) "AWSLocation" Prelude.<$> aWSLocation,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Model" Prelude.<$> model,
                  (JSON..=) "SerialNumber" Prelude.<$> serialNumber,
                  (JSON..=) "SiteId" Prelude.<$> siteId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "Vendor" Prelude.<$> vendor])))
instance Property "AWSLocation" Device where
  type PropertyType "AWSLocation" Device = AWSLocationProperty
  set newValue Device {..}
    = Device {aWSLocation = Prelude.pure newValue, ..}
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