module Stratosphere.Budgets.Budget.CostTypesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CostTypesProperty :: Prelude.Type
instance ToResourceProperties CostTypesProperty
instance JSON.ToJSON CostTypesProperty