module Stratosphere.CloudFront.RealtimeLogConfig.EndPointProperty (
        module Exports, EndPointProperty(..), mkEndPointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.RealtimeLogConfig.KinesisStreamConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndPointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-endpoint.html>
    EndPointProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-endpoint.html#cfn-cloudfront-realtimelogconfig-endpoint-kinesisstreamconfig>
                      kinesisStreamConfig :: KinesisStreamConfigProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-endpoint.html#cfn-cloudfront-realtimelogconfig-endpoint-streamtype>
                      streamType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndPointProperty ::
  KinesisStreamConfigProperty
  -> Value Prelude.Text -> EndPointProperty
mkEndPointProperty kinesisStreamConfig streamType
  = EndPointProperty
      {haddock_workaround_ = (),
       kinesisStreamConfig = kinesisStreamConfig, streamType = streamType}
instance ToResourceProperties EndPointProperty where
  toResourceProperties EndPointProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::RealtimeLogConfig.EndPoint",
         supportsTags = Prelude.False,
         properties = ["KinesisStreamConfig" JSON..= kinesisStreamConfig,
                       "StreamType" JSON..= streamType]}
instance JSON.ToJSON EndPointProperty where
  toJSON EndPointProperty {..}
    = JSON.object
        ["KinesisStreamConfig" JSON..= kinesisStreamConfig,
         "StreamType" JSON..= streamType]
instance Property "KinesisStreamConfig" EndPointProperty where
  type PropertyType "KinesisStreamConfig" EndPointProperty = KinesisStreamConfigProperty
  set newValue EndPointProperty {..}
    = EndPointProperty {kinesisStreamConfig = newValue, ..}
instance Property "StreamType" EndPointProperty where
  type PropertyType "StreamType" EndPointProperty = Value Prelude.Text
  set newValue EndPointProperty {..}
    = EndPointProperty {streamType = newValue, ..}