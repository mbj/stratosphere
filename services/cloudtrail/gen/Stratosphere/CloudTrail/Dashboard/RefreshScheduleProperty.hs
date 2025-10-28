module Stratosphere.CloudTrail.Dashboard.RefreshScheduleProperty (
        module Exports, RefreshScheduleProperty(..),
        mkRefreshScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Dashboard.FrequencyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-dashboard-refreshschedule.html>
    RefreshScheduleProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-dashboard-refreshschedule.html#cfn-cloudtrail-dashboard-refreshschedule-frequency>
                             frequency :: (Prelude.Maybe FrequencyProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-dashboard-refreshschedule.html#cfn-cloudtrail-dashboard-refreshschedule-status>
                             status :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-dashboard-refreshschedule.html#cfn-cloudtrail-dashboard-refreshschedule-timeofday>
                             timeOfDay :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshScheduleProperty :: RefreshScheduleProperty
mkRefreshScheduleProperty
  = RefreshScheduleProperty
      {haddock_workaround_ = (), frequency = Prelude.Nothing,
       status = Prelude.Nothing, timeOfDay = Prelude.Nothing}
instance ToResourceProperties RefreshScheduleProperty where
  toResourceProperties RefreshScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Dashboard.RefreshSchedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Frequency" Prelude.<$> frequency,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "TimeOfDay" Prelude.<$> timeOfDay])}
instance JSON.ToJSON RefreshScheduleProperty where
  toJSON RefreshScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Frequency" Prelude.<$> frequency,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "TimeOfDay" Prelude.<$> timeOfDay]))
instance Property "Frequency" RefreshScheduleProperty where
  type PropertyType "Frequency" RefreshScheduleProperty = FrequencyProperty
  set newValue RefreshScheduleProperty {..}
    = RefreshScheduleProperty {frequency = Prelude.pure newValue, ..}
instance Property "Status" RefreshScheduleProperty where
  type PropertyType "Status" RefreshScheduleProperty = Value Prelude.Text
  set newValue RefreshScheduleProperty {..}
    = RefreshScheduleProperty {status = Prelude.pure newValue, ..}
instance Property "TimeOfDay" RefreshScheduleProperty where
  type PropertyType "TimeOfDay" RefreshScheduleProperty = Value Prelude.Text
  set newValue RefreshScheduleProperty {..}
    = RefreshScheduleProperty {timeOfDay = Prelude.pure newValue, ..}