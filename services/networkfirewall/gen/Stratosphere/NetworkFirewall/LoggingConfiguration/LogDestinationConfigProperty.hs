module Stratosphere.NetworkFirewall.LoggingConfiguration.LogDestinationConfigProperty (
        LogDestinationConfigProperty(..), mkLogDestinationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogDestinationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html>
    LogDestinationConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html#cfn-networkfirewall-loggingconfiguration-logdestinationconfig-logdestination>
                                  logDestination :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html#cfn-networkfirewall-loggingconfiguration-logdestinationconfig-logdestinationtype>
                                  logDestinationType :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html#cfn-networkfirewall-loggingconfiguration-logdestinationconfig-logtype>
                                  logType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDestinationConfigProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text
     -> Value Prelude.Text -> LogDestinationConfigProperty
mkLogDestinationConfigProperty
  logDestination
  logDestinationType
  logType
  = LogDestinationConfigProperty
      {haddock_workaround_ = (), logDestination = logDestination,
       logDestinationType = logDestinationType, logType = logType}
instance ToResourceProperties LogDestinationConfigProperty where
  toResourceProperties LogDestinationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::LoggingConfiguration.LogDestinationConfig",
         supportsTags = Prelude.False,
         properties = ["LogDestination" JSON..= logDestination,
                       "LogDestinationType" JSON..= logDestinationType,
                       "LogType" JSON..= logType]}
instance JSON.ToJSON LogDestinationConfigProperty where
  toJSON LogDestinationConfigProperty {..}
    = JSON.object
        ["LogDestination" JSON..= logDestination,
         "LogDestinationType" JSON..= logDestinationType,
         "LogType" JSON..= logType]
instance Property "LogDestination" LogDestinationConfigProperty where
  type PropertyType "LogDestination" LogDestinationConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LogDestinationConfigProperty {..}
    = LogDestinationConfigProperty {logDestination = newValue, ..}
instance Property "LogDestinationType" LogDestinationConfigProperty where
  type PropertyType "LogDestinationType" LogDestinationConfigProperty = Value Prelude.Text
  set newValue LogDestinationConfigProperty {..}
    = LogDestinationConfigProperty {logDestinationType = newValue, ..}
instance Property "LogType" LogDestinationConfigProperty where
  type PropertyType "LogType" LogDestinationConfigProperty = Value Prelude.Text
  set newValue LogDestinationConfigProperty {..}
    = LogDestinationConfigProperty {logType = newValue, ..}