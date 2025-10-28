module Stratosphere.AppSync.Api.EventLogConfigProperty (
        EventLogConfigProperty(..), mkEventLogConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventLogConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-eventlogconfig.html>
    EventLogConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-eventlogconfig.html#cfn-appsync-api-eventlogconfig-cloudwatchlogsrolearn>
                            cloudWatchLogsRoleArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-eventlogconfig.html#cfn-appsync-api-eventlogconfig-loglevel>
                            logLevel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventLogConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EventLogConfigProperty
mkEventLogConfigProperty cloudWatchLogsRoleArn logLevel
  = EventLogConfigProperty
      {haddock_workaround_ = (),
       cloudWatchLogsRoleArn = cloudWatchLogsRoleArn, logLevel = logLevel}
instance ToResourceProperties EventLogConfigProperty where
  toResourceProperties EventLogConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.EventLogConfig",
         supportsTags = Prelude.False,
         properties = ["CloudWatchLogsRoleArn"
                         JSON..= cloudWatchLogsRoleArn,
                       "LogLevel" JSON..= logLevel]}
instance JSON.ToJSON EventLogConfigProperty where
  toJSON EventLogConfigProperty {..}
    = JSON.object
        ["CloudWatchLogsRoleArn" JSON..= cloudWatchLogsRoleArn,
         "LogLevel" JSON..= logLevel]
instance Property "CloudWatchLogsRoleArn" EventLogConfigProperty where
  type PropertyType "CloudWatchLogsRoleArn" EventLogConfigProperty = Value Prelude.Text
  set newValue EventLogConfigProperty {..}
    = EventLogConfigProperty {cloudWatchLogsRoleArn = newValue, ..}
instance Property "LogLevel" EventLogConfigProperty where
  type PropertyType "LogLevel" EventLogConfigProperty = Value Prelude.Text
  set newValue EventLogConfigProperty {..}
    = EventLogConfigProperty {logLevel = newValue, ..}