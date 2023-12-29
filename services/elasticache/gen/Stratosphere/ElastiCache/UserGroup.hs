module Stratosphere.ElastiCache.UserGroup (
        UserGroup(..), mkUserGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UserGroup
  = UserGroup {engine :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag]),
               userGroupId :: (Value Prelude.Text),
               userIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValueList Prelude.Text -> UserGroup
mkUserGroup engine userGroupId userIds
  = UserGroup
      {engine = engine, userGroupId = userGroupId, userIds = userIds,
       tags = Prelude.Nothing}
instance ToResourceProperties UserGroup where
  toResourceProperties UserGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::UserGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Engine" JSON..= engine, "UserGroupId" JSON..= userGroupId,
                            "UserIds" JSON..= userIds]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON UserGroup where
  toJSON UserGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Engine" JSON..= engine, "UserGroupId" JSON..= userGroupId,
               "UserIds" JSON..= userIds]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Engine" UserGroup where
  type PropertyType "Engine" UserGroup = Value Prelude.Text
  set newValue UserGroup {..} = UserGroup {engine = newValue, ..}
instance Property "Tags" UserGroup where
  type PropertyType "Tags" UserGroup = [Tag]
  set newValue UserGroup {..}
    = UserGroup {tags = Prelude.pure newValue, ..}
instance Property "UserGroupId" UserGroup where
  type PropertyType "UserGroupId" UserGroup = Value Prelude.Text
  set newValue UserGroup {..}
    = UserGroup {userGroupId = newValue, ..}
instance Property "UserIds" UserGroup where
  type PropertyType "UserIds" UserGroup = ValueList Prelude.Text
  set newValue UserGroup {..} = UserGroup {userIds = newValue, ..}