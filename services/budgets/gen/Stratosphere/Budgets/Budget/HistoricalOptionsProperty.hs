module Stratosphere.Budgets.Budget.HistoricalOptionsProperty (
        HistoricalOptionsProperty(..), mkHistoricalOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HistoricalOptionsProperty
  = HistoricalOptionsProperty {budgetAdjustmentPeriod :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistoricalOptionsProperty ::
  Value Prelude.Integer -> HistoricalOptionsProperty
mkHistoricalOptionsProperty budgetAdjustmentPeriod
  = HistoricalOptionsProperty
      {budgetAdjustmentPeriod = budgetAdjustmentPeriod}
instance ToResourceProperties HistoricalOptionsProperty where
  toResourceProperties HistoricalOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.HistoricalOptions",
         supportsTags = Prelude.False,
         properties = ["BudgetAdjustmentPeriod"
                         JSON..= budgetAdjustmentPeriod]}
instance JSON.ToJSON HistoricalOptionsProperty where
  toJSON HistoricalOptionsProperty {..}
    = JSON.object
        ["BudgetAdjustmentPeriod" JSON..= budgetAdjustmentPeriod]
instance Property "BudgetAdjustmentPeriod" HistoricalOptionsProperty where
  type PropertyType "BudgetAdjustmentPeriod" HistoricalOptionsProperty = Value Prelude.Integer
  set newValue HistoricalOptionsProperty {}
    = HistoricalOptionsProperty {budgetAdjustmentPeriod = newValue, ..}