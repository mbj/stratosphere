module Stratosphere.Route53.HostedZone.QueryLoggingConfigProperty (
        QueryLoggingConfigProperty(..), mkQueryLoggingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryLoggingConfigProperty
  = QueryLoggingConfigProperty {cloudWatchLogsLogGroupArn :: (Value Prelude.Text)}
mkQueryLoggingConfigProperty ::
  Value Prelude.Text -> QueryLoggingConfigProperty
mkQueryLoggingConfigProperty cloudWatchLogsLogGroupArn
  = QueryLoggingConfigProperty
      {cloudWatchLogsLogGroupArn = cloudWatchLogsLogGroupArn}
instance ToResourceProperties QueryLoggingConfigProperty where
  toResourceProperties QueryLoggingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone.QueryLoggingConfig",
         supportsTags = Prelude.False,
         properties = ["CloudWatchLogsLogGroupArn"
                         JSON..= cloudWatchLogsLogGroupArn]}
instance JSON.ToJSON QueryLoggingConfigProperty where
  toJSON QueryLoggingConfigProperty {..}
    = JSON.object
        ["CloudWatchLogsLogGroupArn" JSON..= cloudWatchLogsLogGroupArn]
instance Property "CloudWatchLogsLogGroupArn" QueryLoggingConfigProperty where
  type PropertyType "CloudWatchLogsLogGroupArn" QueryLoggingConfigProperty = Value Prelude.Text
  set newValue QueryLoggingConfigProperty {}
    = QueryLoggingConfigProperty
        {cloudWatchLogsLogGroupArn = newValue, ..}