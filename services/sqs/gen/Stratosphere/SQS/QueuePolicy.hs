module Stratosphere.SQS.QueuePolicy (
        QueuePolicy(..), mkQueuePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueuePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sqs-queuepolicy.html>
    QueuePolicy {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sqs-queuepolicy.html#cfn-sqs-queuepolicy-policydocument>
                 policyDocument :: JSON.Object,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sqs-queuepolicy.html#cfn-sqs-queuepolicy-queues>
                 queues :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueuePolicy ::
  JSON.Object -> ValueList Prelude.Text -> QueuePolicy
mkQueuePolicy policyDocument queues
  = QueuePolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       queues = queues}
instance ToResourceProperties QueuePolicy where
  toResourceProperties QueuePolicy {..}
    = ResourceProperties
        {awsType = "AWS::SQS::QueuePolicy", supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "Queues" JSON..= queues]}
instance JSON.ToJSON QueuePolicy where
  toJSON QueuePolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument, "Queues" JSON..= queues]
instance Property "PolicyDocument" QueuePolicy where
  type PropertyType "PolicyDocument" QueuePolicy = JSON.Object
  set newValue QueuePolicy {..}
    = QueuePolicy {policyDocument = newValue, ..}
instance Property "Queues" QueuePolicy where
  type PropertyType "Queues" QueuePolicy = ValueList Prelude.Text
  set newValue QueuePolicy {..} = QueuePolicy {queues = newValue, ..}