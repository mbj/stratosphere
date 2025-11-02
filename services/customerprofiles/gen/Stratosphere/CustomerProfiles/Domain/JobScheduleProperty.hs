module Stratosphere.CustomerProfiles.Domain.JobScheduleProperty (
        JobScheduleProperty(..), mkJobScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-jobschedule.html>
    JobScheduleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-jobschedule.html#cfn-customerprofiles-domain-jobschedule-dayoftheweek>
                         dayOfTheWeek :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-jobschedule.html#cfn-customerprofiles-domain-jobschedule-time>
                         time :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobScheduleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> JobScheduleProperty
mkJobScheduleProperty dayOfTheWeek time
  = JobScheduleProperty
      {haddock_workaround_ = (), dayOfTheWeek = dayOfTheWeek,
       time = time}
instance ToResourceProperties JobScheduleProperty where
  toResourceProperties JobScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.JobSchedule",
         supportsTags = Prelude.False,
         properties = ["DayOfTheWeek" JSON..= dayOfTheWeek,
                       "Time" JSON..= time]}
instance JSON.ToJSON JobScheduleProperty where
  toJSON JobScheduleProperty {..}
    = JSON.object
        ["DayOfTheWeek" JSON..= dayOfTheWeek, "Time" JSON..= time]
instance Property "DayOfTheWeek" JobScheduleProperty where
  type PropertyType "DayOfTheWeek" JobScheduleProperty = Value Prelude.Text
  set newValue JobScheduleProperty {..}
    = JobScheduleProperty {dayOfTheWeek = newValue, ..}
instance Property "Time" JobScheduleProperty where
  type PropertyType "Time" JobScheduleProperty = Value Prelude.Text
  set newValue JobScheduleProperty {..}
    = JobScheduleProperty {time = newValue, ..}