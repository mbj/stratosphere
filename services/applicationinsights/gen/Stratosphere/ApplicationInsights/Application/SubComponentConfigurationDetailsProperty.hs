module Stratosphere.ApplicationInsights.Application.SubComponentConfigurationDetailsProperty (
        module Exports, SubComponentConfigurationDetailsProperty(..),
        mkSubComponentConfigurationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.AlarmMetricProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.LogProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.WindowsEventProperty as Exports
import Stratosphere.ResourceProperties
data SubComponentConfigurationDetailsProperty
  = SubComponentConfigurationDetailsProperty {alarmMetrics :: (Prelude.Maybe [AlarmMetricProperty]),
                                              logs :: (Prelude.Maybe [LogProperty]),
                                              windowsEvents :: (Prelude.Maybe [WindowsEventProperty])}
mkSubComponentConfigurationDetailsProperty ::
  SubComponentConfigurationDetailsProperty
mkSubComponentConfigurationDetailsProperty
  = SubComponentConfigurationDetailsProperty
      {alarmMetrics = Prelude.Nothing, logs = Prelude.Nothing,
       windowsEvents = Prelude.Nothing}
instance ToResourceProperties SubComponentConfigurationDetailsProperty where
  toResourceProperties SubComponentConfigurationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.SubComponentConfigurationDetails",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlarmMetrics" Prelude.<$> alarmMetrics,
                            (JSON..=) "Logs" Prelude.<$> logs,
                            (JSON..=) "WindowsEvents" Prelude.<$> windowsEvents])}
instance JSON.ToJSON SubComponentConfigurationDetailsProperty where
  toJSON SubComponentConfigurationDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlarmMetrics" Prelude.<$> alarmMetrics,
               (JSON..=) "Logs" Prelude.<$> logs,
               (JSON..=) "WindowsEvents" Prelude.<$> windowsEvents]))
instance Property "AlarmMetrics" SubComponentConfigurationDetailsProperty where
  type PropertyType "AlarmMetrics" SubComponentConfigurationDetailsProperty = [AlarmMetricProperty]
  set newValue SubComponentConfigurationDetailsProperty {..}
    = SubComponentConfigurationDetailsProperty
        {alarmMetrics = Prelude.pure newValue, ..}
instance Property "Logs" SubComponentConfigurationDetailsProperty where
  type PropertyType "Logs" SubComponentConfigurationDetailsProperty = [LogProperty]
  set newValue SubComponentConfigurationDetailsProperty {..}
    = SubComponentConfigurationDetailsProperty
        {logs = Prelude.pure newValue, ..}
instance Property "WindowsEvents" SubComponentConfigurationDetailsProperty where
  type PropertyType "WindowsEvents" SubComponentConfigurationDetailsProperty = [WindowsEventProperty]
  set newValue SubComponentConfigurationDetailsProperty {..}
    = SubComponentConfigurationDetailsProperty
        {windowsEvents = Prelude.pure newValue, ..}