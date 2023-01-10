
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html

module Stratosphere.ResourceProperties.BudgetsBudgetTimePeriod where

import Stratosphere.ResourceImports


-- | Full data type definition for BudgetsBudgetTimePeriod. See
-- 'budgetsBudgetTimePeriod' for a more convenient constructor.
data BudgetsBudgetTimePeriod =
  BudgetsBudgetTimePeriod
  { _budgetsBudgetTimePeriodEnd :: Maybe (Val Text)
  , _budgetsBudgetTimePeriodStart :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetTimePeriod where
  toJSON BudgetsBudgetTimePeriod{..} =
    object $
    catMaybes
    [ fmap (("End",) . toJSON) _budgetsBudgetTimePeriodEnd
    , fmap (("Start",) . toJSON) _budgetsBudgetTimePeriodStart
    ]

-- | Constructor for 'BudgetsBudgetTimePeriod' containing required fields as
-- arguments.
budgetsBudgetTimePeriod
  :: BudgetsBudgetTimePeriod
budgetsBudgetTimePeriod  =
  BudgetsBudgetTimePeriod
  { _budgetsBudgetTimePeriodEnd = Nothing
  , _budgetsBudgetTimePeriodStart = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-end
bbtpEnd :: Lens' BudgetsBudgetTimePeriod (Maybe (Val Text))
bbtpEnd = lens _budgetsBudgetTimePeriodEnd (\s a -> s { _budgetsBudgetTimePeriodEnd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-start
bbtpStart :: Lens' BudgetsBudgetTimePeriod (Maybe (Val Text))
bbtpStart = lens _budgetsBudgetTimePeriodStart (\s a -> s { _budgetsBudgetTimePeriodStart = a })
