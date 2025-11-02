module Stratosphere.Cognito.LogDeliveryConfiguration.CloudWatchLogsConfigurationProperty (
        CloudWatchLogsConfigurationProperty(..),
        mkCloudWatchLogsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-cloudwatchlogsconfiguration.html>
    CloudWatchLogsConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-cloudwatchlogsconfiguration.html#cfn-cognito-logdeliveryconfiguration-cloudwatchlogsconfiguration-loggrouparn>
                                         logGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsConfigurationProperty ::
  CloudWatchLogsConfigurationProperty
mkCloudWatchLogsConfigurationProperty
  = CloudWatchLogsConfigurationProperty
      {haddock_workaround_ = (), logGroupArn = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsConfigurationProperty where
  toResourceProperties CloudWatchLogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::LogDeliveryConfiguration.CloudWatchLogsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn])}
instance JSON.ToJSON CloudWatchLogsConfigurationProperty where
  toJSON CloudWatchLogsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn]))
instance Property "LogGroupArn" CloudWatchLogsConfigurationProperty where
  type PropertyType "LogGroupArn" CloudWatchLogsConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLogsConfigurationProperty {..}
    = CloudWatchLogsConfigurationProperty
        {logGroupArn = Prelude.pure newValue, ..}