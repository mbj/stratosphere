module Stratosphere.NetworkFirewall.LoggingConfiguration.LoggingConfigurationProperty (
        module Exports, LoggingConfigurationProperty(..),
        mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.LoggingConfiguration.LogDestinationConfigProperty as Exports
import Stratosphere.ResourceProperties
data LoggingConfigurationProperty
  = LoggingConfigurationProperty {logDestinationConfigs :: [LogDestinationConfigProperty]}
mkLoggingConfigurationProperty ::
  [LogDestinationConfigProperty] -> LoggingConfigurationProperty
mkLoggingConfigurationProperty logDestinationConfigs
  = LoggingConfigurationProperty
      {logDestinationConfigs = logDestinationConfigs}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::LoggingConfiguration.LoggingConfiguration",
         properties = ["LogDestinationConfigs"
                         JSON..= logDestinationConfigs]}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        ["LogDestinationConfigs" JSON..= logDestinationConfigs]
instance Property "LogDestinationConfigs" LoggingConfigurationProperty where
  type PropertyType "LogDestinationConfigs" LoggingConfigurationProperty = [LogDestinationConfigProperty]
  set newValue LoggingConfigurationProperty {}
    = LoggingConfigurationProperty
        {logDestinationConfigs = newValue, ..}