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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-user.html>
    User {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-user.html#cfn-memorydb-user-accessstring>
          accessString :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-user.html#cfn-memorydb-user-authenticationmode>
          authenticationMode :: (Prelude.Maybe AuthenticationModeProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-user.html#cfn-memorydb-user-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-user.html#cfn-memorydb-user-username>
          userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUser :: Value Prelude.Text -> User
mkUser userName
  = User
      {haddock_workaround_ = (), userName = userName,
       accessString = Prelude.Nothing,
       authenticationMode = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::User", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessString" Prelude.<$> accessString,
                               (JSON..=) "AuthenticationMode" Prelude.<$> authenticationMode,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessString" Prelude.<$> accessString,
                  (JSON..=) "AuthenticationMode" Prelude.<$> authenticationMode,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessString" User where
  type PropertyType "AccessString" User = Value Prelude.Text
  set newValue User {..}
    = User {accessString = Prelude.pure newValue, ..}
instance Property "AuthenticationMode" User where
  type PropertyType "AuthenticationMode" User = AuthenticationModeProperty
  set newValue User {..}
    = User {authenticationMode = Prelude.pure newValue, ..}
instance Property "Tags" User where
  type PropertyType "Tags" User = [Tag]
  set newValue User {..} = User {tags = Prelude.pure newValue, ..}
instance Property "UserName" User where
  type PropertyType "UserName" User = Value Prelude.Text
  set newValue User {..} = User {userName = newValue, ..}