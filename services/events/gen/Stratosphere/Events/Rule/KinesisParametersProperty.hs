module Stratosphere.Events.Rule.KinesisParametersProperty (
        KinesisParametersProperty(..), mkKinesisParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisParametersProperty
  = KinesisParametersProperty {partitionKeyPath :: (Value Prelude.Text)}
mkKinesisParametersProperty ::
  Value Prelude.Text -> KinesisParametersProperty
mkKinesisParametersProperty partitionKeyPath
  = KinesisParametersProperty {partitionKeyPath = partitionKeyPath}
instance ToResourceProperties KinesisParametersProperty where
  toResourceProperties KinesisParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.KinesisParameters",
         supportsTags = Prelude.False,
         properties = ["PartitionKeyPath" JSON..= partitionKeyPath]}
instance JSON.ToJSON KinesisParametersProperty where
  toJSON KinesisParametersProperty {..}
    = JSON.object ["PartitionKeyPath" JSON..= partitionKeyPath]
instance Property "PartitionKeyPath" KinesisParametersProperty where
  type PropertyType "PartitionKeyPath" KinesisParametersProperty = Value Prelude.Text
  set newValue KinesisParametersProperty {}
    = KinesisParametersProperty {partitionKeyPath = newValue, ..}