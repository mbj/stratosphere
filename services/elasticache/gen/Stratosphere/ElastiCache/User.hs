module Stratosphere.ElastiCache.User (
        module Exports, User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.User.AuthenticationModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data User
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html>
    User {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-accessstring>
          accessString :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-authenticationmode>
          authenticationMode :: (Prelude.Maybe AuthenticationModeProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-engine>
          engine :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-nopasswordrequired>
          noPasswordRequired :: (Prelude.Maybe (Value Prelude.Bool)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-passwords>
          passwords :: (Prelude.Maybe (ValueList Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-userid>
          userId :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-user.html#cfn-elasticache-user-username>
          userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUser ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> User
mkUser engine userId userName
  = User
      {haddock_workaround_ = (), engine = engine, userId = userId,
       userName = userName, accessString = Prelude.Nothing,
       authenticationMode = Prelude.Nothing,
       noPasswordRequired = Prelude.Nothing, passwords = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::User", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Engine" JSON..= engine, "UserId" JSON..= userId,
                            "UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessString" Prelude.<$> accessString,
                               (JSON..=) "AuthenticationMode" Prelude.<$> authenticationMode,
                               (JSON..=) "NoPasswordRequired" Prelude.<$> noPasswordRequired,
                               (JSON..=) "Passwords" Prelude.<$> passwords,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Engine" JSON..= engine, "UserId" JSON..= userId,
               "UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessString" Prelude.<$> accessString,
                  (JSON..=) "AuthenticationMode" Prelude.<$> authenticationMode,
                  (JSON..=) "NoPasswordRequired" Prelude.<$> noPasswordRequired,
                  (JSON..=) "Passwords" Prelude.<$> passwords,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessString" User where
  type PropertyType "AccessString" User = Value Prelude.Text
  set newValue User {..}
    = User {accessString = Prelude.pure newValue, ..}
instance Property "AuthenticationMode" User where
  type PropertyType "AuthenticationMode" User = AuthenticationModeProperty
  set newValue User {..}
    = User {authenticationMode = Prelude.pure newValue, ..}
instance Property "Engine" User where
  type PropertyType "Engine" User = Value Prelude.Text
  set newValue User {..} = User {engine = newValue, ..}
instance Property "NoPasswordRequired" User where
  type PropertyType "NoPasswordRequired" User = Value Prelude.Bool
  set newValue User {..}
    = User {noPasswordRequired = Prelude.pure newValue, ..}
instance Property "Passwords" User where
  type PropertyType "Passwords" User = ValueList Prelude.Text
  set newValue User {..}
    = User {passwords = Prelude.pure newValue, ..}
instance Property "Tags" User where
  type PropertyType "Tags" User = [Tag]
  set newValue User {..} = User {tags = Prelude.pure newValue, ..}
instance Property "UserId" User where
  type PropertyType "UserId" User = Value Prelude.Text
  set newValue User {..} = User {userId = newValue, ..}
instance Property "UserName" User where
  type PropertyType "UserName" User = Value Prelude.Text
  set newValue User {..} = User {userName = newValue, ..}