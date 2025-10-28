module Stratosphere.Budgets.Budget.BudgetDataProperty (
        module Exports, BudgetDataProperty(..), mkBudgetDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.Budget.AutoAdjustDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.CostTypesProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.SpendProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.TimePeriodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BudgetDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html>
    BudgetDataProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-autoadjustdata>
                        autoAdjustData :: (Prelude.Maybe AutoAdjustDataProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetlimit>
                        budgetLimit :: (Prelude.Maybe SpendProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetname>
                        budgetName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgettype>
                        budgetType :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costfilters>
                        costFilters :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes>
                        costTypes :: (Prelude.Maybe CostTypesProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-plannedbudgetlimits>
                        plannedBudgetLimits :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeperiod>
                        timePeriod :: (Prelude.Maybe TimePeriodProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeunit>
                        timeUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBudgetDataProperty ::
  Value Prelude.Text -> Value Prelude.Text -> BudgetDataProperty
mkBudgetDataProperty budgetType timeUnit
  = BudgetDataProperty
      {haddock_workaround_ = (), budgetType = budgetType,
       timeUnit = timeUnit, autoAdjustData = Prelude.Nothing,
       budgetLimit = Prelude.Nothing, budgetName = Prelude.Nothing,
       costFilters = Prelude.Nothing, costTypes = Prelude.Nothing,
       plannedBudgetLimits = Prelude.Nothing,
       timePeriod = Prelude.Nothing}
instance ToResourceProperties BudgetDataProperty where
  toResourceProperties BudgetDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.BudgetData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BudgetType" JSON..= budgetType, "TimeUnit" JSON..= timeUnit]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoAdjustData" Prelude.<$> autoAdjustData,
                               (JSON..=) "BudgetLimit" Prelude.<$> budgetLimit,
                               (JSON..=) "BudgetName" Prelude.<$> budgetName,
                               (JSON..=) "CostFilters" Prelude.<$> costFilters,
                               (JSON..=) "CostTypes" Prelude.<$> costTypes,
                               (JSON..=) "PlannedBudgetLimits" Prelude.<$> plannedBudgetLimits,
                               (JSON..=) "TimePeriod" Prelude.<$> timePeriod]))}
instance JSON.ToJSON BudgetDataProperty where
  toJSON BudgetDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BudgetType" JSON..= budgetType, "TimeUnit" JSON..= timeUnit]
              (Prelude.catMaybes
                 [(JSON..=) "AutoAdjustData" Prelude.<$> autoAdjustData,
                  (JSON..=) "BudgetLimit" Prelude.<$> budgetLimit,
                  (JSON..=) "BudgetName" Prelude.<$> budgetName,
                  (JSON..=) "CostFilters" Prelude.<$> costFilters,
                  (JSON..=) "CostTypes" Prelude.<$> costTypes,
                  (JSON..=) "PlannedBudgetLimits" Prelude.<$> plannedBudgetLimits,
                  (JSON..=) "TimePeriod" Prelude.<$> timePeriod])))
instance Property "AutoAdjustData" BudgetDataProperty where
  type PropertyType "AutoAdjustData" BudgetDataProperty = AutoAdjustDataProperty
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {autoAdjustData = Prelude.pure newValue, ..}
instance Property "BudgetLimit" BudgetDataProperty where
  type PropertyType "BudgetLimit" BudgetDataProperty = SpendProperty
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {budgetLimit = Prelude.pure newValue, ..}
instance Property "BudgetName" BudgetDataProperty where
  type PropertyType "BudgetName" BudgetDataProperty = Value Prelude.Text
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {budgetName = Prelude.pure newValue, ..}
instance Property "BudgetType" BudgetDataProperty where
  type PropertyType "BudgetType" BudgetDataProperty = Value Prelude.Text
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {budgetType = newValue, ..}
instance Property "CostFilters" BudgetDataProperty where
  type PropertyType "CostFilters" BudgetDataProperty = JSON.Object
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {costFilters = Prelude.pure newValue, ..}
instance Property "CostTypes" BudgetDataProperty where
  type PropertyType "CostTypes" BudgetDataProperty = CostTypesProperty
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {costTypes = Prelude.pure newValue, ..}
instance Property "PlannedBudgetLimits" BudgetDataProperty where
  type PropertyType "PlannedBudgetLimits" BudgetDataProperty = JSON.Object
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty
        {plannedBudgetLimits = Prelude.pure newValue, ..}
instance Property "TimePeriod" BudgetDataProperty where
  type PropertyType "TimePeriod" BudgetDataProperty = TimePeriodProperty
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {timePeriod = Prelude.pure newValue, ..}
instance Property "TimeUnit" BudgetDataProperty where
  type PropertyType "TimeUnit" BudgetDataProperty = Value Prelude.Text
  set newValue BudgetDataProperty {..}
    = BudgetDataProperty {timeUnit = newValue, ..}