module Stratosphere.RUM.AppMonitor (
        module Exports, AppMonitor(..), mkAppMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.AppMonitorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.CustomEventsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AppMonitor
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html>
    AppMonitor {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-appmonitorconfiguration>
                appMonitorConfiguration :: (Prelude.Maybe AppMonitorConfigurationProperty),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-customevents>
                customEvents :: (Prelude.Maybe CustomEventsProperty),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-cwlogenabled>
                cwLogEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-domain>
                domain :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-name>
                name :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rum-appmonitor.html#cfn-rum-appmonitor-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppMonitor ::
  Value Prelude.Text -> Value Prelude.Text -> AppMonitor
mkAppMonitor domain name
  = AppMonitor
      {domain = domain, name = name,
       appMonitorConfiguration = Prelude.Nothing,
       customEvents = Prelude.Nothing, cwLogEnabled = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AppMonitor where
  toResourceProperties AppMonitor {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Domain" JSON..= domain, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AppMonitorConfiguration"
                                 Prelude.<$> appMonitorConfiguration,
                               (JSON..=) "CustomEvents" Prelude.<$> customEvents,
                               (JSON..=) "CwLogEnabled" Prelude.<$> cwLogEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AppMonitor where
  toJSON AppMonitor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Domain" JSON..= domain, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AppMonitorConfiguration"
                    Prelude.<$> appMonitorConfiguration,
                  (JSON..=) "CustomEvents" Prelude.<$> customEvents,
                  (JSON..=) "CwLogEnabled" Prelude.<$> cwLogEnabled,
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
instance Property "Domain" AppMonitor where
  type PropertyType "Domain" AppMonitor = Value Prelude.Text
  set newValue AppMonitor {..} = AppMonitor {domain = newValue, ..}
instance Property "Name" AppMonitor where
  type PropertyType "Name" AppMonitor = Value Prelude.Text
  set newValue AppMonitor {..} = AppMonitor {name = newValue, ..}
instance Property "Tags" AppMonitor where
  type PropertyType "Tags" AppMonitor = [Tag]
  set newValue AppMonitor {..}
    = AppMonitor {tags = Prelude.pure newValue, ..}