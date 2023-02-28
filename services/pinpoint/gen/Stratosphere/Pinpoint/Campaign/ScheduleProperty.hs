module Stratosphere.Pinpoint.Campaign.ScheduleProperty (
        module Exports, ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CampaignEventFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.QuietTimeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = ScheduleProperty {endTime :: (Prelude.Maybe (Value Prelude.Text)),
                      eventFilter :: (Prelude.Maybe CampaignEventFilterProperty),
                      frequency :: (Prelude.Maybe (Value Prelude.Text)),
                      isLocalTime :: (Prelude.Maybe (Value Prelude.Bool)),
                      quietTime :: (Prelude.Maybe QuietTimeProperty),
                      startTime :: (Prelude.Maybe (Value Prelude.Text)),
                      timeZone :: (Prelude.Maybe (Value Prelude.Text))}
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty
      {endTime = Prelude.Nothing, eventFilter = Prelude.Nothing,
       frequency = Prelude.Nothing, isLocalTime = Prelude.Nothing,
       quietTime = Prelude.Nothing, startTime = Prelude.Nothing,
       timeZone = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndTime" Prelude.<$> endTime,
                            (JSON..=) "EventFilter" Prelude.<$> eventFilter,
                            (JSON..=) "Frequency" Prelude.<$> frequency,
                            (JSON..=) "IsLocalTime" Prelude.<$> isLocalTime,
                            (JSON..=) "QuietTime" Prelude.<$> quietTime,
                            (JSON..=) "StartTime" Prelude.<$> startTime,
                            (JSON..=) "TimeZone" Prelude.<$> timeZone])}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndTime" Prelude.<$> endTime,
               (JSON..=) "EventFilter" Prelude.<$> eventFilter,
               (JSON..=) "Frequency" Prelude.<$> frequency,
               (JSON..=) "IsLocalTime" Prelude.<$> isLocalTime,
               (JSON..=) "QuietTime" Prelude.<$> quietTime,
               (JSON..=) "StartTime" Prelude.<$> startTime,
               (JSON..=) "TimeZone" Prelude.<$> timeZone]))
instance Property "EndTime" ScheduleProperty where
  type PropertyType "EndTime" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {endTime = Prelude.pure newValue, ..}
instance Property "EventFilter" ScheduleProperty where
  type PropertyType "EventFilter" ScheduleProperty = CampaignEventFilterProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {eventFilter = Prelude.pure newValue, ..}
instance Property "Frequency" ScheduleProperty where
  type PropertyType "Frequency" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {frequency = Prelude.pure newValue, ..}
instance Property "IsLocalTime" ScheduleProperty where
  type PropertyType "IsLocalTime" ScheduleProperty = Value Prelude.Bool
  set newValue ScheduleProperty {..}
    = ScheduleProperty {isLocalTime = Prelude.pure newValue, ..}
instance Property "QuietTime" ScheduleProperty where
  type PropertyType "QuietTime" ScheduleProperty = QuietTimeProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {quietTime = Prelude.pure newValue, ..}
instance Property "StartTime" ScheduleProperty where
  type PropertyType "StartTime" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {startTime = Prelude.pure newValue, ..}
instance Property "TimeZone" ScheduleProperty where
  type PropertyType "TimeZone" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {timeZone = Prelude.pure newValue, ..}