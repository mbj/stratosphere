module Stratosphere.Glue.Crawler.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html#cfn-glue-crawler-schedule-scheduleexpression>
                      scheduleExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty
      {haddock_workaround_ = (), scheduleExpression = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression])}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression]))
instance Property "ScheduleExpression" ScheduleProperty where
  type PropertyType "ScheduleExpression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {scheduleExpression = Prelude.pure newValue, ..}