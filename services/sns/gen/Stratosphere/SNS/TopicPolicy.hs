module Stratosphere.SNS.TopicPolicy (
        TopicPolicy(..), mkTopicPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-topicpolicy.html>
    TopicPolicy {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-topicpolicy.html#cfn-sns-topicpolicy-policydocument>
                 policyDocument :: JSON.Object,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-topicpolicy.html#cfn-sns-topicpolicy-topics>
                 topics :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicPolicy ::
  JSON.Object -> ValueList Prelude.Text -> TopicPolicy
mkTopicPolicy policyDocument topics
  = TopicPolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       topics = topics}
instance ToResourceProperties TopicPolicy where
  toResourceProperties TopicPolicy {..}
    = ResourceProperties
        {awsType = "AWS::SNS::TopicPolicy", supportsTags = Prelude.False,
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
  type PropertyType "Topics" TopicPolicy = ValueList Prelude.Text
  set newValue TopicPolicy {..} = TopicPolicy {topics = newValue, ..}