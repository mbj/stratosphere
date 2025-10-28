module Stratosphere.QuickSight.RefreshSchedule.ScheduleFrequencyProperty (
        module Exports, ScheduleFrequencyProperty(..),
        mkScheduleFrequencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.RefreshSchedule.RefreshOnDayProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleFrequencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-refreshschedule-schedulefrequency.html>
    ScheduleFrequencyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-refreshschedule-schedulefrequency.html#cfn-quicksight-refreshschedule-schedulefrequency-interval>
                               interval :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-refreshschedule-schedulefrequency.html#cfn-quicksight-refreshschedule-schedulefrequency-refreshonday>
                               refreshOnDay :: (Prelude.Maybe RefreshOnDayProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-refreshschedule-schedulefrequency.html#cfn-quicksight-refreshschedule-schedulefrequency-timeoftheday>
                               timeOfTheDay :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-refreshschedule-schedulefrequency.html#cfn-quicksight-refreshschedule-schedulefrequency-timezone>
                               timeZone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleFrequencyProperty :: ScheduleFrequencyProperty
mkScheduleFrequencyProperty
  = ScheduleFrequencyProperty
      {haddock_workaround_ = (), interval = Prelude.Nothing,
       refreshOnDay = Prelude.Nothing, timeOfTheDay = Prelude.Nothing,
       timeZone = Prelude.Nothing}
instance ToResourceProperties ScheduleFrequencyProperty where
  toResourceProperties ScheduleFrequencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::RefreshSchedule.ScheduleFrequency",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "RefreshOnDay" Prelude.<$> refreshOnDay,
                            (JSON..=) "TimeOfTheDay" Prelude.<$> timeOfTheDay,
                            (JSON..=) "TimeZone" Prelude.<$> timeZone])}
instance JSON.ToJSON ScheduleFrequencyProperty where
  toJSON ScheduleFrequencyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "RefreshOnDay" Prelude.<$> refreshOnDay,
               (JSON..=) "TimeOfTheDay" Prelude.<$> timeOfTheDay,
               (JSON..=) "TimeZone" Prelude.<$> timeZone]))
instance Property "Interval" ScheduleFrequencyProperty where
  type PropertyType "Interval" ScheduleFrequencyProperty = Value Prelude.Text
  set newValue ScheduleFrequencyProperty {..}
    = ScheduleFrequencyProperty {interval = Prelude.pure newValue, ..}
instance Property "RefreshOnDay" ScheduleFrequencyProperty where
  type PropertyType "RefreshOnDay" ScheduleFrequencyProperty = RefreshOnDayProperty
  set newValue ScheduleFrequencyProperty {..}
    = ScheduleFrequencyProperty
        {refreshOnDay = Prelude.pure newValue, ..}
instance Property "TimeOfTheDay" ScheduleFrequencyProperty where
  type PropertyType "TimeOfTheDay" ScheduleFrequencyProperty = Value Prelude.Text
  set newValue ScheduleFrequencyProperty {..}
    = ScheduleFrequencyProperty
        {timeOfTheDay = Prelude.pure newValue, ..}
instance Property "TimeZone" ScheduleFrequencyProperty where
  type PropertyType "TimeZone" ScheduleFrequencyProperty = Value Prelude.Text
  set newValue ScheduleFrequencyProperty {..}
    = ScheduleFrequencyProperty {timeZone = Prelude.pure newValue, ..}