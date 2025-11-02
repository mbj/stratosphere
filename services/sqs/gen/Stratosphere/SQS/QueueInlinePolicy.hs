module Stratosphere.SQS.QueueInlinePolicy (
        QueueInlinePolicy(..), mkQueueInlinePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueInlinePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sqs-queueinlinepolicy.html>
    QueueInlinePolicy {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sqs-queueinlinepolicy.html#cfn-sqs-queueinlinepolicy-policydocument>
                       policyDocument :: JSON.Object,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sqs-queueinlinepolicy.html#cfn-sqs-queueinlinepolicy-queue>
                       queue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueueInlinePolicy ::
  JSON.Object -> Value Prelude.Text -> QueueInlinePolicy
mkQueueInlinePolicy policyDocument queue
  = QueueInlinePolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       queue = queue}
instance ToResourceProperties QueueInlinePolicy where
  toResourceProperties QueueInlinePolicy {..}
    = ResourceProperties
        {awsType = "AWS::SQS::QueueInlinePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "Queue" JSON..= queue]}
instance JSON.ToJSON QueueInlinePolicy where
  toJSON QueueInlinePolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument, "Queue" JSON..= queue]
instance Property "PolicyDocument" QueueInlinePolicy where
  type PropertyType "PolicyDocument" QueueInlinePolicy = JSON.Object
  set newValue QueueInlinePolicy {..}
    = QueueInlinePolicy {policyDocument = newValue, ..}
instance Property "Queue" QueueInlinePolicy where
  type PropertyType "Queue" QueueInlinePolicy = Value Prelude.Text
  set newValue QueueInlinePolicy {..}
    = QueueInlinePolicy {queue = newValue, ..}