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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html>
    Disk {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html#cfn-lightsail-disk-addons>
          addOns :: (Prelude.Maybe [AddOnProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html#cfn-lightsail-disk-availabilityzone>
          availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html#cfn-lightsail-disk-diskname>
          diskName :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html#cfn-lightsail-disk-location>
          location :: (Prelude.Maybe LocationProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html#cfn-lightsail-disk-sizeingb>
          sizeInGb :: (Value Prelude.Integer),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disk.html#cfn-lightsail-disk-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDisk :: Value Prelude.Text -> Value Prelude.Integer -> Disk
mkDisk diskName sizeInGb
  = Disk
      {haddock_workaround_ = (), diskName = diskName,
       sizeInGb = sizeInGb, addOns = Prelude.Nothing,
       availabilityZone = Prelude.Nothing, location = Prelude.Nothing,
       tags = Prelude.Nothing}
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