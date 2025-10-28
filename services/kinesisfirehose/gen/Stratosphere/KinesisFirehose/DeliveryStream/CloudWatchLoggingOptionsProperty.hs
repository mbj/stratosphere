module Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty (
        CloudWatchLoggingOptionsProperty(..),
        mkCloudWatchLoggingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLoggingOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html>
    CloudWatchLoggingOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-enabled>
                                      enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-loggroupname>
                                      logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-logstreamname>
                                      logStreamName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLoggingOptionsProperty ::
  CloudWatchLoggingOptionsProperty
mkCloudWatchLoggingOptionsProperty
  = CloudWatchLoggingOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       logGroupName = Prelude.Nothing, logStreamName = Prelude.Nothing}
instance ToResourceProperties CloudWatchLoggingOptionsProperty where
  toResourceProperties CloudWatchLoggingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.CloudWatchLoggingOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                            (JSON..=) "LogStreamName" Prelude.<$> logStreamName])}
instance JSON.ToJSON CloudWatchLoggingOptionsProperty where
  toJSON CloudWatchLoggingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
               (JSON..=) "LogStreamName" Prelude.<$> logStreamName]))
instance Property "Enabled" CloudWatchLoggingOptionsProperty where
  type PropertyType "Enabled" CloudWatchLoggingOptionsProperty = Value Prelude.Bool
  set newValue CloudWatchLoggingOptionsProperty {..}
    = CloudWatchLoggingOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "LogGroupName" CloudWatchLoggingOptionsProperty where
  type PropertyType "LogGroupName" CloudWatchLoggingOptionsProperty = Value Prelude.Text
  set newValue CloudWatchLoggingOptionsProperty {..}
    = CloudWatchLoggingOptionsProperty
        {logGroupName = Prelude.pure newValue, ..}
instance Property "LogStreamName" CloudWatchLoggingOptionsProperty where
  type PropertyType "LogStreamName" CloudWatchLoggingOptionsProperty = Value Prelude.Text
  set newValue CloudWatchLoggingOptionsProperty {..}
    = CloudWatchLoggingOptionsProperty
        {logStreamName = Prelude.pure newValue, ..}