module Stratosphere.SSMContacts.Rotation.WeeklySettingProperty (
        WeeklySettingProperty(..), mkWeeklySettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WeeklySettingProperty
  = WeeklySettingProperty {dayOfWeek :: (Value Prelude.Text),
                           handOffTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWeeklySettingProperty ::
  Value Prelude.Text -> Value Prelude.Text -> WeeklySettingProperty
mkWeeklySettingProperty dayOfWeek handOffTime
  = WeeklySettingProperty
      {dayOfWeek = dayOfWeek, handOffTime = handOffTime}
instance ToResourceProperties WeeklySettingProperty where
  toResourceProperties WeeklySettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Rotation.WeeklySetting",
         supportsTags = Prelude.False,
         properties = ["DayOfWeek" JSON..= dayOfWeek,
                       "HandOffTime" JSON..= handOffTime]}
instance JSON.ToJSON WeeklySettingProperty where
  toJSON WeeklySettingProperty {..}
    = JSON.object
        ["DayOfWeek" JSON..= dayOfWeek, "HandOffTime" JSON..= handOffTime]
instance Property "DayOfWeek" WeeklySettingProperty where
  type PropertyType "DayOfWeek" WeeklySettingProperty = Value Prelude.Text
  set newValue WeeklySettingProperty {..}
    = WeeklySettingProperty {dayOfWeek = newValue, ..}
instance Property "HandOffTime" WeeklySettingProperty where
  type PropertyType "HandOffTime" WeeklySettingProperty = Value Prelude.Text
  set newValue WeeklySettingProperty {..}
    = WeeklySettingProperty {handOffTime = newValue, ..}