module Stratosphere.QuickSight.Topic (
        module Exports, Topic(..), mkTopic
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.DatasetMetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Topic
  = Topic {awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
           dataSets :: (Prelude.Maybe [DatasetMetadataProperty]),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           topicId :: (Prelude.Maybe (Value Prelude.Text))}
mkTopic :: Topic
mkTopic
  = Topic
      {awsAccountId = Prelude.Nothing, dataSets = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       topicId = Prelude.Nothing}
instance ToResourceProperties Topic where
  toResourceProperties Topic {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "DataSets" Prelude.<$> dataSets,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "TopicId" Prelude.<$> topicId])}
instance JSON.ToJSON Topic where
  toJSON Topic {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "DataSets" Prelude.<$> dataSets,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "TopicId" Prelude.<$> topicId]))
instance Property "AwsAccountId" Topic where
  type PropertyType "AwsAccountId" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {awsAccountId = Prelude.pure newValue, ..}
instance Property "DataSets" Topic where
  type PropertyType "DataSets" Topic = [DatasetMetadataProperty]
  set newValue Topic {..}
    = Topic {dataSets = Prelude.pure newValue, ..}
instance Property "Description" Topic where
  type PropertyType "Description" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {description = Prelude.pure newValue, ..}
instance Property "Name" Topic where
  type PropertyType "Name" Topic = Value Prelude.Text
  set newValue Topic {..} = Topic {name = Prelude.pure newValue, ..}
instance Property "TopicId" Topic where
  type PropertyType "TopicId" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {topicId = Prelude.pure newValue, ..}