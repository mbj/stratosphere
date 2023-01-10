
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html

module Stratosphere.ResourceProperties.BudgetsBudgetSubscriber where

import Stratosphere.ResourceImports


-- | Full data type definition for BudgetsBudgetSubscriber. See
-- 'budgetsBudgetSubscriber' for a more convenient constructor.
data BudgetsBudgetSubscriber =
  BudgetsBudgetSubscriber
  { _budgetsBudgetSubscriberAddress :: Val Text
  , _budgetsBudgetSubscriberSubscriptionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetSubscriber where
  toJSON BudgetsBudgetSubscriber{..} =
    object $
    catMaybes
    [ (Just . ("Address",) . toJSON) _budgetsBudgetSubscriberAddress
    , (Just . ("SubscriptionType",) . toJSON) _budgetsBudgetSubscriberSubscriptionType
    ]

-- | Constructor for 'BudgetsBudgetSubscriber' containing required fields as
-- arguments.
budgetsBudgetSubscriber
  :: Val Text -- ^ 'bbsAddress'
  -> Val Text -- ^ 'bbsSubscriptionType'
  -> BudgetsBudgetSubscriber
budgetsBudgetSubscriber addressarg subscriptionTypearg =
  BudgetsBudgetSubscriber
  { _budgetsBudgetSubscriberAddress = addressarg
  , _budgetsBudgetSubscriberSubscriptionType = subscriptionTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-address
bbsAddress :: Lens' BudgetsBudgetSubscriber (Val Text)
bbsAddress = lens _budgetsBudgetSubscriberAddress (\s a -> s { _budgetsBudgetSubscriberAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-subscriptiontype
bbsSubscriptionType :: Lens' BudgetsBudgetSubscriber (Val Text)
bbsSubscriptionType = lens _budgetsBudgetSubscriberSubscriptionType (\s a -> s { _budgetsBudgetSubscriberSubscriptionType = a })
