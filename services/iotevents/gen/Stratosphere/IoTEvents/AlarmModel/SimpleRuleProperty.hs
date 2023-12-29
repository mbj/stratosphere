module Stratosphere.IoTEvents.AlarmModel.SimpleRuleProperty (
        SimpleRuleProperty(..), mkSimpleRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimpleRuleProperty
  = SimpleRuleProperty {comparisonOperator :: (Value Prelude.Text),
                        inputProperty :: (Value Prelude.Text),
                        threshold :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimpleRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SimpleRuleProperty
mkSimpleRuleProperty comparisonOperator inputProperty threshold
  = SimpleRuleProperty
      {comparisonOperator = comparisonOperator,
       inputProperty = inputProperty, threshold = threshold}
instance ToResourceProperties SimpleRuleProperty where
  toResourceProperties SimpleRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.SimpleRule",
         supportsTags = Prelude.False,
         properties = ["ComparisonOperator" JSON..= comparisonOperator,
                       "InputProperty" JSON..= inputProperty,
                       "Threshold" JSON..= threshold]}
instance JSON.ToJSON SimpleRuleProperty where
  toJSON SimpleRuleProperty {..}
    = JSON.object
        ["ComparisonOperator" JSON..= comparisonOperator,
         "InputProperty" JSON..= inputProperty,
         "Threshold" JSON..= threshold]
instance Property "ComparisonOperator" SimpleRuleProperty where
  type PropertyType "ComparisonOperator" SimpleRuleProperty = Value Prelude.Text
  set newValue SimpleRuleProperty {..}
    = SimpleRuleProperty {comparisonOperator = newValue, ..}
instance Property "InputProperty" SimpleRuleProperty where
  type PropertyType "InputProperty" SimpleRuleProperty = Value Prelude.Text
  set newValue SimpleRuleProperty {..}
    = SimpleRuleProperty {inputProperty = newValue, ..}
instance Property "Threshold" SimpleRuleProperty where
  type PropertyType "Threshold" SimpleRuleProperty = Value Prelude.Text
  set newValue SimpleRuleProperty {..}
    = SimpleRuleProperty {threshold = newValue, ..}