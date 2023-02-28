module Stratosphere.IoT.TopicRule.KinesisActionProperty (
        KinesisActionProperty(..), mkKinesisActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisActionProperty
  = KinesisActionProperty {partitionKey :: (Prelude.Maybe (Value Prelude.Text)),
                           roleArn :: (Value Prelude.Text),
                           streamName :: (Value Prelude.Text)}
mkKinesisActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> KinesisActionProperty
mkKinesisActionProperty roleArn streamName
  = KinesisActionProperty
      {roleArn = roleArn, streamName = streamName,
       partitionKey = Prelude.Nothing}
instance ToResourceProperties KinesisActionProperty where
  toResourceProperties KinesisActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.KinesisAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "StreamName" JSON..= streamName]
                           (Prelude.catMaybes
                              [(JSON..=) "PartitionKey" Prelude.<$> partitionKey]))}
instance JSON.ToJSON KinesisActionProperty where
  toJSON KinesisActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "StreamName" JSON..= streamName]
              (Prelude.catMaybes
                 [(JSON..=) "PartitionKey" Prelude.<$> partitionKey])))
instance Property "PartitionKey" KinesisActionProperty where
  type PropertyType "PartitionKey" KinesisActionProperty = Value Prelude.Text
  set newValue KinesisActionProperty {..}
    = KinesisActionProperty {partitionKey = Prelude.pure newValue, ..}
instance Property "RoleArn" KinesisActionProperty where
  type PropertyType "RoleArn" KinesisActionProperty = Value Prelude.Text
  set newValue KinesisActionProperty {..}
    = KinesisActionProperty {roleArn = newValue, ..}
instance Property "StreamName" KinesisActionProperty where
  type PropertyType "StreamName" KinesisActionProperty = Value Prelude.Text
  set newValue KinesisActionProperty {..}
    = KinesisActionProperty {streamName = newValue, ..}