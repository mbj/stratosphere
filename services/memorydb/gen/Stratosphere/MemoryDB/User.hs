module Stratosphere.MemoryDB.User (
        module Exports, User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MemoryDB.User.AuthenticationModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data User
  = User {accessString :: (Value Prelude.Text),
          authenticationMode :: AuthenticationModeProperty,
          tags :: (Prelude.Maybe [Tag]),
          userName :: (Value Prelude.Text)}
mkUser ::
  Value Prelude.Text
  -> AuthenticationModeProperty -> Value Prelude.Text -> User
mkUser accessString authenticationMode userName
  = User
      {accessString = accessString,
       authenticationMode = authenticationMode, userName = userName,
       tags = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::User", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessString" JSON..= accessString,
                            "AuthenticationMode" JSON..= authenticationMode,
                            "UserName" JSON..= userName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessString" JSON..= accessString,
               "AuthenticationMode" JSON..= authenticationMode,
               "UserName" JSON..= userName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessString" User where
  type PropertyType "AccessString" User = Value Prelude.Text
  set newValue User {..} = User {accessString = newValue, ..}
instance Property "AuthenticationMode" User where
  type PropertyType "AuthenticationMode" User = AuthenticationModeProperty
  set newValue User {..} = User {authenticationMode = newValue, ..}
instance Property "Tags" User where
  type PropertyType "Tags" User = [Tag]
  set newValue User {..} = User {tags = Prelude.pure newValue, ..}
instance Property "UserName" User where
  type PropertyType "UserName" User = Value Prelude.Text
  set newValue User {..} = User {userName = newValue, ..}