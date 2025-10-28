module Stratosphere.SES.ContactList.TopicProperty (
        TopicProperty(..), mkTopicProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-contactlist-topic.html>
    TopicProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-contactlist-topic.html#cfn-ses-contactlist-topic-defaultsubscriptionstatus>
                   defaultSubscriptionStatus :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-contactlist-topic.html#cfn-ses-contactlist-topic-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-contactlist-topic.html#cfn-ses-contactlist-topic-displayname>
                   displayName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-contactlist-topic.html#cfn-ses-contactlist-topic-topicname>
                   topicName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> TopicProperty
mkTopicProperty defaultSubscriptionStatus displayName topicName
  = TopicProperty
      {haddock_workaround_ = (),
       defaultSubscriptionStatus = defaultSubscriptionStatus,
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