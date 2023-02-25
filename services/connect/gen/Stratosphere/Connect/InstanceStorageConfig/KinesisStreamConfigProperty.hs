module Stratosphere.Connect.InstanceStorageConfig.KinesisStreamConfigProperty (
        KinesisStreamConfigProperty(..), mkKinesisStreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamConfigProperty
  = KinesisStreamConfigProperty {streamArn :: (Value Prelude.Text)}
mkKinesisStreamConfigProperty ::
  Value Prelude.Text -> KinesisStreamConfigProperty
mkKinesisStreamConfigProperty streamArn
  = KinesisStreamConfigProperty {streamArn = streamArn}
instance ToResourceProperties KinesisStreamConfigProperty where
  toResourceProperties KinesisStreamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig.KinesisStreamConfig",
         properties = ["StreamArn" JSON..= streamArn]}
instance JSON.ToJSON KinesisStreamConfigProperty where
  toJSON KinesisStreamConfigProperty {..}
    = JSON.object ["StreamArn" JSON..= streamArn]
instance Property "StreamArn" KinesisStreamConfigProperty where
  type PropertyType "StreamArn" KinesisStreamConfigProperty = Value Prelude.Text
  set newValue KinesisStreamConfigProperty {}
    = KinesisStreamConfigProperty {streamArn = newValue, ..}