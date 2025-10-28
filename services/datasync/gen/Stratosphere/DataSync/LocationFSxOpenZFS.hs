module Stratosphere.DataSync.LocationFSxOpenZFS (
        module Exports, LocationFSxOpenZFS(..), mkLocationFSxOpenZFS
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxOpenZFS.ProtocolProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationFSxOpenZFS
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxopenzfs.html>
    LocationFSxOpenZFS {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxopenzfs.html#cfn-datasync-locationfsxopenzfs-fsxfilesystemarn>
                        fsxFilesystemArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxopenzfs.html#cfn-datasync-locationfsxopenzfs-protocol>
                        protocol :: ProtocolProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxopenzfs.html#cfn-datasync-locationfsxopenzfs-securitygrouparns>
                        securityGroupArns :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxopenzfs.html#cfn-datasync-locationfsxopenzfs-subdirectory>
                        subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxopenzfs.html#cfn-datasync-locationfsxopenzfs-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationFSxOpenZFS ::
  ProtocolProperty -> ValueList Prelude.Text -> LocationFSxOpenZFS
mkLocationFSxOpenZFS protocol securityGroupArns
  = LocationFSxOpenZFS
      {haddock_workaround_ = (), protocol = protocol,
       securityGroupArns = securityGroupArns,
       fsxFilesystemArn = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationFSxOpenZFS where
  toResourceProperties LocationFSxOpenZFS {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxOpenZFS",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Protocol" JSON..= protocol,
                            "SecurityGroupArns" JSON..= securityGroupArns]
                           (Prelude.catMaybes
                              [(JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationFSxOpenZFS where
  toJSON LocationFSxOpenZFS {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Protocol" JSON..= protocol,
               "SecurityGroupArns" JSON..= securityGroupArns]
              (Prelude.catMaybes
                 [(JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "FsxFilesystemArn" LocationFSxOpenZFS where
  type PropertyType "FsxFilesystemArn" LocationFSxOpenZFS = Value Prelude.Text
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {fsxFilesystemArn = Prelude.pure newValue, ..}
instance Property "Protocol" LocationFSxOpenZFS where
  type PropertyType "Protocol" LocationFSxOpenZFS = ProtocolProperty
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {protocol = newValue, ..}
instance Property "SecurityGroupArns" LocationFSxOpenZFS where
  type PropertyType "SecurityGroupArns" LocationFSxOpenZFS = ValueList Prelude.Text
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {securityGroupArns = newValue, ..}
instance Property "Subdirectory" LocationFSxOpenZFS where
  type PropertyType "Subdirectory" LocationFSxOpenZFS = Value Prelude.Text
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationFSxOpenZFS where
  type PropertyType "Tags" LocationFSxOpenZFS = [Tag]
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {tags = Prelude.pure newValue, ..}