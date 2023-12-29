module Stratosphere.Budgets.Budget (
        module Exports, Budget(..), mkBudget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.Budget.BudgetDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.NotificationWithSubscribersProperty as Exports
import Stratosphere.ResourceProperties
data Budget
  = Budget {budget :: BudgetDataProperty,
            notificationsWithSubscribers :: (Prelude.Maybe [NotificationWithSubscribersProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBudget :: BudgetDataProperty -> Budget
mkBudget budget
  = Budget
      {budget = budget, notificationsWithSubscribers = Prelude.Nothing}
instance ToResourceProperties Budget where
  toResourceProperties Budget {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Budget" JSON..= budget]
                           (Prelude.catMaybes
                              [(JSON..=) "NotificationsWithSubscribers"
                                 Prelude.<$> notificationsWithSubscribers]))}
instance JSON.ToJSON Budget where
  toJSON Budget {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Budget" JSON..= budget]
              (Prelude.catMaybes
                 [(JSON..=) "NotificationsWithSubscribers"
                    Prelude.<$> notificationsWithSubscribers])))
instance Property "Budget" Budget where
  type PropertyType "Budget" Budget = BudgetDataProperty
  set newValue Budget {..} = Budget {budget = newValue, ..}
instance Property "NotificationsWithSubscribers" Budget where
  type PropertyType "NotificationsWithSubscribers" Budget = [NotificationWithSubscribersProperty]
  set newValue Budget {..}
    = Budget {notificationsWithSubscribers = Prelude.pure newValue, ..}