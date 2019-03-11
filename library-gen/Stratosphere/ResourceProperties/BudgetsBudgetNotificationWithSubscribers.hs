{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html

module Stratosphere.ResourceProperties.BudgetsBudgetNotificationWithSubscribers where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BudgetsBudgetNotification
import Stratosphere.ResourceProperties.BudgetsBudgetSubscriber

-- | Full data type definition for BudgetsBudgetNotificationWithSubscribers.
-- See 'budgetsBudgetNotificationWithSubscribers' for a more convenient
-- constructor.
data BudgetsBudgetNotificationWithSubscribers =
  BudgetsBudgetNotificationWithSubscribers
  { _budgetsBudgetNotificationWithSubscribersNotification :: BudgetsBudgetNotification
  , _budgetsBudgetNotificationWithSubscribersSubscribers :: [BudgetsBudgetSubscriber]
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetNotificationWithSubscribers where
  toJSON BudgetsBudgetNotificationWithSubscribers{..} =
    object $
    catMaybes
    [ (Just . ("Notification",) . toJSON) _budgetsBudgetNotificationWithSubscribersNotification
    , (Just . ("Subscribers",) . toJSON) _budgetsBudgetNotificationWithSubscribersSubscribers
    ]

-- | Constructor for 'BudgetsBudgetNotificationWithSubscribers' containing
-- required fields as arguments.
budgetsBudgetNotificationWithSubscribers
  :: BudgetsBudgetNotification -- ^ 'bbnwsNotification'
  -> [BudgetsBudgetSubscriber] -- ^ 'bbnwsSubscribers'
  -> BudgetsBudgetNotificationWithSubscribers
budgetsBudgetNotificationWithSubscribers notificationarg subscribersarg =
  BudgetsBudgetNotificationWithSubscribers
  { _budgetsBudgetNotificationWithSubscribersNotification = notificationarg
  , _budgetsBudgetNotificationWithSubscribersSubscribers = subscribersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-notification
bbnwsNotification :: Lens' BudgetsBudgetNotificationWithSubscribers BudgetsBudgetNotification
bbnwsNotification = lens _budgetsBudgetNotificationWithSubscribersNotification (\s a -> s { _budgetsBudgetNotificationWithSubscribersNotification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-subscribers
bbnwsSubscribers :: Lens' BudgetsBudgetNotificationWithSubscribers [BudgetsBudgetSubscriber]
bbnwsSubscribers = lens _budgetsBudgetNotificationWithSubscribersSubscribers (\s a -> s { _budgetsBudgetNotificationWithSubscribersSubscribers = a })
