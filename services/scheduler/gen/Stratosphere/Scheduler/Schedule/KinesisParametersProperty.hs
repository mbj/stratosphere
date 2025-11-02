module Stratosphere.Scheduler.Schedule.KinesisParametersProperty (
        KinesisParametersProperty(..), mkKinesisParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-kinesisparameters.html>
    KinesisParametersProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-kinesisparameters.html#cfn-scheduler-schedule-kinesisparameters-partitionkey>
                               partitionKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisParametersProperty ::
  Value Prelude.Text -> KinesisParametersProperty
mkKinesisParametersProperty partitionKey
  = KinesisParametersProperty
      {haddock_workaround_ = (), partitionKey = partitionKey}
instance ToResourceProperties KinesisParametersProperty where
  toResourceProperties KinesisParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.KinesisParameters",
         supportsTags = Prelude.False,
         properties = ["PartitionKey" JSON..= partitionKey]}
instance JSON.ToJSON KinesisParametersProperty where
  toJSON KinesisParametersProperty {..}
    = JSON.object ["PartitionKey" JSON..= partitionKey]
instance Property "PartitionKey" KinesisParametersProperty where
  type PropertyType "PartitionKey" KinesisParametersProperty = Value Prelude.Text
  set newValue KinesisParametersProperty {..}
    = KinesisParametersProperty {partitionKey = newValue, ..}