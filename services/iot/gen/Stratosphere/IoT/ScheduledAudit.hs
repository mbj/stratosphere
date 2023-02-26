module Stratosphere.IoT.ScheduledAudit (
        ScheduledAudit(..), mkScheduledAudit
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ScheduledAudit
  = ScheduledAudit {dayOfMonth :: (Prelude.Maybe (Value Prelude.Text)),
                    dayOfWeek :: (Prelude.Maybe (Value Prelude.Text)),
                    frequency :: (Value Prelude.Text),
                    scheduledAuditName :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag]),
                    targetCheckNames :: (ValueList Prelude.Text)}
mkScheduledAudit ::
  Value Prelude.Text -> ValueList Prelude.Text -> ScheduledAudit
mkScheduledAudit frequency targetCheckNames
  = ScheduledAudit
      {frequency = frequency, targetCheckNames = targetCheckNames,
       dayOfMonth = Prelude.Nothing, dayOfWeek = Prelude.Nothing,
       scheduledAuditName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ScheduledAudit where
  toResourceProperties ScheduledAudit {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ScheduledAudit",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Frequency" JSON..= frequency,
                            "TargetCheckNames" JSON..= targetCheckNames]
                           (Prelude.catMaybes
                              [(JSON..=) "DayOfMonth" Prelude.<$> dayOfMonth,
                               (JSON..=) "DayOfWeek" Prelude.<$> dayOfWeek,
                               (JSON..=) "ScheduledAuditName" Prelude.<$> scheduledAuditName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ScheduledAudit where
  toJSON ScheduledAudit {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Frequency" JSON..= frequency,
               "TargetCheckNames" JSON..= targetCheckNames]
              (Prelude.catMaybes
                 [(JSON..=) "DayOfMonth" Prelude.<$> dayOfMonth,
                  (JSON..=) "DayOfWeek" Prelude.<$> dayOfWeek,
                  (JSON..=) "ScheduledAuditName" Prelude.<$> scheduledAuditName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DayOfMonth" ScheduledAudit where
  type PropertyType "DayOfMonth" ScheduledAudit = Value Prelude.Text
  set newValue ScheduledAudit {..}
    = ScheduledAudit {dayOfMonth = Prelude.pure newValue, ..}
instance Property "DayOfWeek" ScheduledAudit where
  type PropertyType "DayOfWeek" ScheduledAudit = Value Prelude.Text
  set newValue ScheduledAudit {..}
    = ScheduledAudit {dayOfWeek = Prelude.pure newValue, ..}
instance Property "Frequency" ScheduledAudit where
  type PropertyType "Frequency" ScheduledAudit = Value Prelude.Text
  set newValue ScheduledAudit {..}
    = ScheduledAudit {frequency = newValue, ..}
instance Property "ScheduledAuditName" ScheduledAudit where
  type PropertyType "ScheduledAuditName" ScheduledAudit = Value Prelude.Text
  set newValue ScheduledAudit {..}
    = ScheduledAudit {scheduledAuditName = Prelude.pure newValue, ..}
instance Property "Tags" ScheduledAudit where
  type PropertyType "Tags" ScheduledAudit = [Tag]
  set newValue ScheduledAudit {..}
    = ScheduledAudit {tags = Prelude.pure newValue, ..}
instance Property "TargetCheckNames" ScheduledAudit where
  type PropertyType "TargetCheckNames" ScheduledAudit = ValueList Prelude.Text
  set newValue ScheduledAudit {..}
    = ScheduledAudit {targetCheckNames = newValue, ..}