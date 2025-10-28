module Stratosphere.ResourceGroups.TagSyncTask (
        TagSyncTask(..), mkTagSyncTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagSyncTask
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-tagsynctask.html>
    TagSyncTask {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-tagsynctask.html#cfn-resourcegroups-tagsynctask-group>
                 group :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-tagsynctask.html#cfn-resourcegroups-tagsynctask-rolearn>
                 roleArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-tagsynctask.html#cfn-resourcegroups-tagsynctask-tagkey>
                 tagKey :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-tagsynctask.html#cfn-resourcegroups-tagsynctask-tagvalue>
                 tagValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagSyncTask ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> TagSyncTask
mkTagSyncTask group roleArn tagKey tagValue
  = TagSyncTask
      {haddock_workaround_ = (), group = group, roleArn = roleArn,
       tagKey = tagKey, tagValue = tagValue}
instance ToResourceProperties TagSyncTask where
  toResourceProperties TagSyncTask {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::TagSyncTask",
         supportsTags = Prelude.False,
         properties = ["Group" JSON..= group, "RoleArn" JSON..= roleArn,
                       "TagKey" JSON..= tagKey, "TagValue" JSON..= tagValue]}
instance JSON.ToJSON TagSyncTask where
  toJSON TagSyncTask {..}
    = JSON.object
        ["Group" JSON..= group, "RoleArn" JSON..= roleArn,
         "TagKey" JSON..= tagKey, "TagValue" JSON..= tagValue]
instance Property "Group" TagSyncTask where
  type PropertyType "Group" TagSyncTask = Value Prelude.Text
  set newValue TagSyncTask {..} = TagSyncTask {group = newValue, ..}
instance Property "RoleArn" TagSyncTask where
  type PropertyType "RoleArn" TagSyncTask = Value Prelude.Text
  set newValue TagSyncTask {..}
    = TagSyncTask {roleArn = newValue, ..}
instance Property "TagKey" TagSyncTask where
  type PropertyType "TagKey" TagSyncTask = Value Prelude.Text
  set newValue TagSyncTask {..} = TagSyncTask {tagKey = newValue, ..}
instance Property "TagValue" TagSyncTask where
  type PropertyType "TagValue" TagSyncTask = Value Prelude.Text
  set newValue TagSyncTask {..}
    = TagSyncTask {tagValue = newValue, ..}