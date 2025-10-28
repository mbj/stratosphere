module Stratosphere.APS.Workspace.LoggingConfigurationProperty (
        LoggingConfigurationProperty(..), mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingconfiguration.html>
    LoggingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingconfiguration.html#cfn-aps-workspace-loggingconfiguration-loggrouparn>
                                  logGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {haddock_workaround_ = (), logGroupArn = Prelude.Nothing}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn])}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn]))
instance Property "LogGroupArn" LoggingConfigurationProperty where
  type PropertyType "LogGroupArn" LoggingConfigurationProperty = Value Prelude.Text
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {logGroupArn = Prelude.pure newValue, ..}