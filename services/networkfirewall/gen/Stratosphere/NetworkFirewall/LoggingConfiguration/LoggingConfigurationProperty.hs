module Stratosphere.NetworkFirewall.LoggingConfiguration.LoggingConfigurationProperty (
        module Exports, LoggingConfigurationProperty(..),
        mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.LoggingConfiguration.LogDestinationConfigProperty as Exports
import Stratosphere.ResourceProperties
data LoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-loggingconfiguration.html>
    LoggingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-loggingconfiguration.html#cfn-networkfirewall-loggingconfiguration-loggingconfiguration-logdestinationconfigs>
                                  logDestinationConfigs :: [LogDestinationConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigurationProperty ::
  [LogDestinationConfigProperty] -> LoggingConfigurationProperty
mkLoggingConfigurationProperty logDestinationConfigs
  = LoggingConfigurationProperty
      {haddock_workaround_ = (),
       logDestinationConfigs = logDestinationConfigs}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::LoggingConfiguration.LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = ["LogDestinationConfigs"
                         JSON..= logDestinationConfigs]}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        ["LogDestinationConfigs" JSON..= logDestinationConfigs]
instance Property "LogDestinationConfigs" LoggingConfigurationProperty where
  type PropertyType "LogDestinationConfigs" LoggingConfigurationProperty = [LogDestinationConfigProperty]
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {logDestinationConfigs = newValue, ..}