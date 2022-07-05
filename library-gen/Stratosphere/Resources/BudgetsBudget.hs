{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html

module Stratosphere.Resources.BudgetsBudget where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BudgetsBudgetBudgetData
import Stratosphere.ResourceProperties.BudgetsBudgetNotificationWithSubscribers

-- | Full data type definition for BudgetsBudget. See 'budgetsBudget' for a
-- more convenient constructor.
data BudgetsBudget =
  BudgetsBudget
  { _budgetsBudgetBudget :: BudgetsBudgetBudgetData
  , _budgetsBudgetNotificationsWithSubscribers :: Maybe [BudgetsBudgetNotificationWithSubscribers]
  } deriving (Show, Eq)

instance ToResourceProperties BudgetsBudget where
  toResourceProperties BudgetsBudget{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Budgets::Budget"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Budget",) . toJSON) _budgetsBudgetBudget
        , fmap (("NotificationsWithSubscribers",) . toJSON) _budgetsBudgetNotificationsWithSubscribers
        ]
    }

-- | Constructor for 'BudgetsBudget' containing required fields as arguments.
budgetsBudget
  :: BudgetsBudgetBudgetData -- ^ 'bbBudget'
  -> BudgetsBudget
budgetsBudget budgetarg =
  BudgetsBudget
  { _budgetsBudgetBudget = budgetarg
  , _budgetsBudgetNotificationsWithSubscribers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html#cfn-budgets-budget-budget
bbBudget :: Lens' BudgetsBudget BudgetsBudgetBudgetData
bbBudget = lens _budgetsBudgetBudget (\s a -> s { _budgetsBudgetBudget = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html#cfn-budgets-budget-notificationswithsubscribers
bbNotificationsWithSubscribers :: Lens' BudgetsBudget (Maybe [BudgetsBudgetNotificationWithSubscribers])
bbNotificationsWithSubscribers = lens _budgetsBudgetNotificationsWithSubscribers (\s a -> s { _budgetsBudgetNotificationsWithSubscribers = a })
