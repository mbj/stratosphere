module Stratosphere.SNS.TopicPolicy (
        TopicPolicy(..), mkTopicPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicPolicy
  = TopicPolicy {policyDocument :: JSON.Object,
                 topics :: (ValueList (Value Prelude.Text))}
mkTopicPolicy ::
  JSON.Object -> ValueList (Value Prelude.Text) -> TopicPolicy
mkTopicPolicy policyDocument topics
  = TopicPolicy {policyDocument = policyDocument, topics = topics}
instance ToResourceProperties TopicPolicy where
  toResourceProperties TopicPolicy {..}
    = ResourceProperties
        {awsType = "AWS::SNS::TopicPolicy",
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "Topics" JSON..= topics]}
instance JSON.ToJSON TopicPolicy where
  toJSON TopicPolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument, "Topics" JSON..= topics]
instance Property "PolicyDocument" TopicPolicy where
  type PropertyType "PolicyDocument" TopicPolicy = JSON.Object
  set newValue TopicPolicy {..}
    = TopicPolicy {policyDocument = newValue, ..}
instance Property "Topics" TopicPolicy where
  type PropertyType "Topics" TopicPolicy = ValueList (Value Prelude.Text)
  set newValue TopicPolicy {..} = TopicPolicy {topics = newValue, ..}