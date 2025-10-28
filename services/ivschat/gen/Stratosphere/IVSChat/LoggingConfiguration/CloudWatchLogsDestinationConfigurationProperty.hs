module Stratosphere.IVSChat.LoggingConfiguration.CloudWatchLogsDestinationConfigurationProperty (
        CloudWatchLogsDestinationConfigurationProperty(..),
        mkCloudWatchLogsDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsDestinationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-loggingconfiguration-cloudwatchlogsdestinationconfiguration.html>
    CloudWatchLogsDestinationConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-loggingconfiguration-cloudwatchlogsdestinationconfiguration.html#cfn-ivschat-loggingconfiguration-cloudwatchlogsdestinationconfiguration-loggroupname>
                                                    logGroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsDestinationConfigurationProperty ::
  Value Prelude.Text
  -> CloudWatchLogsDestinationConfigurationProperty
mkCloudWatchLogsDestinationConfigurationProperty logGroupName
  = CloudWatchLogsDestinationConfigurationProperty
      {haddock_workaround_ = (), logGroupName = logGroupName}
instance ToResourceProperties CloudWatchLogsDestinationConfigurationProperty where
  toResourceProperties
    CloudWatchLogsDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::LoggingConfiguration.CloudWatchLogsDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = ["LogGroupName" JSON..= logGroupName]}
instance JSON.ToJSON CloudWatchLogsDestinationConfigurationProperty where
  toJSON CloudWatchLogsDestinationConfigurationProperty {..}
    = JSON.object ["LogGroupName" JSON..= logGroupName]
instance Property "LogGroupName" CloudWatchLogsDestinationConfigurationProperty where
  type PropertyType "LogGroupName" CloudWatchLogsDestinationConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLogsDestinationConfigurationProperty {..}
    = CloudWatchLogsDestinationConfigurationProperty
        {logGroupName = newValue, ..}