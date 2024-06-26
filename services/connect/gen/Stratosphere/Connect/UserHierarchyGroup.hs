module Stratosphere.Connect.UserHierarchyGroup (
        UserHierarchyGroup(..), mkUserHierarchyGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UserHierarchyGroup
  = UserHierarchyGroup {instanceArn :: (Value Prelude.Text),
                        name :: (Value Prelude.Text),
                        parentGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserHierarchyGroup ::
  Value Prelude.Text -> Value Prelude.Text -> UserHierarchyGroup
mkUserHierarchyGroup instanceArn name
  = UserHierarchyGroup
      {instanceArn = instanceArn, name = name,
       parentGroupArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties UserHierarchyGroup where
  toResourceProperties UserHierarchyGroup {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ParentGroupArn" Prelude.<$> parentGroupArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON UserHierarchyGroup where
  toJSON UserHierarchyGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ParentGroupArn" Prelude.<$> parentGroupArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InstanceArn" UserHierarchyGroup where
  type PropertyType "InstanceArn" UserHierarchyGroup = Value Prelude.Text
  set newValue UserHierarchyGroup {..}
    = UserHierarchyGroup {instanceArn = newValue, ..}
instance Property "Name" UserHierarchyGroup where
  type PropertyType "Name" UserHierarchyGroup = Value Prelude.Text
  set newValue UserHierarchyGroup {..}
    = UserHierarchyGroup {name = newValue, ..}
instance Property "ParentGroupArn" UserHierarchyGroup where
  type PropertyType "ParentGroupArn" UserHierarchyGroup = Value Prelude.Text
  set newValue UserHierarchyGroup {..}
    = UserHierarchyGroup {parentGroupArn = Prelude.pure newValue, ..}
instance Property "Tags" UserHierarchyGroup where
  type PropertyType "Tags" UserHierarchyGroup = [Tag]
  set newValue UserHierarchyGroup {..}
    = UserHierarchyGroup {tags = Prelude.pure newValue, ..}