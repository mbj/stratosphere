module Stratosphere.NetworkFirewall.LoggingConfiguration (
        module Exports, LoggingConfiguration(..), mkLoggingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.LoggingConfiguration.LoggingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfiguration
  = LoggingConfiguration {firewallArn :: (Value Prelude.Text),
                          firewallName :: (Prelude.Maybe (Value Prelude.Text)),
                          loggingConfiguration :: LoggingConfigurationProperty}
mkLoggingConfiguration ::
  Value Prelude.Text
  -> LoggingConfigurationProperty -> LoggingConfiguration
mkLoggingConfiguration firewallArn loggingConfiguration
  = LoggingConfiguration
      {firewallArn = firewallArn,
       loggingConfiguration = loggingConfiguration,
       firewallName = Prelude.Nothing}
instance ToResourceProperties LoggingConfiguration where
  toResourceProperties LoggingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirewallArn" JSON..= firewallArn,
                            "LoggingConfiguration" JSON..= loggingConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "FirewallName" Prelude.<$> firewallName]))}
instance JSON.ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirewallArn" JSON..= firewallArn,
               "LoggingConfiguration" JSON..= loggingConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "FirewallName" Prelude.<$> firewallName])))
instance Property "FirewallArn" LoggingConfiguration where
  type PropertyType "FirewallArn" LoggingConfiguration = Value Prelude.Text
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {firewallArn = newValue, ..}
instance Property "FirewallName" LoggingConfiguration where
  type PropertyType "FirewallName" LoggingConfiguration = Value Prelude.Text
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {firewallName = Prelude.pure newValue, ..}
instance Property "LoggingConfiguration" LoggingConfiguration where
  type PropertyType "LoggingConfiguration" LoggingConfiguration = LoggingConfigurationProperty
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {loggingConfiguration = newValue, ..}