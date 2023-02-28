module Stratosphere.CloudFront.RealtimeLogConfig.KinesisStreamConfigProperty (
        KinesisStreamConfigProperty(..), mkKinesisStreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamConfigProperty
  = KinesisStreamConfigProperty {roleArn :: (Value Prelude.Text),
                                 streamArn :: (Value Prelude.Text)}
mkKinesisStreamConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisStreamConfigProperty
mkKinesisStreamConfigProperty roleArn streamArn
  = KinesisStreamConfigProperty
      {roleArn = roleArn, streamArn = streamArn}
instance ToResourceProperties KinesisStreamConfigProperty where
  toResourceProperties KinesisStreamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::RealtimeLogConfig.KinesisStreamConfig",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn,
                       "StreamArn" JSON..= streamArn]}
instance JSON.ToJSON KinesisStreamConfigProperty where
  toJSON KinesisStreamConfigProperty {..}
    = JSON.object
        ["RoleArn" JSON..= roleArn, "StreamArn" JSON..= streamArn]
instance Property "RoleArn" KinesisStreamConfigProperty where
  type PropertyType "RoleArn" KinesisStreamConfigProperty = Value Prelude.Text
  set newValue KinesisStreamConfigProperty {..}
    = KinesisStreamConfigProperty {roleArn = newValue, ..}
instance Property "StreamArn" KinesisStreamConfigProperty where
  type PropertyType "StreamArn" KinesisStreamConfigProperty = Value Prelude.Text
  set newValue KinesisStreamConfigProperty {..}
    = KinesisStreamConfigProperty {streamArn = newValue, ..}