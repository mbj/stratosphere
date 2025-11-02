module Stratosphere.ECS.PrimaryTaskSet (
        PrimaryTaskSet(..), mkPrimaryTaskSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrimaryTaskSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html>
    PrimaryTaskSet {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-cluster>
                    cluster :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-service>
                    service :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-tasksetid>
                    taskSetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrimaryTaskSet ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PrimaryTaskSet
mkPrimaryTaskSet cluster service taskSetId
  = PrimaryTaskSet
      {haddock_workaround_ = (), cluster = cluster, service = service,
       taskSetId = taskSetId}
instance ToResourceProperties PrimaryTaskSet where
  toResourceProperties PrimaryTaskSet {..}
    = ResourceProperties
        {awsType = "AWS::ECS::PrimaryTaskSet",
         supportsTags = Prelude.False,
         properties = ["Cluster" JSON..= cluster, "Service" JSON..= service,
                       "TaskSetId" JSON..= taskSetId]}
instance JSON.ToJSON PrimaryTaskSet where
  toJSON PrimaryTaskSet {..}
    = JSON.object
        ["Cluster" JSON..= cluster, "Service" JSON..= service,
         "TaskSetId" JSON..= taskSetId]
instance Property "Cluster" PrimaryTaskSet where
  type PropertyType "Cluster" PrimaryTaskSet = Value Prelude.Text
  set newValue PrimaryTaskSet {..}
    = PrimaryTaskSet {cluster = newValue, ..}
instance Property "Service" PrimaryTaskSet where
  type PropertyType "Service" PrimaryTaskSet = Value Prelude.Text
  set newValue PrimaryTaskSet {..}
    = PrimaryTaskSet {service = newValue, ..}
instance Property "TaskSetId" PrimaryTaskSet where
  type PropertyType "TaskSetId" PrimaryTaskSet = Value Prelude.Text
  set newValue PrimaryTaskSet {..}
    = PrimaryTaskSet {taskSetId = newValue, ..}