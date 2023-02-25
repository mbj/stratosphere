module Stratosphere.Budgets.Budget.TimePeriodProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimePeriodProperty :: Prelude.Type
instance ToResourceProperties TimePeriodProperty
instance JSON.ToJSON TimePeriodProperty