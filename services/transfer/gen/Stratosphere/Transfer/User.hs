module Stratosphere.Transfer.User (
        module Exports, User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.User.HomeDirectoryMapEntryProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.User.PosixProfileProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.User.SshPublicKeyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data User
  = User {homeDirectory :: (Prelude.Maybe (Value Prelude.Text)),
          homeDirectoryMappings :: (Prelude.Maybe [HomeDirectoryMapEntryProperty]),
          homeDirectoryType :: (Prelude.Maybe (Value Prelude.Text)),
          policy :: (Prelude.Maybe (Value Prelude.Text)),
          posixProfile :: (Prelude.Maybe PosixProfileProperty),
          role :: (Value Prelude.Text),
          serverId :: (Value Prelude.Text),
          sshPublicKeys :: (Prelude.Maybe [SshPublicKeyProperty]),
          tags :: (Prelude.Maybe [Tag]),
          userName :: (Value Prelude.Text)}
mkUser ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> User
mkUser role serverId userName
  = User
      {role = role, serverId = serverId, userName = userName,
       homeDirectory = Prelude.Nothing,
       homeDirectoryMappings = Prelude.Nothing,
       homeDirectoryType = Prelude.Nothing, policy = Prelude.Nothing,
       posixProfile = Prelude.Nothing, sshPublicKeys = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::User",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Role" JSON..= role, "ServerId" JSON..= serverId,
                            "UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "HomeDirectory" Prelude.<$> homeDirectory,
                               (JSON..=) "HomeDirectoryMappings"
                                 Prelude.<$> homeDirectoryMappings,
                               (JSON..=) "HomeDirectoryType" Prelude.<$> homeDirectoryType,
                               (JSON..=) "Policy" Prelude.<$> policy,
                               (JSON..=) "PosixProfile" Prelude.<$> posixProfile,
                               (JSON..=) "SshPublicKeys" Prelude.<$> sshPublicKeys,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Role" JSON..= role, "ServerId" JSON..= serverId,
               "UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "HomeDirectory" Prelude.<$> homeDirectory,
                  (JSON..=) "HomeDirectoryMappings"
                    Prelude.<$> homeDirectoryMappings,
                  (JSON..=) "HomeDirectoryType" Prelude.<$> homeDirectoryType,
                  (JSON..=) "Policy" Prelude.<$> policy,
                  (JSON..=) "PosixProfile" Prelude.<$> posixProfile,
                  (JSON..=) "SshPublicKeys" Prelude.<$> sshPublicKeys,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "HomeDirectory" User where
  type PropertyType "HomeDirectory" User = Value Prelude.Text
  set newValue User {..}
    = User {homeDirectory = Prelude.pure newValue, ..}
instance Property "HomeDirectoryMappings" User where
  type PropertyType "HomeDirectoryMappings" User = [HomeDirectoryMapEntryProperty]
  set newValue User {..}
    = User {homeDirectoryMappings = Prelude.pure newValue, ..}
instance Property "HomeDirectoryType" User where
  type PropertyType "HomeDirectoryType" User = Value Prelude.Text
  set newValue User {..}
    = User {homeDirectoryType = Prelude.pure newValue, ..}
instance Property "Policy" User where
  type PropertyType "Policy" User = Value Prelude.Text
  set newValue User {..} = User {policy = Prelude.pure newValue, ..}
instance Property "PosixProfile" User where
  type PropertyType "PosixProfile" User = PosixProfileProperty
  set newValue User {..}
    = User {posixProfile = Prelude.pure newValue, ..}
instance Property "Role" User where
  type PropertyType "Role" User = Value Prelude.Text
  set newValue User {..} = User {role = newValue, ..}
instance Property "ServerId" User where
  type PropertyType "ServerId" User = Value Prelude.Text
  set newValue User {..} = User {serverId = newValue, ..}
instance Property "SshPublicKeys" User where
  type PropertyType "SshPublicKeys" User = [SshPublicKeyProperty]
  set newValue User {..}
    = User {sshPublicKeys = Prelude.pure newValue, ..}
instance Property "Tags" User where
  type PropertyType "Tags" User = [Tag]
  set newValue User {..} = User {tags = Prelude.pure newValue, ..}
instance Property "UserName" User where
  type PropertyType "UserName" User = Value Prelude.Text
  set newValue User {..} = User {userName = newValue, ..}