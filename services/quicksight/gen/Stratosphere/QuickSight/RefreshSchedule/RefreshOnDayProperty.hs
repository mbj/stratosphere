module Stratosphere.QuickSight.RefreshSchedule.RefreshOnDayProperty (
        RefreshOnDayProperty(..), mkRefreshOnDayProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshOnDayProperty
  = RefreshOnDayProperty {dayOfMonth :: (Prelude.Maybe (Value Prelude.Text)),
                          dayOfWeek :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshOnDayProperty :: RefreshOnDayProperty
mkRefreshOnDayProperty
  = RefreshOnDayProperty
      {dayOfMonth = Prelude.Nothing, dayOfWeek = Prelude.Nothing}
instance ToResourceProperties RefreshOnDayProperty where
  toResourceProperties RefreshOnDayProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::RefreshSchedule.RefreshOnDay",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DayOfMonth" Prelude.<$> dayOfMonth,
                            (JSON..=) "DayOfWeek" Prelude.<$> dayOfWeek])}
instance JSON.ToJSON RefreshOnDayProperty where
  toJSON RefreshOnDayProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DayOfMonth" Prelude.<$> dayOfMonth,
               (JSON..=) "DayOfWeek" Prelude.<$> dayOfWeek]))
instance Property "DayOfMonth" RefreshOnDayProperty where
  type PropertyType "DayOfMonth" RefreshOnDayProperty = Value Prelude.Text
  set newValue RefreshOnDayProperty {..}
    = RefreshOnDayProperty {dayOfMonth = Prelude.pure newValue, ..}
instance Property "DayOfWeek" RefreshOnDayProperty where
  type PropertyType "DayOfWeek" RefreshOnDayProperty = Value Prelude.Text
  set newValue RefreshOnDayProperty {..}
    = RefreshOnDayProperty {dayOfWeek = Prelude.pure newValue, ..}