module Stratosphere.Budgets.Budget.BudgetDataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BudgetDataProperty :: Prelude.Type
instance ToResourceProperties BudgetDataProperty
instance Prelude.Eq BudgetDataProperty
instance Prelude.Show BudgetDataProperty
instance JSON.ToJSON BudgetDataProperty