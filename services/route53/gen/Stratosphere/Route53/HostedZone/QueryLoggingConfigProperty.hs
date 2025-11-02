module Stratosphere.Route53.HostedZone.QueryLoggingConfigProperty (
        QueryLoggingConfigProperty(..), mkQueryLoggingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryLoggingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html>
    QueryLoggingConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html#cfn-route53-hostedzone-queryloggingconfig-cloudwatchlogsloggrouparn>
                                cloudWatchLogsLogGroupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryLoggingConfigProperty ::
  Value Prelude.Text -> QueryLoggingConfigProperty
mkQueryLoggingConfigProperty cloudWatchLogsLogGroupArn
  = QueryLoggingConfigProperty
      {haddock_workaround_ = (),
       cloudWatchLogsLogGroupArn = cloudWatchLogsLogGroupArn}
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
  set newValue QueryLoggingConfigProperty {..}
    = QueryLoggingConfigProperty
        {cloudWatchLogsLogGroupArn = newValue, ..}