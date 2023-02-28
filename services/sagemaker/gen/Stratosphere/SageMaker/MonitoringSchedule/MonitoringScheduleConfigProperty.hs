module Stratosphere.SageMaker.MonitoringSchedule.MonitoringScheduleConfigProperty (
        module Exports, MonitoringScheduleConfigProperty(..),
        mkMonitoringScheduleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringJobDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.ScheduleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringScheduleConfigProperty
  = MonitoringScheduleConfigProperty {monitoringJobDefinition :: (Prelude.Maybe MonitoringJobDefinitionProperty),
                                      monitoringJobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                                      monitoringType :: (Prelude.Maybe (Value Prelude.Text)),
                                      scheduleConfig :: (Prelude.Maybe ScheduleConfigProperty)}
mkMonitoringScheduleConfigProperty ::
  MonitoringScheduleConfigProperty
mkMonitoringScheduleConfigProperty
  = MonitoringScheduleConfigProperty
      {monitoringJobDefinition = Prelude.Nothing,
       monitoringJobDefinitionName = Prelude.Nothing,
       monitoringType = Prelude.Nothing, scheduleConfig = Prelude.Nothing}
instance ToResourceProperties MonitoringScheduleConfigProperty where
  toResourceProperties MonitoringScheduleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.MonitoringScheduleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MonitoringJobDefinition"
                              Prelude.<$> monitoringJobDefinition,
                            (JSON..=) "MonitoringJobDefinitionName"
                              Prelude.<$> monitoringJobDefinitionName,
                            (JSON..=) "MonitoringType" Prelude.<$> monitoringType,
                            (JSON..=) "ScheduleConfig" Prelude.<$> scheduleConfig])}
instance JSON.ToJSON MonitoringScheduleConfigProperty where
  toJSON MonitoringScheduleConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MonitoringJobDefinition"
                 Prelude.<$> monitoringJobDefinition,
               (JSON..=) "MonitoringJobDefinitionName"
                 Prelude.<$> monitoringJobDefinitionName,
               (JSON..=) "MonitoringType" Prelude.<$> monitoringType,
               (JSON..=) "ScheduleConfig" Prelude.<$> scheduleConfig]))
instance Property "MonitoringJobDefinition" MonitoringScheduleConfigProperty where
  type PropertyType "MonitoringJobDefinition" MonitoringScheduleConfigProperty = MonitoringJobDefinitionProperty
  set newValue MonitoringScheduleConfigProperty {..}
    = MonitoringScheduleConfigProperty
        {monitoringJobDefinition = Prelude.pure newValue, ..}
instance Property "MonitoringJobDefinitionName" MonitoringScheduleConfigProperty where
  type PropertyType "MonitoringJobDefinitionName" MonitoringScheduleConfigProperty = Value Prelude.Text
  set newValue MonitoringScheduleConfigProperty {..}
    = MonitoringScheduleConfigProperty
        {monitoringJobDefinitionName = Prelude.pure newValue, ..}
instance Property "MonitoringType" MonitoringScheduleConfigProperty where
  type PropertyType "MonitoringType" MonitoringScheduleConfigProperty = Value Prelude.Text
  set newValue MonitoringScheduleConfigProperty {..}
    = MonitoringScheduleConfigProperty
        {monitoringType = Prelude.pure newValue, ..}
instance Property "ScheduleConfig" MonitoringScheduleConfigProperty where
  type PropertyType "ScheduleConfig" MonitoringScheduleConfigProperty = ScheduleConfigProperty
  set newValue MonitoringScheduleConfigProperty {..}
    = MonitoringScheduleConfigProperty
        {scheduleConfig = Prelude.pure newValue, ..}