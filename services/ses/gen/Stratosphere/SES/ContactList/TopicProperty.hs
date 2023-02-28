module Stratosphere.SES.ContactList.TopicProperty (
        TopicProperty(..), mkTopicProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicProperty
  = TopicProperty {defaultSubscriptionStatus :: (Value Prelude.Text),
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   displayName :: (Value Prelude.Text),
                   topicName :: (Value Prelude.Text)}
mkTopicProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> TopicProperty
mkTopicProperty defaultSubscriptionStatus displayName topicName
  = TopicProperty
      {defaultSubscriptionStatus = defaultSubscriptionStatus,
       displayName = displayName, topicName = topicName,
       description = Prelude.Nothing}
instance ToResourceProperties TopicProperty where
  toResourceProperties TopicProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ContactList.Topic",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultSubscriptionStatus" JSON..= defaultSubscriptionStatus,
                            "DisplayName" JSON..= displayName, "TopicName" JSON..= topicName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON TopicProperty where
  toJSON TopicProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultSubscriptionStatus" JSON..= defaultSubscriptionStatus,
               "DisplayName" JSON..= displayName, "TopicName" JSON..= topicName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "DefaultSubscriptionStatus" TopicProperty where
  type PropertyType "DefaultSubscriptionStatus" TopicProperty = Value Prelude.Text
  set newValue TopicProperty {..}
    = TopicProperty {defaultSubscriptionStatus = newValue, ..}
instance Property "Description" TopicProperty where
  type PropertyType "Description" TopicProperty = Value Prelude.Text
  set newValue TopicProperty {..}
    = TopicProperty {description = Prelude.pure newValue, ..}
instance Property "DisplayName" TopicProperty where
  type PropertyType "DisplayName" TopicProperty = Value Prelude.Text
  set newValue TopicProperty {..}
    = TopicProperty {displayName = newValue, ..}
instance Property "TopicName" TopicProperty where
  type PropertyType "TopicName" TopicProperty = Value Prelude.Text
  set newValue TopicProperty {..}
    = TopicProperty {topicName = newValue, ..}