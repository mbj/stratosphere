module Stratosphere.Lightsail.Disk (
        module Exports, Disk(..), mkDisk
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Disk.AddOnProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Disk.LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Disk
  = Disk {addOns :: (Prelude.Maybe [AddOnProperty]),
          availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
          diskName :: (Value Prelude.Text),
          location :: (Prelude.Maybe LocationProperty),
          sizeInGb :: (Value Prelude.Integer),
          tags :: (Prelude.Maybe [Tag])}
mkDisk :: Value Prelude.Text -> Value Prelude.Integer -> Disk
mkDisk diskName sizeInGb
  = Disk
      {diskName = diskName, sizeInGb = sizeInGb,
       addOns = Prelude.Nothing, availabilityZone = Prelude.Nothing,
       location = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Disk where
  toResourceProperties Disk {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Disk", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DiskName" JSON..= diskName, "SizeInGb" JSON..= sizeInGb]
                           (Prelude.catMaybes
                              [(JSON..=) "AddOns" Prelude.<$> addOns,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Disk where
  toJSON Disk {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DiskName" JSON..= diskName, "SizeInGb" JSON..= sizeInGb]
              (Prelude.catMaybes
                 [(JSON..=) "AddOns" Prelude.<$> addOns,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddOns" Disk where
  type PropertyType "AddOns" Disk = [AddOnProperty]
  set newValue Disk {..} = Disk {addOns = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Disk where
  type PropertyType "AvailabilityZone" Disk = Value Prelude.Text
  set newValue Disk {..}
    = Disk {availabilityZone = Prelude.pure newValue, ..}
instance Property "DiskName" Disk where
  type PropertyType "DiskName" Disk = Value Prelude.Text
  set newValue Disk {..} = Disk {diskName = newValue, ..}
instance Property "Location" Disk where
  type PropertyType "Location" Disk = LocationProperty
  set newValue Disk {..}
    = Disk {location = Prelude.pure newValue, ..}
instance Property "SizeInGb" Disk where
  type PropertyType "SizeInGb" Disk = Value Prelude.Integer
  set newValue Disk {..} = Disk {sizeInGb = newValue, ..}
instance Property "Tags" Disk where
  type PropertyType "Tags" Disk = [Tag]
  set newValue Disk {..} = Disk {tags = Prelude.pure newValue, ..}