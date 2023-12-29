module Stratosphere.S3.Bucket.TopicConfigurationProperty (
        module Exports, TopicConfigurationProperty(..),
        mkTopicConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.NotificationFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicConfigurationProperty
  = TopicConfigurationProperty {event :: (Value Prelude.Text),
                                filter :: (Prelude.Maybe NotificationFilterProperty),
                                topic :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TopicConfigurationProperty
mkTopicConfigurationProperty event topic
  = TopicConfigurationProperty
      {event = event, topic = topic, filter = Prelude.Nothing}
instance ToResourceProperties TopicConfigurationProperty where
  toResourceProperties TopicConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.TopicConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Event" JSON..= event, "Topic" JSON..= topic]
                           (Prelude.catMaybes [(JSON..=) "Filter" Prelude.<$> filter]))}
instance JSON.ToJSON TopicConfigurationProperty where
  toJSON TopicConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Event" JSON..= event, "Topic" JSON..= topic]
              (Prelude.catMaybes [(JSON..=) "Filter" Prelude.<$> filter])))
instance Property "Event" TopicConfigurationProperty where
  type PropertyType "Event" TopicConfigurationProperty = Value Prelude.Text
  set newValue TopicConfigurationProperty {..}
    = TopicConfigurationProperty {event = newValue, ..}
instance Property "Filter" TopicConfigurationProperty where
  type PropertyType "Filter" TopicConfigurationProperty = NotificationFilterProperty
  set newValue TopicConfigurationProperty {..}
    = TopicConfigurationProperty {filter = Prelude.pure newValue, ..}
instance Property "Topic" TopicConfigurationProperty where
  type PropertyType "Topic" TopicConfigurationProperty = Value Prelude.Text
  set newValue TopicConfigurationProperty {..}
    = TopicConfigurationProperty {topic = newValue, ..}