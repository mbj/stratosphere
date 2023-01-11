
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html

module Stratosphere.ResourceProperties.BudgetsBudgetNotification where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for BudgetsBudgetNotification. See
-- 'budgetsBudgetNotification' for a more convenient constructor.
data BudgetsBudgetNotification =
  BudgetsBudgetNotification
  { _budgetsBudgetNotificationComparisonOperator :: Val Text
  , _budgetsBudgetNotificationNotificationType :: Val Text
  , _budgetsBudgetNotificationThreshold :: Val Double
  , _budgetsBudgetNotificationThresholdType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetNotification where
  toJSON BudgetsBudgetNotification{..} =
    object $
    catMaybes
    [ (Just . ("ComparisonOperator",) . toJSON) _budgetsBudgetNotificationComparisonOperator
    , (Just . ("NotificationType",) . toJSON) _budgetsBudgetNotificationNotificationType
    , (Just . ("Threshold",) . toJSON) _budgetsBudgetNotificationThreshold
    , fmap (("ThresholdType",) . toJSON) _budgetsBudgetNotificationThresholdType
    ]

-- | Constructor for 'BudgetsBudgetNotification' containing required fields as
-- arguments.
budgetsBudgetNotification
  :: Val Text -- ^ 'bbnComparisonOperator'
  -> Val Text -- ^ 'bbnNotificationType'
  -> Val Double -- ^ 'bbnThreshold'
  -> BudgetsBudgetNotification
budgetsBudgetNotification comparisonOperatorarg notificationTypearg thresholdarg =
  BudgetsBudgetNotification
  { _budgetsBudgetNotificationComparisonOperator = comparisonOperatorarg
  , _budgetsBudgetNotificationNotificationType = notificationTypearg
  , _budgetsBudgetNotificationThreshold = thresholdarg
  , _budgetsBudgetNotificationThresholdType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-comparisonoperator
bbnComparisonOperator :: Lens' BudgetsBudgetNotification (Val Text)
bbnComparisonOperator = lens _budgetsBudgetNotificationComparisonOperator (\s a -> s { _budgetsBudgetNotificationComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-notificationtype
bbnNotificationType :: Lens' BudgetsBudgetNotification (Val Text)
bbnNotificationType = lens _budgetsBudgetNotificationNotificationType (\s a -> s { _budgetsBudgetNotificationNotificationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-threshold
bbnThreshold :: Lens' BudgetsBudgetNotification (Val Double)
bbnThreshold = lens _budgetsBudgetNotificationThreshold (\s a -> s { _budgetsBudgetNotificationThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-thresholdtype
bbnThresholdType :: Lens' BudgetsBudgetNotification (Maybe (Val Text))
bbnThresholdType = lens _budgetsBudgetNotificationThresholdType (\s a -> s { _budgetsBudgetNotificationThresholdType = a })
