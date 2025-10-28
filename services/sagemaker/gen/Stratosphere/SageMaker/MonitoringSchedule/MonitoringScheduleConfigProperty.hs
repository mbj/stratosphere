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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html>
    MonitoringScheduleConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig-monitoringjobdefinition>
                                      monitoringJobDefinition :: (Prelude.Maybe MonitoringJobDefinitionProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig-monitoringjobdefinitionname>
                                      monitoringJobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig-monitoringtype>
                                      monitoringType :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig-scheduleconfig>
                                      scheduleConfig :: (Prelude.Maybe ScheduleConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringScheduleConfigProperty ::
  MonitoringScheduleConfigProperty
mkMonitoringScheduleConfigProperty
  = MonitoringScheduleConfigProperty
      {haddock_workaround_ = (),
       monitoringJobDefinition = Prelude.Nothing,
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