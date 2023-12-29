module Stratosphere.SSMContacts.Rotation.MonthlySettingProperty (
        MonthlySettingProperty(..), mkMonthlySettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonthlySettingProperty
  = MonthlySettingProperty {dayOfMonth :: (Value Prelude.Integer),
                            handOffTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonthlySettingProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> MonthlySettingProperty
mkMonthlySettingProperty dayOfMonth handOffTime
  = MonthlySettingProperty
      {dayOfMonth = dayOfMonth, handOffTime = handOffTime}
instance ToResourceProperties MonthlySettingProperty where
  toResourceProperties MonthlySettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Rotation.MonthlySetting",
         supportsTags = Prelude.False,
         properties = ["DayOfMonth" JSON..= dayOfMonth,
                       "HandOffTime" JSON..= handOffTime]}
instance JSON.ToJSON MonthlySettingProperty where
  toJSON MonthlySettingProperty {..}
    = JSON.object
        ["DayOfMonth" JSON..= dayOfMonth,
         "HandOffTime" JSON..= handOffTime]
instance Property "DayOfMonth" MonthlySettingProperty where
  type PropertyType "DayOfMonth" MonthlySettingProperty = Value Prelude.Integer
  set newValue MonthlySettingProperty {..}
    = MonthlySettingProperty {dayOfMonth = newValue, ..}
instance Property "HandOffTime" MonthlySettingProperty where
  type PropertyType "HandOffTime" MonthlySettingProperty = Value Prelude.Text
  set newValue MonthlySettingProperty {..}
    = MonthlySettingProperty {handOffTime = newValue, ..}