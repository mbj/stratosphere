module Stratosphere.SMSVOICE.ConfigurationSet.CloudWatchLogsDestinationProperty (
        CloudWatchLogsDestinationProperty(..),
        mkCloudWatchLogsDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-cloudwatchlogsdestination.html>
    CloudWatchLogsDestinationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-cloudwatchlogsdestination.html#cfn-smsvoice-configurationset-cloudwatchlogsdestination-iamrolearn>
                                       iamRoleArn :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-cloudwatchlogsdestination.html#cfn-smsvoice-configurationset-cloudwatchlogsdestination-loggrouparn>
                                       logGroupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CloudWatchLogsDestinationProperty
mkCloudWatchLogsDestinationProperty iamRoleArn logGroupArn
  = CloudWatchLogsDestinationProperty
      {haddock_workaround_ = (), iamRoleArn = iamRoleArn,
       logGroupArn = logGroupArn}
instance ToResourceProperties CloudWatchLogsDestinationProperty where
  toResourceProperties CloudWatchLogsDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ConfigurationSet.CloudWatchLogsDestination",
         supportsTags = Prelude.False,
         properties = ["IamRoleArn" JSON..= iamRoleArn,
                       "LogGroupArn" JSON..= logGroupArn]}
instance JSON.ToJSON CloudWatchLogsDestinationProperty where
  toJSON CloudWatchLogsDestinationProperty {..}
    = JSON.object
        ["IamRoleArn" JSON..= iamRoleArn,
         "LogGroupArn" JSON..= logGroupArn]
instance Property "IamRoleArn" CloudWatchLogsDestinationProperty where
  type PropertyType "IamRoleArn" CloudWatchLogsDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogsDestinationProperty {..}
    = CloudWatchLogsDestinationProperty {iamRoleArn = newValue, ..}
instance Property "LogGroupArn" CloudWatchLogsDestinationProperty where
  type PropertyType "LogGroupArn" CloudWatchLogsDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogsDestinationProperty {..}
    = CloudWatchLogsDestinationProperty {logGroupArn = newValue, ..}