module Stratosphere.AppFlow.Flow.ScheduledTriggerPropertiesProperty (
        ScheduledTriggerPropertiesProperty(..),
        mkScheduledTriggerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduledTriggerPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html>
    ScheduledTriggerPropertiesProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-datapullmode>
                                        dataPullMode :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-firstexecutionfrom>
                                        firstExecutionFrom :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-flowerrordeactivationthreshold>
                                        flowErrorDeactivationThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-scheduleendtime>
                                        scheduleEndTime :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-scheduleexpression>
                                        scheduleExpression :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-scheduleoffset>
                                        scheduleOffset :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-schedulestarttime>
                                        scheduleStartTime :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-timezone>
                                        timeZone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledTriggerPropertiesProperty ::
  Value Prelude.Text -> ScheduledTriggerPropertiesProperty
mkScheduledTriggerPropertiesProperty scheduleExpression
  = ScheduledTriggerPropertiesProperty
      {haddock_workaround_ = (), scheduleExpression = scheduleExpression,
       dataPullMode = Prelude.Nothing,
       firstExecutionFrom = Prelude.Nothing,
       flowErrorDeactivationThreshold = Prelude.Nothing,
       scheduleEndTime = Prelude.Nothing,
       scheduleOffset = Prelude.Nothing,
       scheduleStartTime = Prelude.Nothing, timeZone = Prelude.Nothing}
instance ToResourceProperties ScheduledTriggerPropertiesProperty where
  toResourceProperties ScheduledTriggerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ScheduledTriggerProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScheduleExpression" JSON..= scheduleExpression]
                           (Prelude.catMaybes
                              [(JSON..=) "DataPullMode" Prelude.<$> dataPullMode,
                               (JSON..=) "FirstExecutionFrom" Prelude.<$> firstExecutionFrom,
                               (JSON..=) "FlowErrorDeactivationThreshold"
                                 Prelude.<$> flowErrorDeactivationThreshold,
                               (JSON..=) "ScheduleEndTime" Prelude.<$> scheduleEndTime,
                               (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                               (JSON..=) "ScheduleStartTime" Prelude.<$> scheduleStartTime,
                               (JSON..=) "TimeZone" Prelude.<$> timeZone]))}
instance JSON.ToJSON ScheduledTriggerPropertiesProperty where
  toJSON ScheduledTriggerPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScheduleExpression" JSON..= scheduleExpression]
              (Prelude.catMaybes
                 [(JSON..=) "DataPullMode" Prelude.<$> dataPullMode,
                  (JSON..=) "FirstExecutionFrom" Prelude.<$> firstExecutionFrom,
                  (JSON..=) "FlowErrorDeactivationThreshold"
                    Prelude.<$> flowErrorDeactivationThreshold,
                  (JSON..=) "ScheduleEndTime" Prelude.<$> scheduleEndTime,
                  (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                  (JSON..=) "ScheduleStartTime" Prelude.<$> scheduleStartTime,
                  (JSON..=) "TimeZone" Prelude.<$> timeZone])))
instance Property "DataPullMode" ScheduledTriggerPropertiesProperty where
  type PropertyType "DataPullMode" ScheduledTriggerPropertiesProperty = Value Prelude.Text
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {dataPullMode = Prelude.pure newValue, ..}
instance Property "FirstExecutionFrom" ScheduledTriggerPropertiesProperty where
  type PropertyType "FirstExecutionFrom" ScheduledTriggerPropertiesProperty = Value Prelude.Double
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {firstExecutionFrom = Prelude.pure newValue, ..}
instance Property "FlowErrorDeactivationThreshold" ScheduledTriggerPropertiesProperty where
  type PropertyType "FlowErrorDeactivationThreshold" ScheduledTriggerPropertiesProperty = Value Prelude.Integer
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {flowErrorDeactivationThreshold = Prelude.pure newValue, ..}
instance Property "ScheduleEndTime" ScheduledTriggerPropertiesProperty where
  type PropertyType "ScheduleEndTime" ScheduledTriggerPropertiesProperty = Value Prelude.Double
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {scheduleEndTime = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" ScheduledTriggerPropertiesProperty where
  type PropertyType "ScheduleExpression" ScheduledTriggerPropertiesProperty = Value Prelude.Text
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {scheduleExpression = newValue, ..}
instance Property "ScheduleOffset" ScheduledTriggerPropertiesProperty where
  type PropertyType "ScheduleOffset" ScheduledTriggerPropertiesProperty = Value Prelude.Double
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {scheduleOffset = Prelude.pure newValue, ..}
instance Property "ScheduleStartTime" ScheduledTriggerPropertiesProperty where
  type PropertyType "ScheduleStartTime" ScheduledTriggerPropertiesProperty = Value Prelude.Double
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {scheduleStartTime = Prelude.pure newValue, ..}
instance Property "TimeZone" ScheduledTriggerPropertiesProperty where
  type PropertyType "TimeZone" ScheduledTriggerPropertiesProperty = Value Prelude.Text
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {timeZone = Prelude.pure newValue, ..}