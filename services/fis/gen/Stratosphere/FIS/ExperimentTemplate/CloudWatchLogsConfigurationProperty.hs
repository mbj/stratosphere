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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-cloudwatchlogsconfiguration.html>
    CloudWatchLogsConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-cloudwatchlogsconfiguration.html#cfn-fis-experimenttemplate-cloudwatchlogsconfiguration-loggrouparn>
                                         logGroupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsConfigurationProperty ::
  Value Prelude.Text -> CloudWatchLogsConfigurationProperty
mkCloudWatchLogsConfigurationProperty logGroupArn
  = CloudWatchLogsConfigurationProperty
      {haddock_workaround_ = (), logGroupArn = logGroupArn}
instance ToResourceProperties CloudWatchLogsConfigurationProperty where
  toResourceProperties CloudWatchLogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.CloudWatchLogsConfiguration",
         supportsTags = Prelude.False,
         properties = ["LogGroupArn" JSON..= logGroupArn]}
instance JSON.ToJSON CloudWatchLogsConfigurationProperty where
  toJSON CloudWatchLogsConfigurationProperty {..}
    = JSON.object ["LogGroupArn" JSON..= logGroupArn]
instance Property "LogGroupArn" CloudWatchLogsConfigurationProperty where
  type PropertyType "LogGroupArn" CloudWatchLogsConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLogsConfigurationProperty {..}
    = CloudWatchLogsConfigurationProperty {logGroupArn = newValue, ..}