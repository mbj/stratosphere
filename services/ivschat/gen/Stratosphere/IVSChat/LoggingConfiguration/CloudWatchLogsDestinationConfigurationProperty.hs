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
  = CloudWatchLogsDestinationConfigurationProperty {logGroupName :: (Value Prelude.Text)}
mkCloudWatchLogsDestinationConfigurationProperty ::
  Value Prelude.Text
  -> CloudWatchLogsDestinationConfigurationProperty
mkCloudWatchLogsDestinationConfigurationProperty logGroupName
  = CloudWatchLogsDestinationConfigurationProperty
      {logGroupName = logGroupName}
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
  set newValue CloudWatchLogsDestinationConfigurationProperty {}
    = CloudWatchLogsDestinationConfigurationProperty
        {logGroupName = newValue, ..}