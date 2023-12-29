module Stratosphere.EFS.AccessPoint (
        module Exports, AccessPoint(..), mkAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EFS.AccessPoint.AccessPointTagProperty as Exports
import {-# SOURCE #-} Stratosphere.EFS.AccessPoint.PosixUserProperty as Exports
import {-# SOURCE #-} Stratosphere.EFS.AccessPoint.RootDirectoryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPoint
  = AccessPoint {accessPointTags :: (Prelude.Maybe [AccessPointTagProperty]),
                 clientToken :: (Prelude.Maybe (Value Prelude.Text)),
                 fileSystemId :: (Value Prelude.Text),
                 posixUser :: (Prelude.Maybe PosixUserProperty),
                 rootDirectory :: (Prelude.Maybe RootDirectoryProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPoint :: Value Prelude.Text -> AccessPoint
mkAccessPoint fileSystemId
  = AccessPoint
      {fileSystemId = fileSystemId, accessPointTags = Prelude.Nothing,
       clientToken = Prelude.Nothing, posixUser = Prelude.Nothing,
       rootDirectory = Prelude.Nothing}
instance ToResourceProperties AccessPoint where
  toResourceProperties AccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::EFS::AccessPoint", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessPointTags" Prelude.<$> accessPointTags,
                               (JSON..=) "ClientToken" Prelude.<$> clientToken,
                               (JSON..=) "PosixUser" Prelude.<$> posixUser,
                               (JSON..=) "RootDirectory" Prelude.<$> rootDirectory]))}
instance JSON.ToJSON AccessPoint where
  toJSON AccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId]
              (Prelude.catMaybes
                 [(JSON..=) "AccessPointTags" Prelude.<$> accessPointTags,
                  (JSON..=) "ClientToken" Prelude.<$> clientToken,
                  (JSON..=) "PosixUser" Prelude.<$> posixUser,
                  (JSON..=) "RootDirectory" Prelude.<$> rootDirectory])))
instance Property "AccessPointTags" AccessPoint where
  type PropertyType "AccessPointTags" AccessPoint = [AccessPointTagProperty]
  set newValue AccessPoint {..}
    = AccessPoint {accessPointTags = Prelude.pure newValue, ..}
instance Property "ClientToken" AccessPoint where
  type PropertyType "ClientToken" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..}
    = AccessPoint {clientToken = Prelude.pure newValue, ..}
instance Property "FileSystemId" AccessPoint where
  type PropertyType "FileSystemId" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..}
    = AccessPoint {fileSystemId = newValue, ..}
instance Property "PosixUser" AccessPoint where
  type PropertyType "PosixUser" AccessPoint = PosixUserProperty
  set newValue AccessPoint {..}
    = AccessPoint {posixUser = Prelude.pure newValue, ..}
instance Property "RootDirectory" AccessPoint where
  type PropertyType "RootDirectory" AccessPoint = RootDirectoryProperty
  set newValue AccessPoint {..}
    = AccessPoint {rootDirectory = Prelude.pure newValue, ..}