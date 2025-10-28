module Stratosphere.Budgets.Budget.TimePeriodProperty (
        TimePeriodProperty(..), mkTimePeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimePeriodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html>
    TimePeriodProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-end>
                        end :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-start>
                        start :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimePeriodProperty :: TimePeriodProperty
mkTimePeriodProperty
  = TimePeriodProperty
      {haddock_workaround_ = (), end = Prelude.Nothing,
       start = Prelude.Nothing}
instance ToResourceProperties TimePeriodProperty where
  toResourceProperties TimePeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.TimePeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "End" Prelude.<$> end,
                            (JSON..=) "Start" Prelude.<$> start])}
instance JSON.ToJSON TimePeriodProperty where
  toJSON TimePeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "End" Prelude.<$> end,
               (JSON..=) "Start" Prelude.<$> start]))
instance Property "End" TimePeriodProperty where
  type PropertyType "End" TimePeriodProperty = Value Prelude.Text
  set newValue TimePeriodProperty {..}
    = TimePeriodProperty {end = Prelude.pure newValue, ..}
instance Property "Start" TimePeriodProperty where
  type PropertyType "Start" TimePeriodProperty = Value Prelude.Text
  set newValue TimePeriodProperty {..}
    = TimePeriodProperty {start = Prelude.pure newValue, ..}