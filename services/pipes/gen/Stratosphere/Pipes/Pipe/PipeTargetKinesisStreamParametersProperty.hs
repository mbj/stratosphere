module Stratosphere.Pipes.Pipe.PipeTargetKinesisStreamParametersProperty (
        PipeTargetKinesisStreamParametersProperty(..),
        mkPipeTargetKinesisStreamParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetKinesisStreamParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetkinesisstreamparameters.html>
    PipeTargetKinesisStreamParametersProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetkinesisstreamparameters.html#cfn-pipes-pipe-pipetargetkinesisstreamparameters-partitionkey>
                                               partitionKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetKinesisStreamParametersProperty ::
  Value Prelude.Text -> PipeTargetKinesisStreamParametersProperty
mkPipeTargetKinesisStreamParametersProperty partitionKey
  = PipeTargetKinesisStreamParametersProperty
      {haddock_workaround_ = (), partitionKey = partitionKey}
instance ToResourceProperties PipeTargetKinesisStreamParametersProperty where
  toResourceProperties PipeTargetKinesisStreamParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetKinesisStreamParameters",
         supportsTags = Prelude.False,
         properties = ["PartitionKey" JSON..= partitionKey]}
instance JSON.ToJSON PipeTargetKinesisStreamParametersProperty where
  toJSON PipeTargetKinesisStreamParametersProperty {..}
    = JSON.object ["PartitionKey" JSON..= partitionKey]
instance Property "PartitionKey" PipeTargetKinesisStreamParametersProperty where
  type PropertyType "PartitionKey" PipeTargetKinesisStreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetKinesisStreamParametersProperty {..}
    = PipeTargetKinesisStreamParametersProperty
        {partitionKey = newValue, ..}