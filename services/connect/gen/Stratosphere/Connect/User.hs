module Stratosphere.Connect.User (
        module Exports, User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.User.UserIdentityInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.User.UserPhoneConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.User.UserProficiencyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data User
  = User {directoryUserId :: (Prelude.Maybe (Value Prelude.Text)),
          hierarchyGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
          identityInfo :: (Prelude.Maybe UserIdentityInfoProperty),
          instanceArn :: (Value Prelude.Text),
          password :: (Prelude.Maybe (Value Prelude.Text)),
          phoneConfig :: UserPhoneConfigProperty,
          routingProfileArn :: (Value Prelude.Text),
          securityProfileArns :: (ValueList Prelude.Text),
          tags :: (Prelude.Maybe [Tag]),
          userProficiencies :: (Prelude.Maybe [UserProficiencyProperty]),
          username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUser ::
  Value Prelude.Text
  -> UserPhoneConfigProperty
     -> Value Prelude.Text
        -> ValueList Prelude.Text -> Value Prelude.Text -> User
mkUser
  instanceArn
  phoneConfig
  routingProfileArn
  securityProfileArns
  username
  = User
      {instanceArn = instanceArn, phoneConfig = phoneConfig,
       routingProfileArn = routingProfileArn,
       securityProfileArns = securityProfileArns, username = username,
       directoryUserId = Prelude.Nothing,
       hierarchyGroupArn = Prelude.Nothing,
       identityInfo = Prelude.Nothing, password = Prelude.Nothing,
       tags = Prelude.Nothing, userProficiencies = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::Connect::User", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn,
                            "PhoneConfig" JSON..= phoneConfig,
                            "RoutingProfileArn" JSON..= routingProfileArn,
                            "SecurityProfileArns" JSON..= securityProfileArns,
                            "Username" JSON..= username]
                           (Prelude.catMaybes
                              [(JSON..=) "DirectoryUserId" Prelude.<$> directoryUserId,
                               (JSON..=) "HierarchyGroupArn" Prelude.<$> hierarchyGroupArn,
                               (JSON..=) "IdentityInfo" Prelude.<$> identityInfo,
                               (JSON..=) "Password" Prelude.<$> password,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserProficiencies" Prelude.<$> userProficiencies]))}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn,
               "PhoneConfig" JSON..= phoneConfig,
               "RoutingProfileArn" JSON..= routingProfileArn,
               "SecurityProfileArns" JSON..= securityProfileArns,
               "Username" JSON..= username]
              (Prelude.catMaybes
                 [(JSON..=) "DirectoryUserId" Prelude.<$> directoryUserId,
                  (JSON..=) "HierarchyGroupArn" Prelude.<$> hierarchyGroupArn,
                  (JSON..=) "IdentityInfo" Prelude.<$> identityInfo,
                  (JSON..=) "Password" Prelude.<$> password,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserProficiencies" Prelude.<$> userProficiencies])))
instance Property "DirectoryUserId" User where
  type PropertyType "DirectoryUserId" User = Value Prelude.Text
  set newValue User {..}
    = User {directoryUserId = Prelude.pure newValue, ..}
instance Property "HierarchyGroupArn" User where
  type PropertyType "HierarchyGroupArn" User = Value Prelude.Text
  set newValue User {..}
    = User {hierarchyGroupArn = Prelude.pure newValue, ..}
instance Property "IdentityInfo" User where
  type PropertyType "IdentityInfo" User = UserIdentityInfoProperty
  set newValue User {..}
    = User {identityInfo = Prelude.pure newValue, ..}
instance Property "InstanceArn" User where
  type PropertyType "InstanceArn" User = Value Prelude.Text
  set newValue User {..} = User {instanceArn = newValue, ..}
instance Property "Password" User where
  type PropertyType "Password" User = Value Prelude.Text
  set newValue User {..}
    = User {password = Prelude.pure newValue, ..}
instance Property "PhoneConfig" User where
  type PropertyType "PhoneConfig" User = UserPhoneConfigProperty
  set newValue User {..} = User {phoneConfig = newValue, ..}
instance Property "RoutingProfileArn" User where
  type PropertyType "RoutingProfileArn" User = Value Prelude.Text
  set newValue User {..} = User {routingProfileArn = newValue, ..}
instance Property "SecurityProfileArns" User where
  type PropertyType "SecurityProfileArns" User = ValueList Prelude.Text
  set newValue User {..} = User {securityProfileArns = newValue, ..}
instance Property "Tags" User where
  type PropertyType "Tags" User = [Tag]
  set newValue User {..} = User {tags = Prelude.pure newValue, ..}
instance Property "UserProficiencies" User where
  type PropertyType "UserProficiencies" User = [UserProficiencyProperty]
  set newValue User {..}
    = User {userProficiencies = Prelude.pure newValue, ..}
instance Property "Username" User where
  type PropertyType "Username" User = Value Prelude.Text
  set newValue User {..} = User {username = newValue, ..}