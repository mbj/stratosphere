module Stratosphere.DataSync.LocationEFS (
        module Exports, LocationEFS(..), mkLocationEFS
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationEFS.Ec2ConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationEFS
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html>
    LocationEFS {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-accesspointarn>
                 accessPointArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-ec2config>
                 ec2Config :: Ec2ConfigProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-efsfilesystemarn>
                 efsFilesystemArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-filesystemaccessrolearn>
                 fileSystemAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-intransitencryption>
                 inTransitEncryption :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-subdirectory>
                 subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationefs.html#cfn-datasync-locationefs-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationEFS :: Ec2ConfigProperty -> LocationEFS
mkLocationEFS ec2Config
  = LocationEFS
      {haddock_workaround_ = (), ec2Config = ec2Config,
       accessPointArn = Prelude.Nothing,
       efsFilesystemArn = Prelude.Nothing,
       fileSystemAccessRoleArn = Prelude.Nothing,
       inTransitEncryption = Prelude.Nothing,
       subdirectory = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LocationEFS where
  toResourceProperties LocationEFS {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationEFS",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ec2Config" JSON..= ec2Config]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessPointArn" Prelude.<$> accessPointArn,
                               (JSON..=) "EfsFilesystemArn" Prelude.<$> efsFilesystemArn,
                               (JSON..=) "FileSystemAccessRoleArn"
                                 Prelude.<$> fileSystemAccessRoleArn,
                               (JSON..=) "InTransitEncryption" Prelude.<$> inTransitEncryption,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationEFS where
  toJSON LocationEFS {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ec2Config" JSON..= ec2Config]
              (Prelude.catMaybes
                 [(JSON..=) "AccessPointArn" Prelude.<$> accessPointArn,
                  (JSON..=) "EfsFilesystemArn" Prelude.<$> efsFilesystemArn,
                  (JSON..=) "FileSystemAccessRoleArn"
                    Prelude.<$> fileSystemAccessRoleArn,
                  (JSON..=) "InTransitEncryption" Prelude.<$> inTransitEncryption,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessPointArn" LocationEFS where
  type PropertyType "AccessPointArn" LocationEFS = Value Prelude.Text
  set newValue LocationEFS {..}
    = LocationEFS {accessPointArn = Prelude.pure newValue, ..}
instance Property "Ec2Config" LocationEFS where
  type PropertyType "Ec2Config" LocationEFS = Ec2ConfigProperty
  set newValue LocationEFS {..}
    = LocationEFS {ec2Config = newValue, ..}
instance Property "EfsFilesystemArn" LocationEFS where
  type PropertyType "EfsFilesystemArn" LocationEFS = Value Prelude.Text
  set newValue LocationEFS {..}
    = LocationEFS {efsFilesystemArn = Prelude.pure newValue, ..}
instance Property "FileSystemAccessRoleArn" LocationEFS where
  type PropertyType "FileSystemAccessRoleArn" LocationEFS = Value Prelude.Text
  set newValue LocationEFS {..}
    = LocationEFS {fileSystemAccessRoleArn = Prelude.pure newValue, ..}
instance Property "InTransitEncryption" LocationEFS where
  type PropertyType "InTransitEncryption" LocationEFS = Value Prelude.Text
  set newValue LocationEFS {..}
    = LocationEFS {inTransitEncryption = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationEFS where
  type PropertyType "Subdirectory" LocationEFS = Value Prelude.Text
  set newValue LocationEFS {..}
    = LocationEFS {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationEFS where
  type PropertyType "Tags" LocationEFS = [Tag]
  set newValue LocationEFS {..}
    = LocationEFS {tags = Prelude.pure newValue, ..}