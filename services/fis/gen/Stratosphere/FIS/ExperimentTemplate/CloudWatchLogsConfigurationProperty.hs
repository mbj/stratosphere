module Stratosphere.FIS.ExperimentTemplate.CloudWatchLogsConfigurationProperty (
        CloudWatchLogsConfigurationProperty(..),
        mkCloudWatchLogsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsConfigurationProperty
  = CloudWatchLogsConfigurationProperty {logGroupArn :: (Value Prelude.Text)}
mkCloudWatchLogsConfigurationProperty ::
  Value Prelude.Text -> CloudWatchLogsConfigurationProperty
mkCloudWatchLogsConfigurationProperty logGroupArn
  = CloudWatchLogsConfigurationProperty {logGroupArn = logGroupArn}
instance ToResourceProperties CloudWatchLogsConfigurationProperty where
  toResourceProperties CloudWatchLogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.CloudWatchLogsConfiguration",
         properties = ["LogGroupArn" JSON..= logGroupArn]}
instance JSON.ToJSON CloudWatchLogsConfigurationProperty where
  toJSON CloudWatchLogsConfigurationProperty {..}
    = JSON.object ["LogGroupArn" JSON..= logGroupArn]
instance Property "LogGroupArn" CloudWatchLogsConfigurationProperty where
  type PropertyType "LogGroupArn" CloudWatchLogsConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLogsConfigurationProperty {}
    = CloudWatchLogsConfigurationProperty {logGroupArn = newValue, ..}