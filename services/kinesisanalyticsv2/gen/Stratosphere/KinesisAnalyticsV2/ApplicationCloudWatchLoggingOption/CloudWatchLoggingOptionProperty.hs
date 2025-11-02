module Stratosphere.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption.CloudWatchLoggingOptionProperty (
        CloudWatchLoggingOptionProperty(..),
        mkCloudWatchLoggingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLoggingOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html>
    CloudWatchLoggingOptionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption-logstreamarn>
                                     logStreamARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLoggingOptionProperty ::
  Value Prelude.Text -> CloudWatchLoggingOptionProperty
mkCloudWatchLoggingOptionProperty logStreamARN
  = CloudWatchLoggingOptionProperty
      {haddock_workaround_ = (), logStreamARN = logStreamARN}
instance ToResourceProperties CloudWatchLoggingOptionProperty where
  toResourceProperties CloudWatchLoggingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption.CloudWatchLoggingOption",
         supportsTags = Prelude.False,
         properties = ["LogStreamARN" JSON..= logStreamARN]}
instance JSON.ToJSON CloudWatchLoggingOptionProperty where
  toJSON CloudWatchLoggingOptionProperty {..}
    = JSON.object ["LogStreamARN" JSON..= logStreamARN]
instance Property "LogStreamARN" CloudWatchLoggingOptionProperty where
  type PropertyType "LogStreamARN" CloudWatchLoggingOptionProperty = Value Prelude.Text
  set newValue CloudWatchLoggingOptionProperty {..}
    = CloudWatchLoggingOptionProperty {logStreamARN = newValue, ..}