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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-usergroup.html>
    UserGroup {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-usergroup.html#cfn-elasticache-usergroup-engine>
               engine :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-usergroup.html#cfn-elasticache-usergroup-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-usergroup.html#cfn-elasticache-usergroup-usergroupid>
               userGroupId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-usergroup.html#cfn-elasticache-usergroup-userids>
               userIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValueList Prelude.Text -> UserGroup
mkUserGroup engine userGroupId userIds
  = UserGroup
      {haddock_workaround_ = (), engine = engine,
       userGroupId = userGroupId, userIds = userIds,
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