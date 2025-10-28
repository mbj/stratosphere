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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-endtime>
                      endTime :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-eventfilter>
                      eventFilter :: (Prelude.Maybe CampaignEventFilterProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-frequency>
                      frequency :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-islocaltime>
                      isLocalTime :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-quiettime>
                      quietTime :: (Prelude.Maybe QuietTimeProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-starttime>
                      startTime :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-timezone>
                      timeZone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty
      {haddock_workaround_ = (), endTime = Prelude.Nothing,
       eventFilter = Prelude.Nothing, frequency = Prelude.Nothing,
       isLocalTime = Prelude.Nothing, quietTime = Prelude.Nothing,
       startTime = Prelude.Nothing, timeZone = Prelude.Nothing}
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