module Stratosphere.NetworkFirewall.LoggingConfiguration.LogDestinationConfigProperty (
        LogDestinationConfigProperty(..), mkLogDestinationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogDestinationConfigProperty
  = LogDestinationConfigProperty {logDestination :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                                  logDestinationType :: (Value Prelude.Text),
                                  logType :: (Value Prelude.Text)}
mkLogDestinationConfigProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text
     -> Value Prelude.Text -> LogDestinationConfigProperty
mkLogDestinationConfigProperty
  logDestination
  logDestinationType
  logType
  = LogDestinationConfigProperty
      {logDestination = logDestination,
       logDestinationType = logDestinationType, logType = logType}
instance ToResourceProperties LogDestinationConfigProperty where
  toResourceProperties LogDestinationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::LoggingConfiguration.LogDestinationConfig",
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