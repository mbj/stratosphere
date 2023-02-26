module Stratosphere.ElastiCache.UserGroup (
        UserGroup(..), mkUserGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserGroup
  = UserGroup {engine :: (Value Prelude.Text),
               userGroupId :: (Value Prelude.Text),
               userIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkUserGroup ::
  Value Prelude.Text -> Value Prelude.Text -> UserGroup
mkUserGroup engine userGroupId
  = UserGroup
      {engine = engine, userGroupId = userGroupId,
       userIds = Prelude.Nothing}
instance ToResourceProperties UserGroup where
  toResourceProperties UserGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::UserGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Engine" JSON..= engine, "UserGroupId" JSON..= userGroupId]
                           (Prelude.catMaybes [(JSON..=) "UserIds" Prelude.<$> userIds]))}
instance JSON.ToJSON UserGroup where
  toJSON UserGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Engine" JSON..= engine, "UserGroupId" JSON..= userGroupId]
              (Prelude.catMaybes [(JSON..=) "UserIds" Prelude.<$> userIds])))
instance Property "Engine" UserGroup where
  type PropertyType "Engine" UserGroup = Value Prelude.Text
  set newValue UserGroup {..} = UserGroup {engine = newValue, ..}
instance Property "UserGroupId" UserGroup where
  type PropertyType "UserGroupId" UserGroup = Value Prelude.Text
  set newValue UserGroup {..}
    = UserGroup {userGroupId = newValue, ..}
instance Property "UserIds" UserGroup where
  type PropertyType "UserIds" UserGroup = ValueList Prelude.Text
  set newValue UserGroup {..}
    = UserGroup {userIds = Prelude.pure newValue, ..}