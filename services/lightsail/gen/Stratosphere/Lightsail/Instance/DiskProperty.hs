module Stratosphere.Lightsail.Instance.DiskProperty (
        DiskProperty(..), mkDiskProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DiskProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html>
    DiskProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-attachedto>
                  attachedTo :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-attachmentstate>
                  attachmentState :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-diskname>
                  diskName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-iops>
                  iOPS :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-issystemdisk>
                  isSystemDisk :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-path>
                  path :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-disk.html#cfn-lightsail-instance-disk-sizeingb>
                  sizeInGb :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDiskProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DiskProperty
mkDiskProperty diskName path
  = DiskProperty
      {haddock_workaround_ = (), diskName = diskName, path = path,
       attachedTo = Prelude.Nothing, attachmentState = Prelude.Nothing,
       iOPS = Prelude.Nothing, isSystemDisk = Prelude.Nothing,
       sizeInGb = Prelude.Nothing}
instance ToResourceProperties DiskProperty where
  toResourceProperties DiskProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.Disk",
         supportsTags = Prelude.False,
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