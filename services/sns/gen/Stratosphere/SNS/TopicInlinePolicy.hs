module Stratosphere.SNS.TopicInlinePolicy (
        TopicInlinePolicy(..), mkTopicInlinePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicInlinePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-topicinlinepolicy.html>
    TopicInlinePolicy {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-topicinlinepolicy.html#cfn-sns-topicinlinepolicy-policydocument>
                       policyDocument :: JSON.Object,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-topicinlinepolicy.html#cfn-sns-topicinlinepolicy-topicarn>
                       topicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicInlinePolicy ::
  JSON.Object -> Value Prelude.Text -> TopicInlinePolicy
mkTopicInlinePolicy policyDocument topicArn
  = TopicInlinePolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       topicArn = topicArn}
instance ToResourceProperties TopicInlinePolicy where
  toResourceProperties TopicInlinePolicy {..}
    = ResourceProperties
        {awsType = "AWS::SNS::TopicInlinePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "TopicArn" JSON..= topicArn]}
instance JSON.ToJSON TopicInlinePolicy where
  toJSON TopicInlinePolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument,
         "TopicArn" JSON..= topicArn]
instance Property "PolicyDocument" TopicInlinePolicy where
  type PropertyType "PolicyDocument" TopicInlinePolicy = JSON.Object
  set newValue TopicInlinePolicy {..}
    = TopicInlinePolicy {policyDocument = newValue, ..}
instance Property "TopicArn" TopicInlinePolicy where
  type PropertyType "TopicArn" TopicInlinePolicy = Value Prelude.Text
  set newValue TopicInlinePolicy {..}
    = TopicInlinePolicy {topicArn = newValue, ..}