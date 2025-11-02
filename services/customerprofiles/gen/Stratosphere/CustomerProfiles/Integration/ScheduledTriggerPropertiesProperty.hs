module Stratosphere.CustomerProfiles.Integration.ScheduledTriggerPropertiesProperty (
        ScheduledTriggerPropertiesProperty(..),
        mkScheduledTriggerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduledTriggerPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html>
    ScheduledTriggerPropertiesProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-datapullmode>
                                        dataPullMode :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-firstexecutionfrom>
                                        firstExecutionFrom :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-scheduleendtime>
                                        scheduleEndTime :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-scheduleexpression>
                                        scheduleExpression :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-scheduleoffset>
                                        scheduleOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-schedulestarttime>
                                        scheduleStartTime :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-scheduledtriggerproperties.html#cfn-customerprofiles-integration-scheduledtriggerproperties-timezone>
                                        timezone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledTriggerPropertiesProperty ::
  Value Prelude.Text -> ScheduledTriggerPropertiesProperty
mkScheduledTriggerPropertiesProperty scheduleExpression
  = ScheduledTriggerPropertiesProperty
      {haddock_workaround_ = (), scheduleExpression = scheduleExpression,
       dataPullMode = Prelude.Nothing,
       firstExecutionFrom = Prelude.Nothing,
       scheduleEndTime = Prelude.Nothing,
       scheduleOffset = Prelude.Nothing,
       scheduleStartTime = Prelude.Nothing, timezone = Prelude.Nothing}
instance ToResourceProperties ScheduledTriggerPropertiesProperty where
  toResourceProperties ScheduledTriggerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.ScheduledTriggerProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScheduleExpression" JSON..= scheduleExpression]
                           (Prelude.catMaybes
                              [(JSON..=) "DataPullMode" Prelude.<$> dataPullMode,
                               (JSON..=) "FirstExecutionFrom" Prelude.<$> firstExecutionFrom,
                               (JSON..=) "ScheduleEndTime" Prelude.<$> scheduleEndTime,
                               (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                               (JSON..=) "ScheduleStartTime" Prelude.<$> scheduleStartTime,
                               (JSON..=) "Timezone" Prelude.<$> timezone]))}
instance JSON.ToJSON ScheduledTriggerPropertiesProperty where
  toJSON ScheduledTriggerPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScheduleExpression" JSON..= scheduleExpression]
              (Prelude.catMaybes
                 [(JSON..=) "DataPullMode" Prelude.<$> dataPullMode,
                  (JSON..=) "FirstExecutionFrom" Prelude.<$> firstExecutionFrom,
                  (JSON..=) "ScheduleEndTime" Prelude.<$> scheduleEndTime,
                  (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                  (JSON..=) "ScheduleStartTime" Prelude.<$> scheduleStartTime,
                  (JSON..=) "Timezone" Prelude.<$> timezone])))
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
  type PropertyType "ScheduleOffset" ScheduledTriggerPropertiesProperty = Value Prelude.Integer
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {scheduleOffset = Prelude.pure newValue, ..}
instance Property "ScheduleStartTime" ScheduledTriggerPropertiesProperty where
  type PropertyType "ScheduleStartTime" ScheduledTriggerPropertiesProperty = Value Prelude.Double
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {scheduleStartTime = Prelude.pure newValue, ..}
instance Property "Timezone" ScheduledTriggerPropertiesProperty where
  type PropertyType "Timezone" ScheduledTriggerPropertiesProperty = Value Prelude.Text
  set newValue ScheduledTriggerPropertiesProperty {..}
    = ScheduledTriggerPropertiesProperty
        {timezone = Prelude.pure newValue, ..}