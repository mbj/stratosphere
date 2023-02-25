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
  = PipeTargetKinesisStreamParametersProperty {partitionKey :: (Value Prelude.Text)}
mkPipeTargetKinesisStreamParametersProperty ::
  Value Prelude.Text -> PipeTargetKinesisStreamParametersProperty
mkPipeTargetKinesisStreamParametersProperty partitionKey
  = PipeTargetKinesisStreamParametersProperty
      {partitionKey = partitionKey}
instance ToResourceProperties PipeTargetKinesisStreamParametersProperty where
  toResourceProperties PipeTargetKinesisStreamParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetKinesisStreamParameters",
         properties = ["PartitionKey" JSON..= partitionKey]}
instance JSON.ToJSON PipeTargetKinesisStreamParametersProperty where
  toJSON PipeTargetKinesisStreamParametersProperty {..}
    = JSON.object ["PartitionKey" JSON..= partitionKey]
instance Property "PartitionKey" PipeTargetKinesisStreamParametersProperty where
  type PropertyType "PartitionKey" PipeTargetKinesisStreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetKinesisStreamParametersProperty {}
    = PipeTargetKinesisStreamParametersProperty
        {partitionKey = newValue, ..}