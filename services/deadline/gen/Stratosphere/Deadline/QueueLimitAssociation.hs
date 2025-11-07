module Stratosphere.Deadline.QueueLimitAssociation (
        QueueLimitAssociation(..), mkQueueLimitAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueLimitAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuelimitassociation.html>
    QueueLimitAssociation {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuelimitassociation.html#cfn-deadline-queuelimitassociation-farmid>
                           farmId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuelimitassociation.html#cfn-deadline-queuelimitassociation-limitid>
                           limitId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuelimitassociation.html#cfn-deadline-queuelimitassociation-queueid>
                           queueId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueueLimitAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> QueueLimitAssociation
mkQueueLimitAssociation farmId limitId queueId
  = QueueLimitAssociation
      {haddock_workaround_ = (), farmId = farmId, limitId = limitId,
       queueId = queueId}
instance ToResourceProperties QueueLimitAssociation where
  toResourceProperties QueueLimitAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::QueueLimitAssociation",
         supportsTags = Prelude.False,
         properties = ["FarmId" JSON..= farmId, "LimitId" JSON..= limitId,
                       "QueueId" JSON..= queueId]}
instance JSON.ToJSON QueueLimitAssociation where
  toJSON QueueLimitAssociation {..}
    = JSON.object
        ["FarmId" JSON..= farmId, "LimitId" JSON..= limitId,
         "QueueId" JSON..= queueId]
instance Property "FarmId" QueueLimitAssociation where
  type PropertyType "FarmId" QueueLimitAssociation = Value Prelude.Text
  set newValue QueueLimitAssociation {..}
    = QueueLimitAssociation {farmId = newValue, ..}
instance Property "LimitId" QueueLimitAssociation where
  type PropertyType "LimitId" QueueLimitAssociation = Value Prelude.Text
  set newValue QueueLimitAssociation {..}
    = QueueLimitAssociation {limitId = newValue, ..}
instance Property "QueueId" QueueLimitAssociation where
  type PropertyType "QueueId" QueueLimitAssociation = Value Prelude.Text
  set newValue QueueLimitAssociation {..}
    = QueueLimitAssociation {queueId = newValue, ..}