module Stratosphere.RUM.AppMonitor (
        module Exports, AppMonitor(..), mkAppMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.AppMonitorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.CustomEventsProperty as Exports
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.DeobfuscationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.ResourcePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AppMonitor
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html>
    AppMonitor {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-appmonitorconfiguration>
                appMonitorConfiguration :: (Prelude.Maybe AppMonitorConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-customevents>
                customEvents :: (Prelude.Maybe CustomEventsProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-cwlogenabled>
                cwLogEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-deobfuscationconfiguration>
                deobfuscationConfiguration :: (Prelude.Maybe DeobfuscationConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-domain>
                domain :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-domainlist>
                domainList :: (Prelude.Maybe (ValueList Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-resourcepolicy>
                resourcePolicy :: (Prelude.Maybe ResourcePolicyProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppMonitor :: Value Prelude.Text -> AppMonitor
mkAppMonitor name
  = AppMonitor
      {haddock_workaround_ = (), name = name,
       appMonitorConfiguration = Prelude.Nothing,
       customEvents = Prelude.Nothing, cwLogEnabled = Prelude.Nothing,
       deobfuscationConfiguration = Prelude.Nothing,
       domain = Prelude.Nothing, domainList = Prelude.Nothing,
       resourcePolicy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AppMonitor where
  toResourceProperties AppMonitor {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AppMonitorConfiguration"
                                 Prelude.<$> appMonitorConfiguration,
                               (JSON..=) "CustomEvents" Prelude.<$> customEvents,
                               (JSON..=) "CwLogEnabled" Prelude.<$> cwLogEnabled,
                               (JSON..=) "DeobfuscationConfiguration"
                                 Prelude.<$> deobfuscationConfiguration,
                               (JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "DomainList" Prelude.<$> domainList,
                               (JSON..=) "ResourcePolicy" Prelude.<$> resourcePolicy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AppMonitor where
  toJSON AppMonitor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AppMonitorConfiguration"
                    Prelude.<$> appMonitorConfiguration,
                  (JSON..=) "CustomEvents" Prelude.<$> customEvents,
                  (JSON..=) "CwLogEnabled" Prelude.<$> cwLogEnabled,
                  (JSON..=) "DeobfuscationConfiguration"
                    Prelude.<$> deobfuscationConfiguration,
                  (JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "DomainList" Prelude.<$> domainList,
                  (JSON..=) "ResourcePolicy" Prelude.<$> resourcePolicy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppMonitorConfiguration" AppMonitor where
  type PropertyType "AppMonitorConfiguration" AppMonitor = AppMonitorConfigurationProperty
  set newValue AppMonitor {..}
    = AppMonitor {appMonitorConfiguration = Prelude.pure newValue, ..}
instance Property "CustomEvents" AppMonitor where
  type PropertyType "CustomEvents" AppMonitor = CustomEventsProperty
  set newValue AppMonitor {..}
    = AppMonitor {customEvents = Prelude.pure newValue, ..}
instance Property "CwLogEnabled" AppMonitor where
  type PropertyType "CwLogEnabled" AppMonitor = Value Prelude.Bool
  set newValue AppMonitor {..}
    = AppMonitor {cwLogEnabled = Prelude.pure newValue, ..}
instance Property "DeobfuscationConfiguration" AppMonitor where
  type PropertyType "DeobfuscationConfiguration" AppMonitor = DeobfuscationConfigurationProperty
  set newValue AppMonitor {..}
    = AppMonitor
        {deobfuscationConfiguration = Prelude.pure newValue, ..}
instance Property "Domain" AppMonitor where
  type PropertyType "Domain" AppMonitor = Value Prelude.Text
  set newValue AppMonitor {..}
    = AppMonitor {domain = Prelude.pure newValue, ..}
instance Property "DomainList" AppMonitor where
  type PropertyType "DomainList" AppMonitor = ValueList Prelude.Text
  set newValue AppMonitor {..}
    = AppMonitor {domainList = Prelude.pure newValue, ..}
instance Property "Name" AppMonitor where
  type PropertyType "Name" AppMonitor = Value Prelude.Text
  set newValue AppMonitor {..} = AppMonitor {name = newValue, ..}
instance Property "ResourcePolicy" AppMonitor where
  type PropertyType "ResourcePolicy" AppMonitor = ResourcePolicyProperty
  set newValue AppMonitor {..}
    = AppMonitor {resourcePolicy = Prelude.pure newValue, ..}
instance Property "Tags" AppMonitor where
  type PropertyType "Tags" AppMonitor = [Tag]
  set newValue AppMonitor {..}
    = AppMonitor {tags = Prelude.pure newValue, ..}