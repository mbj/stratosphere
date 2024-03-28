module Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration.ControlConditionProperty (
        ControlConditionProperty(..), mkControlConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ControlConditionProperty
  = ControlConditionProperty {alarmIdentifier :: (Value Prelude.Text),
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ControlConditionProperty
mkControlConditionProperty alarmIdentifier type'
  = ControlConditionProperty
      {alarmIdentifier = alarmIdentifier, type' = type'}
instance ToResourceProperties ControlConditionProperty where
  toResourceProperties ControlConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCZonalShift::ZonalAutoshiftConfiguration.ControlCondition",
         supportsTags = Prelude.False,
         properties = ["AlarmIdentifier" JSON..= alarmIdentifier,
                       "Type" JSON..= type']}
instance JSON.ToJSON ControlConditionProperty where
  toJSON ControlConditionProperty {..}
    = JSON.object
        ["AlarmIdentifier" JSON..= alarmIdentifier, "Type" JSON..= type']
instance Property "AlarmIdentifier" ControlConditionProperty where
  type PropertyType "AlarmIdentifier" ControlConditionProperty = Value Prelude.Text
  set newValue ControlConditionProperty {..}
    = ControlConditionProperty {alarmIdentifier = newValue, ..}
instance Property "Type" ControlConditionProperty where
  type PropertyType "Type" ControlConditionProperty = Value Prelude.Text
  set newValue ControlConditionProperty {..}
    = ControlConditionProperty {type' = newValue, ..}