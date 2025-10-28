module Stratosphere.Events.EventBusPolicy.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-key>
                       key :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-type>
                       type' :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-value>
                       value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       type' = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBusPolicy.Condition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ConditionProperty where
  type PropertyType "Key" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {key = Prelude.pure newValue, ..}
instance Property "Type" ConditionProperty where
  type PropertyType "Type" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" ConditionProperty where
  type PropertyType "Value" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {value = Prelude.pure newValue, ..}