{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html

module Stratosphere.ResourceProperties.BudgetsBudgetSpend where

import Stratosphere.ResourceImports


-- | Full data type definition for BudgetsBudgetSpend. See
-- 'budgetsBudgetSpend' for a more convenient constructor.
data BudgetsBudgetSpend =
  BudgetsBudgetSpend
  { _budgetsBudgetSpendAmount :: Val Double
  , _budgetsBudgetSpendUnit :: Val Text
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetSpend where
  toJSON BudgetsBudgetSpend{..} =
    object $
    catMaybes
    [ (Just . ("Amount",) . toJSON) _budgetsBudgetSpendAmount
    , (Just . ("Unit",) . toJSON) _budgetsBudgetSpendUnit
    ]

-- | Constructor for 'BudgetsBudgetSpend' containing required fields as
-- arguments.
budgetsBudgetSpend
  :: Val Double -- ^ 'bbsAmount'
  -> Val Text -- ^ 'bbsUnit'
  -> BudgetsBudgetSpend
budgetsBudgetSpend amountarg unitarg =
  BudgetsBudgetSpend
  { _budgetsBudgetSpendAmount = amountarg
  , _budgetsBudgetSpendUnit = unitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-amount
bbsAmount :: Lens' BudgetsBudgetSpend (Val Double)
bbsAmount = lens _budgetsBudgetSpendAmount (\s a -> s { _budgetsBudgetSpendAmount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-unit
bbsUnit :: Lens' BudgetsBudgetSpend (Val Text)
bbsUnit = lens _budgetsBudgetSpendUnit (\s a -> s { _budgetsBudgetSpendUnit = a })
