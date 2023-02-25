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
  = CloudWatchLoggingOptionProperty {logStreamARN :: (Value Prelude.Text)}
mkCloudWatchLoggingOptionProperty ::
  Value Prelude.Text -> CloudWatchLoggingOptionProperty
mkCloudWatchLoggingOptionProperty logStreamARN
  = CloudWatchLoggingOptionProperty {logStreamARN = logStreamARN}
instance ToResourceProperties CloudWatchLoggingOptionProperty where
  toResourceProperties CloudWatchLoggingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption.CloudWatchLoggingOption",
         properties = ["LogStreamARN" JSON..= logStreamARN]}
instance JSON.ToJSON CloudWatchLoggingOptionProperty where
  toJSON CloudWatchLoggingOptionProperty {..}
    = JSON.object ["LogStreamARN" JSON..= logStreamARN]
instance Property "LogStreamARN" CloudWatchLoggingOptionProperty where
  type PropertyType "LogStreamARN" CloudWatchLoggingOptionProperty = Value Prelude.Text
  set newValue CloudWatchLoggingOptionProperty {}
    = CloudWatchLoggingOptionProperty {logStreamARN = newValue, ..}