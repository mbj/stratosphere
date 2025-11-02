module Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration.ControlConditionProperty (
        ControlConditionProperty(..), mkControlConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ControlConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arczonalshift-zonalautoshiftconfiguration-controlcondition.html>
    ControlConditionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arczonalshift-zonalautoshiftconfiguration-controlcondition.html#cfn-arczonalshift-zonalautoshiftconfiguration-controlcondition-alarmidentifier>
                              alarmIdentifier :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arczonalshift-zonalautoshiftconfiguration-controlcondition.html#cfn-arczonalshift-zonalautoshiftconfiguration-controlcondition-type>
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ControlConditionProperty
mkControlConditionProperty alarmIdentifier type'
  = ControlConditionProperty
      {haddock_workaround_ = (), alarmIdentifier = alarmIdentifier,
       type' = type'}
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