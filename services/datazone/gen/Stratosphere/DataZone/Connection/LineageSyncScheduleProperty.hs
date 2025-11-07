module Stratosphere.DataZone.Connection.LineageSyncScheduleProperty (
        LineageSyncScheduleProperty(..), mkLineageSyncScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineageSyncScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-lineagesyncschedule.html>
    LineageSyncScheduleProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-lineagesyncschedule.html#cfn-datazone-connection-lineagesyncschedule-schedule>
                                 schedule :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineageSyncScheduleProperty :: LineageSyncScheduleProperty
mkLineageSyncScheduleProperty
  = LineageSyncScheduleProperty
      {haddock_workaround_ = (), schedule = Prelude.Nothing}
instance ToResourceProperties LineageSyncScheduleProperty where
  toResourceProperties LineageSyncScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.LineageSyncSchedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Schedule" Prelude.<$> schedule])}
instance JSON.ToJSON LineageSyncScheduleProperty where
  toJSON LineageSyncScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Schedule" Prelude.<$> schedule]))
instance Property "Schedule" LineageSyncScheduleProperty where
  type PropertyType "Schedule" LineageSyncScheduleProperty = Value Prelude.Text
  set newValue LineageSyncScheduleProperty {..}
    = LineageSyncScheduleProperty
        {schedule = Prelude.pure newValue, ..}