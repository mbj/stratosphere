module Stratosphere.Budgets.BudgetsAction.ActionThresholdProperty (
        ActionThresholdProperty(..), mkActionThresholdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionThresholdProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-actionthreshold.html>
    ActionThresholdProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-actionthreshold.html#cfn-budgets-budgetsaction-actionthreshold-type>
                             type' :: (Value Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-actionthreshold.html#cfn-budgets-budgetsaction-actionthreshold-value>
                             value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionThresholdProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> ActionThresholdProperty
mkActionThresholdProperty type' value
  = ActionThresholdProperty {type' = type', value = value}
instance ToResourceProperties ActionThresholdProperty where
  toResourceProperties ActionThresholdProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.ActionThreshold",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ActionThresholdProperty where
  toJSON ActionThresholdProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ActionThresholdProperty where
  type PropertyType "Type" ActionThresholdProperty = Value Prelude.Text
  set newValue ActionThresholdProperty {..}
    = ActionThresholdProperty {type' = newValue, ..}
instance Property "Value" ActionThresholdProperty where
  type PropertyType "Value" ActionThresholdProperty = Value Prelude.Double
  set newValue ActionThresholdProperty {..}
    = ActionThresholdProperty {value = newValue, ..}