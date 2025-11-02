module Stratosphere.Deadline.StorageProfile (
        module Exports, StorageProfile(..), mkStorageProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.StorageProfile.FileSystemLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-storageprofile.html>
    StorageProfile {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-storageprofile.html#cfn-deadline-storageprofile-displayname>
                    displayName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-storageprofile.html#cfn-deadline-storageprofile-farmid>
                    farmId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-storageprofile.html#cfn-deadline-storageprofile-filesystemlocations>
                    fileSystemLocations :: (Prelude.Maybe [FileSystemLocationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-storageprofile.html#cfn-deadline-storageprofile-osfamily>
                    osFamily :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageProfile ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> StorageProfile
mkStorageProfile displayName farmId osFamily
  = StorageProfile
      {haddock_workaround_ = (), displayName = displayName,
       farmId = farmId, osFamily = osFamily,
       fileSystemLocations = Prelude.Nothing}
instance ToResourceProperties StorageProfile where
  toResourceProperties StorageProfile {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::StorageProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName, "FarmId" JSON..= farmId,
                            "OsFamily" JSON..= osFamily]
                           (Prelude.catMaybes
                              [(JSON..=) "FileSystemLocations"
                                 Prelude.<$> fileSystemLocations]))}
instance JSON.ToJSON StorageProfile where
  toJSON StorageProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName, "FarmId" JSON..= farmId,
               "OsFamily" JSON..= osFamily]
              (Prelude.catMaybes
                 [(JSON..=) "FileSystemLocations"
                    Prelude.<$> fileSystemLocations])))
instance Property "DisplayName" StorageProfile where
  type PropertyType "DisplayName" StorageProfile = Value Prelude.Text
  set newValue StorageProfile {..}
    = StorageProfile {displayName = newValue, ..}
instance Property "FarmId" StorageProfile where
  type PropertyType "FarmId" StorageProfile = Value Prelude.Text
  set newValue StorageProfile {..}
    = StorageProfile {farmId = newValue, ..}
instance Property "FileSystemLocations" StorageProfile where
  type PropertyType "FileSystemLocations" StorageProfile = [FileSystemLocationProperty]
  set newValue StorageProfile {..}
    = StorageProfile {fileSystemLocations = Prelude.pure newValue, ..}
instance Property "OsFamily" StorageProfile where
  type PropertyType "OsFamily" StorageProfile = Value Prelude.Text
  set newValue StorageProfile {..}
    = StorageProfile {osFamily = newValue, ..}