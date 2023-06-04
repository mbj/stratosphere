module Stratosphere.InternetMonitor.Monitor (
        module Exports, Monitor(..), mkMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InternetMonitor.Monitor.InternetMeasurementsLogDeliveryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Monitor
  = Monitor {internetMeasurementsLogDelivery :: (Prelude.Maybe InternetMeasurementsLogDeliveryProperty),
             maxCityNetworksToMonitor :: (Prelude.Maybe (Value Prelude.Integer)),
             monitorName :: (Value Prelude.Text),
             resources :: (Prelude.Maybe (ValueList Prelude.Text)),
             resourcesToAdd :: (Prelude.Maybe (ValueList Prelude.Text)),
             resourcesToRemove :: (Prelude.Maybe (ValueList Prelude.Text)),
             status :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag]),
             trafficPercentageToMonitor :: (Prelude.Maybe (Value Prelude.Integer))}
mkMonitor :: Value Prelude.Text -> Monitor
mkMonitor monitorName
  = Monitor
      {monitorName = monitorName,
       internetMeasurementsLogDelivery = Prelude.Nothing,
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
                              [(JSON..=) "InternetMeasurementsLogDelivery"
                                 Prelude.<$> internetMeasurementsLogDelivery,
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
                 [(JSON..=) "InternetMeasurementsLogDelivery"
                    Prelude.<$> internetMeasurementsLogDelivery,
                  (JSON..=) "MaxCityNetworksToMonitor"
                    Prelude.<$> maxCityNetworksToMonitor,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "ResourcesToAdd" Prelude.<$> resourcesToAdd,
                  (JSON..=) "ResourcesToRemove" Prelude.<$> resourcesToRemove,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrafficPercentageToMonitor"
                    Prelude.<$> trafficPercentageToMonitor])))
instance Property "InternetMeasurementsLogDelivery" Monitor where
  type PropertyType "InternetMeasurementsLogDelivery" Monitor = InternetMeasurementsLogDeliveryProperty
  set newValue Monitor {..}
    = Monitor
        {internetMeasurementsLogDelivery = Prelude.pure newValue, ..}
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