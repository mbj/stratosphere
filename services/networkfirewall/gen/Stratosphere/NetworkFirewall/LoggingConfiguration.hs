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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-loggingconfiguration.html>
    LoggingConfiguration {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-loggingconfiguration.html#cfn-networkfirewall-loggingconfiguration-enablemonitoringdashboard>
                          enableMonitoringDashboard :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-loggingconfiguration.html#cfn-networkfirewall-loggingconfiguration-firewallarn>
                          firewallArn :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-loggingconfiguration.html#cfn-networkfirewall-loggingconfiguration-firewallname>
                          firewallName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-loggingconfiguration.html#cfn-networkfirewall-loggingconfiguration-loggingconfiguration>
                          loggingConfiguration :: LoggingConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfiguration ::
  Value Prelude.Text
  -> LoggingConfigurationProperty -> LoggingConfiguration
mkLoggingConfiguration firewallArn loggingConfiguration
  = LoggingConfiguration
      {haddock_workaround_ = (), firewallArn = firewallArn,
       loggingConfiguration = loggingConfiguration,
       enableMonitoringDashboard = Prelude.Nothing,
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
                              [(JSON..=) "EnableMonitoringDashboard"
                                 Prelude.<$> enableMonitoringDashboard,
                               (JSON..=) "FirewallName" Prelude.<$> firewallName]))}
instance JSON.ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirewallArn" JSON..= firewallArn,
               "LoggingConfiguration" JSON..= loggingConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "EnableMonitoringDashboard"
                    Prelude.<$> enableMonitoringDashboard,
                  (JSON..=) "FirewallName" Prelude.<$> firewallName])))
instance Property "EnableMonitoringDashboard" LoggingConfiguration where
  type PropertyType "EnableMonitoringDashboard" LoggingConfiguration = Value Prelude.Bool
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration
        {enableMonitoringDashboard = Prelude.pure newValue, ..}
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