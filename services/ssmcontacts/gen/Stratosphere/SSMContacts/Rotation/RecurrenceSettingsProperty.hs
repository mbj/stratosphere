module Stratosphere.SSMContacts.Rotation.RecurrenceSettingsProperty (
        module Exports, RecurrenceSettingsProperty(..),
        mkRecurrenceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Rotation.MonthlySettingProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMContacts.Rotation.ShiftCoverageProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMContacts.Rotation.WeeklySettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecurrenceSettingsProperty
  = RecurrenceSettingsProperty {dailySettings :: (Prelude.Maybe (ValueList Prelude.Text)),
                                monthlySettings :: (Prelude.Maybe [MonthlySettingProperty]),
                                numberOfOnCalls :: (Value Prelude.Integer),
                                recurrenceMultiplier :: (Value Prelude.Integer),
                                shiftCoverages :: (Prelude.Maybe [ShiftCoverageProperty]),
                                weeklySettings :: (Prelude.Maybe [WeeklySettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecurrenceSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> RecurrenceSettingsProperty
mkRecurrenceSettingsProperty numberOfOnCalls recurrenceMultiplier
  = RecurrenceSettingsProperty
      {numberOfOnCalls = numberOfOnCalls,
       recurrenceMultiplier = recurrenceMultiplier,
       dailySettings = Prelude.Nothing, monthlySettings = Prelude.Nothing,
       shiftCoverages = Prelude.Nothing, weeklySettings = Prelude.Nothing}
instance ToResourceProperties RecurrenceSettingsProperty where
  toResourceProperties RecurrenceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Rotation.RecurrenceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NumberOfOnCalls" JSON..= numberOfOnCalls,
                            "RecurrenceMultiplier" JSON..= recurrenceMultiplier]
                           (Prelude.catMaybes
                              [(JSON..=) "DailySettings" Prelude.<$> dailySettings,
                               (JSON..=) "MonthlySettings" Prelude.<$> monthlySettings,
                               (JSON..=) "ShiftCoverages" Prelude.<$> shiftCoverages,
                               (JSON..=) "WeeklySettings" Prelude.<$> weeklySettings]))}
instance JSON.ToJSON RecurrenceSettingsProperty where
  toJSON RecurrenceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NumberOfOnCalls" JSON..= numberOfOnCalls,
               "RecurrenceMultiplier" JSON..= recurrenceMultiplier]
              (Prelude.catMaybes
                 [(JSON..=) "DailySettings" Prelude.<$> dailySettings,
                  (JSON..=) "MonthlySettings" Prelude.<$> monthlySettings,
                  (JSON..=) "ShiftCoverages" Prelude.<$> shiftCoverages,
                  (JSON..=) "WeeklySettings" Prelude.<$> weeklySettings])))
instance Property "DailySettings" RecurrenceSettingsProperty where
  type PropertyType "DailySettings" RecurrenceSettingsProperty = ValueList Prelude.Text
  set newValue RecurrenceSettingsProperty {..}
    = RecurrenceSettingsProperty
        {dailySettings = Prelude.pure newValue, ..}
instance Property "MonthlySettings" RecurrenceSettingsProperty where
  type PropertyType "MonthlySettings" RecurrenceSettingsProperty = [MonthlySettingProperty]
  set newValue RecurrenceSettingsProperty {..}
    = RecurrenceSettingsProperty
        {monthlySettings = Prelude.pure newValue, ..}
instance Property "NumberOfOnCalls" RecurrenceSettingsProperty where
  type PropertyType "NumberOfOnCalls" RecurrenceSettingsProperty = Value Prelude.Integer
  set newValue RecurrenceSettingsProperty {..}
    = RecurrenceSettingsProperty {numberOfOnCalls = newValue, ..}
instance Property "RecurrenceMultiplier" RecurrenceSettingsProperty where
  type PropertyType "RecurrenceMultiplier" RecurrenceSettingsProperty = Value Prelude.Integer
  set newValue RecurrenceSettingsProperty {..}
    = RecurrenceSettingsProperty {recurrenceMultiplier = newValue, ..}
instance Property "ShiftCoverages" RecurrenceSettingsProperty where
  type PropertyType "ShiftCoverages" RecurrenceSettingsProperty = [ShiftCoverageProperty]
  set newValue RecurrenceSettingsProperty {..}
    = RecurrenceSettingsProperty
        {shiftCoverages = Prelude.pure newValue, ..}
instance Property "WeeklySettings" RecurrenceSettingsProperty where
  type PropertyType "WeeklySettings" RecurrenceSettingsProperty = [WeeklySettingProperty]
  set newValue RecurrenceSettingsProperty {..}
    = RecurrenceSettingsProperty
        {weeklySettings = Prelude.pure newValue, ..}