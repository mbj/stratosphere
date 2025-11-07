module Stratosphere.QuickSight.Topic (
        module Exports, Topic(..), mkTopic
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.CustomInstructionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.DatasetMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicConfigOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Topic
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html>
    Topic {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-awsaccountid>
           awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-configoptions>
           configOptions :: (Prelude.Maybe TopicConfigOptionsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-custominstructions>
           customInstructions :: (Prelude.Maybe CustomInstructionsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-datasets>
           dataSets :: (Prelude.Maybe [DatasetMetadataProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-folderarns>
           folderArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-topicid>
           topicId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-topic.html#cfn-quicksight-topic-userexperienceversion>
           userExperienceVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopic :: Topic
mkTopic
  = Topic
      {haddock_workaround_ = (), awsAccountId = Prelude.Nothing,
       configOptions = Prelude.Nothing,
       customInstructions = Prelude.Nothing, dataSets = Prelude.Nothing,
       description = Prelude.Nothing, folderArns = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing,
       topicId = Prelude.Nothing, userExperienceVersion = Prelude.Nothing}
instance ToResourceProperties Topic where
  toResourceProperties Topic {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "ConfigOptions" Prelude.<$> configOptions,
                            (JSON..=) "CustomInstructions" Prelude.<$> customInstructions,
                            (JSON..=) "DataSets" Prelude.<$> dataSets,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "FolderArns" Prelude.<$> folderArns,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TopicId" Prelude.<$> topicId,
                            (JSON..=) "UserExperienceVersion"
                              Prelude.<$> userExperienceVersion])}
instance JSON.ToJSON Topic where
  toJSON Topic {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "ConfigOptions" Prelude.<$> configOptions,
               (JSON..=) "CustomInstructions" Prelude.<$> customInstructions,
               (JSON..=) "DataSets" Prelude.<$> dataSets,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "FolderArns" Prelude.<$> folderArns,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TopicId" Prelude.<$> topicId,
               (JSON..=) "UserExperienceVersion"
                 Prelude.<$> userExperienceVersion]))
instance Property "AwsAccountId" Topic where
  type PropertyType "AwsAccountId" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {awsAccountId = Prelude.pure newValue, ..}
instance Property "ConfigOptions" Topic where
  type PropertyType "ConfigOptions" Topic = TopicConfigOptionsProperty
  set newValue Topic {..}
    = Topic {configOptions = Prelude.pure newValue, ..}
instance Property "CustomInstructions" Topic where
  type PropertyType "CustomInstructions" Topic = CustomInstructionsProperty
  set newValue Topic {..}
    = Topic {customInstructions = Prelude.pure newValue, ..}
instance Property "DataSets" Topic where
  type PropertyType "DataSets" Topic = [DatasetMetadataProperty]
  set newValue Topic {..}
    = Topic {dataSets = Prelude.pure newValue, ..}
instance Property "Description" Topic where
  type PropertyType "Description" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {description = Prelude.pure newValue, ..}
instance Property "FolderArns" Topic where
  type PropertyType "FolderArns" Topic = ValueList Prelude.Text
  set newValue Topic {..}
    = Topic {folderArns = Prelude.pure newValue, ..}
instance Property "Name" Topic where
  type PropertyType "Name" Topic = Value Prelude.Text
  set newValue Topic {..} = Topic {name = Prelude.pure newValue, ..}
instance Property "Tags" Topic where
  type PropertyType "Tags" Topic = [Tag]
  set newValue Topic {..} = Topic {tags = Prelude.pure newValue, ..}
instance Property "TopicId" Topic where
  type PropertyType "TopicId" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {topicId = Prelude.pure newValue, ..}
instance Property "UserExperienceVersion" Topic where
  type PropertyType "UserExperienceVersion" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {userExperienceVersion = Prelude.pure newValue, ..}