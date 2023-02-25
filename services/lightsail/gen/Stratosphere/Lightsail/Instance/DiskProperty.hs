module Stratosphere.Lightsail.Instance.DiskProperty (
        DiskProperty(..), mkDiskProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DiskProperty
  = DiskProperty {attachedTo :: (Prelude.Maybe (Value Prelude.Text)),
                  attachmentState :: (Prelude.Maybe (Value Prelude.Text)),
                  diskName :: (Value Prelude.Text),
                  iOPS :: (Prelude.Maybe (Value Prelude.Integer)),
                  isSystemDisk :: (Prelude.Maybe (Value Prelude.Bool)),
                  path :: (Value Prelude.Text),
                  sizeInGb :: (Prelude.Maybe (Value Prelude.Text))}
mkDiskProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DiskProperty
mkDiskProperty diskName path
  = DiskProperty
      {diskName = diskName, path = path, attachedTo = Prelude.Nothing,
       attachmentState = Prelude.Nothing, iOPS = Prelude.Nothing,
       isSystemDisk = Prelude.Nothing, sizeInGb = Prelude.Nothing}
instance ToResourceProperties DiskProperty where
  toResourceProperties DiskProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.Disk",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DiskName" JSON..= diskName, "Path" JSON..= path]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachedTo" Prelude.<$> attachedTo,
                               (JSON..=) "AttachmentState" Prelude.<$> attachmentState,
                               (JSON..=) "IOPS" Prelude.<$> iOPS,
                               (JSON..=) "IsSystemDisk" Prelude.<$> isSystemDisk,
                               (JSON..=) "SizeInGb" Prelude.<$> sizeInGb]))}
instance JSON.ToJSON DiskProperty where
  toJSON DiskProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DiskName" JSON..= diskName, "Path" JSON..= path]
              (Prelude.catMaybes
                 [(JSON..=) "AttachedTo" Prelude.<$> attachedTo,
                  (JSON..=) "AttachmentState" Prelude.<$> attachmentState,
                  (JSON..=) "IOPS" Prelude.<$> iOPS,
                  (JSON..=) "IsSystemDisk" Prelude.<$> isSystemDisk,
                  (JSON..=) "SizeInGb" Prelude.<$> sizeInGb])))
instance Property "AttachedTo" DiskProperty where
  type PropertyType "AttachedTo" DiskProperty = Value Prelude.Text
  set newValue DiskProperty {..}
    = DiskProperty {attachedTo = Prelude.pure newValue, ..}
instance Property "AttachmentState" DiskProperty where
  type PropertyType "AttachmentState" DiskProperty = Value Prelude.Text
  set newValue DiskProperty {..}
    = DiskProperty {attachmentState = Prelude.pure newValue, ..}
instance Property "DiskName" DiskProperty where
  type PropertyType "DiskName" DiskProperty = Value Prelude.Text
  set newValue DiskProperty {..}
    = DiskProperty {diskName = newValue, ..}
instance Property "IOPS" DiskProperty where
  type PropertyType "IOPS" DiskProperty = Value Prelude.Integer
  set newValue DiskProperty {..}
    = DiskProperty {iOPS = Prelude.pure newValue, ..}
instance Property "IsSystemDisk" DiskProperty where
  type PropertyType "IsSystemDisk" DiskProperty = Value Prelude.Bool
  set newValue DiskProperty {..}
    = DiskProperty {isSystemDisk = Prelude.pure newValue, ..}
instance Property "Path" DiskProperty where
  type PropertyType "Path" DiskProperty = Value Prelude.Text
  set newValue DiskProperty {..} = DiskProperty {path = newValue, ..}
instance Property "SizeInGb" DiskProperty where
  type PropertyType "SizeInGb" DiskProperty = Value Prelude.Text
  set newValue DiskProperty {..}
    = DiskProperty {sizeInGb = Prelude.pure newValue, ..}