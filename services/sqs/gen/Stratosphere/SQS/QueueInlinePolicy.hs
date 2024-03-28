module Stratosphere.SQS.QueueInlinePolicy (
        QueueInlinePolicy(..), mkQueueInlinePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueInlinePolicy
  = QueueInlinePolicy {policyDocument :: JSON.Object,
                       queue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueueInlinePolicy ::
  JSON.Object -> Value Prelude.Text -> QueueInlinePolicy
mkQueueInlinePolicy policyDocument queue
  = QueueInlinePolicy
      {policyDocument = policyDocument, queue = queue}
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