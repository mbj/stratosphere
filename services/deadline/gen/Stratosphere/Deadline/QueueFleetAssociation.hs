module Stratosphere.Deadline.QueueFleetAssociation (
        QueueFleetAssociation(..), mkQueueFleetAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueFleetAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuefleetassociation.html>
    QueueFleetAssociation {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuefleetassociation.html#cfn-deadline-queuefleetassociation-farmid>
                           farmId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuefleetassociation.html#cfn-deadline-queuefleetassociation-fleetid>
                           fleetId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queuefleetassociation.html#cfn-deadline-queuefleetassociation-queueid>
                           queueId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueueFleetAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> QueueFleetAssociation
mkQueueFleetAssociation farmId fleetId queueId
  = QueueFleetAssociation
      {haddock_workaround_ = (), farmId = farmId, fleetId = fleetId,
       queueId = queueId}
instance ToResourceProperties QueueFleetAssociation where
  toResourceProperties QueueFleetAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::QueueFleetAssociation",
         supportsTags = Prelude.False,
         properties = ["FarmId" JSON..= farmId, "FleetId" JSON..= fleetId,
                       "QueueId" JSON..= queueId]}
instance JSON.ToJSON QueueFleetAssociation where
  toJSON QueueFleetAssociation {..}
    = JSON.object
        ["FarmId" JSON..= farmId, "FleetId" JSON..= fleetId,
         "QueueId" JSON..= queueId]
instance Property "FarmId" QueueFleetAssociation where
  type PropertyType "FarmId" QueueFleetAssociation = Value Prelude.Text
  set newValue QueueFleetAssociation {..}
    = QueueFleetAssociation {farmId = newValue, ..}
instance Property "FleetId" QueueFleetAssociation where
  type PropertyType "FleetId" QueueFleetAssociation = Value Prelude.Text
  set newValue QueueFleetAssociation {..}
    = QueueFleetAssociation {fleetId = newValue, ..}
instance Property "QueueId" QueueFleetAssociation where
  type PropertyType "QueueId" QueueFleetAssociation = Value Prelude.Text
  set newValue QueueFleetAssociation {..}
    = QueueFleetAssociation {queueId = newValue, ..}