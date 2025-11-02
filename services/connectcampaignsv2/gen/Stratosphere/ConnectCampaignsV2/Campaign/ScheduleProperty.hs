module Stratosphere.ConnectCampaignsV2.Campaign.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-schedule.html#cfn-connectcampaignsv2-campaign-schedule-endtime>
                      endTime :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-schedule.html#cfn-connectcampaignsv2-campaign-schedule-refreshfrequency>
                      refreshFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-schedule.html#cfn-connectcampaignsv2-campaign-schedule-starttime>
                      startTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ScheduleProperty
mkScheduleProperty endTime startTime
  = ScheduleProperty
      {haddock_workaround_ = (), endTime = endTime,
       startTime = startTime, refreshFrequency = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndTime" JSON..= endTime, "StartTime" JSON..= startTime]
                           (Prelude.catMaybes
                              [(JSON..=) "RefreshFrequency" Prelude.<$> refreshFrequency]))}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndTime" JSON..= endTime, "StartTime" JSON..= startTime]
              (Prelude.catMaybes
                 [(JSON..=) "RefreshFrequency" Prelude.<$> refreshFrequency])))
instance Property "EndTime" ScheduleProperty where
  type PropertyType "EndTime" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {endTime = newValue, ..}
instance Property "RefreshFrequency" ScheduleProperty where
  type PropertyType "RefreshFrequency" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {refreshFrequency = Prelude.pure newValue, ..}
instance Property "StartTime" ScheduleProperty where
  type PropertyType "StartTime" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {startTime = newValue, ..}