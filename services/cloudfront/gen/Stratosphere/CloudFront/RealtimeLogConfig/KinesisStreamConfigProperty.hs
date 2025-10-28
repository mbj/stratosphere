module Stratosphere.CloudFront.RealtimeLogConfig.KinesisStreamConfigProperty (
        KinesisStreamConfigProperty(..), mkKinesisStreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-kinesisstreamconfig.html>
    KinesisStreamConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-kinesisstreamconfig.html#cfn-cloudfront-realtimelogconfig-kinesisstreamconfig-rolearn>
                                 roleArn :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-kinesisstreamconfig.html#cfn-cloudfront-realtimelogconfig-kinesisstreamconfig-streamarn>
                                 streamArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisStreamConfigProperty
mkKinesisStreamConfigProperty roleArn streamArn
  = KinesisStreamConfigProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       streamArn = streamArn}
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