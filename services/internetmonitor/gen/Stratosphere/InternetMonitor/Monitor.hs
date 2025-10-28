module Stratosphere.InternetMonitor.Monitor (
        module Exports, Monitor(..), mkMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InternetMonitor.Monitor.HealthEventsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.InternetMonitor.Monitor.InternetMeasurementsLogDeliveryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Monitor
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html>
    Monitor {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-healtheventsconfig>
             healthEventsConfig :: (Prelude.Maybe HealthEventsConfigProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-includelinkedaccounts>
             includeLinkedAccounts :: (Prelude.Maybe (Value Prelude.Bool)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-internetmeasurementslogdelivery>
             internetMeasurementsLogDelivery :: (Prelude.Maybe InternetMeasurementsLogDeliveryProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-linkedaccountid>
             linkedAccountId :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-maxcitynetworkstomonitor>
             maxCityNetworksToMonitor :: (Prelude.Maybe (Value Prelude.Integer)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-monitorname>
             monitorName :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-resources>
             resources :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-resourcestoadd>
             resourcesToAdd :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-resourcestoremove>
             resourcesToRemove :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-status>
             status :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-internetmonitor-monitor.html#cfn-internetmonitor-monitor-trafficpercentagetomonitor>
             trafficPercentageToMonitor :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitor :: Value Prelude.Text -> Monitor
mkMonitor monitorName
  = Monitor
      {monitorName = monitorName, healthEventsConfig = Prelude.Nothing,
       includeLinkedAccounts = Prelude.Nothing,
       internetMeasurementsLogDelivery = Prelude.Nothing,
       linkedAccountId = Prelude.Nothing,
       maxCityNetworksToMonitor = Prelude.Nothing,
       resources = Prelude.Nothing, resourcesToAdd = Prelude.Nothing,
       resourcesToRemove = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing,
       trafficPercentageToMonitor = Prelude.Nothing}
instance ToResourceProperties Monitor where
  toResourceProperties Monitor {..}
    = ResourceProperties
        {awsType = "AWS::InternetMonitor::Monitor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MonitorName" JSON..= monitorName]
                           (Prelude.catMaybes
                              [(JSON..=) "HealthEventsConfig" Prelude.<$> healthEventsConfig,
                               (JSON..=) "IncludeLinkedAccounts"
                                 Prelude.<$> includeLinkedAccounts,
                               (JSON..=) "InternetMeasurementsLogDelivery"
                                 Prelude.<$> internetMeasurementsLogDelivery,
                               (JSON..=) "LinkedAccountId" Prelude.<$> linkedAccountId,
                               (JSON..=) "MaxCityNetworksToMonitor"
                                 Prelude.<$> maxCityNetworksToMonitor,
                               (JSON..=) "Resources" Prelude.<$> resources,
                               (JSON..=) "ResourcesToAdd" Prelude.<$> resourcesToAdd,
                               (JSON..=) "ResourcesToRemove" Prelude.<$> resourcesToRemove,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrafficPercentageToMonitor"
                                 Prelude.<$> trafficPercentageToMonitor]))}
instance JSON.ToJSON Monitor where
  toJSON Monitor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MonitorName" JSON..= monitorName]
              (Prelude.catMaybes
                 [(JSON..=) "HealthEventsConfig" Prelude.<$> healthEventsConfig,
                  (JSON..=) "IncludeLinkedAccounts"
                    Prelude.<$> includeLinkedAccounts,
                  (JSON..=) "InternetMeasurementsLogDelivery"
                    Prelude.<$> internetMeasurementsLogDelivery,
                  (JSON..=) "LinkedAccountId" Prelude.<$> linkedAccountId,
                  (JSON..=) "MaxCityNetworksToMonitor"
                    Prelude.<$> maxCityNetworksToMonitor,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "ResourcesToAdd" Prelude.<$> resourcesToAdd,
                  (JSON..=) "ResourcesToRemove" Prelude.<$> resourcesToRemove,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrafficPercentageToMonitor"
                    Prelude.<$> trafficPercentageToMonitor])))
instance Property "HealthEventsConfig" Monitor where
  type PropertyType "HealthEventsConfig" Monitor = HealthEventsConfigProperty
  set newValue Monitor {..}
    = Monitor {healthEventsConfig = Prelude.pure newValue, ..}
instance Property "IncludeLinkedAccounts" Monitor where
  type PropertyType "IncludeLinkedAccounts" Monitor = Value Prelude.Bool
  set newValue Monitor {..}
    = Monitor {includeLinkedAccounts = Prelude.pure newValue, ..}
instance Property "InternetMeasurementsLogDelivery" Monitor where
  type PropertyType "InternetMeasurementsLogDelivery" Monitor = InternetMeasurementsLogDeliveryProperty
  set newValue Monitor {..}
    = Monitor
        {internetMeasurementsLogDelivery = Prelude.pure newValue, ..}
instance Property "LinkedAccountId" Monitor where
  type PropertyType "LinkedAccountId" Monitor = Value Prelude.Text
  set newValue Monitor {..}
    = Monitor {linkedAccountId = Prelude.pure newValue, ..}
instance Property "MaxCityNetworksToMonitor" Monitor where
  type PropertyType "MaxCityNetworksToMonitor" Monitor = Value Prelude.Integer
  set newValue Monitor {..}
    = Monitor {maxCityNetworksToMonitor = Prelude.pure newValue, ..}
instance Property "MonitorName" Monitor where
  type PropertyType "MonitorName" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {monitorName = newValue, ..}
instance Property "Resources" Monitor where
  type PropertyType "Resources" Monitor = ValueList Prelude.Text
  set newValue Monitor {..}
    = Monitor {resources = Prelude.pure newValue, ..}
instance Property "ResourcesToAdd" Monitor where
  type PropertyType "ResourcesToAdd" Monitor = ValueList Prelude.Text
  set newValue Monitor {..}
    = Monitor {resourcesToAdd = Prelude.pure newValue, ..}
instance Property "ResourcesToRemove" Monitor where
  type PropertyType "ResourcesToRemove" Monitor = ValueList Prelude.Text
  set newValue Monitor {..}
    = Monitor {resourcesToRemove = Prelude.pure newValue, ..}
instance Property "Status" Monitor where
  type PropertyType "Status" Monitor = Value Prelude.Text
  set newValue Monitor {..}
    = Monitor {status = Prelude.pure newValue, ..}
instance Property "Tags" Monitor where
  type PropertyType "Tags" Monitor = [Tag]
  set newValue Monitor {..}
    = Monitor {tags = Prelude.pure newValue, ..}
instance Property "TrafficPercentageToMonitor" Monitor where
  type PropertyType "TrafficPercentageToMonitor" Monitor = Value Prelude.Integer
  set newValue Monitor {..}
    = Monitor {trafficPercentageToMonitor = Prelude.pure newValue, ..}