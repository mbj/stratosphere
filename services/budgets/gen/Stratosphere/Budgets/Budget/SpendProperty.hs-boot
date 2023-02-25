module Stratosphere.Budgets.Budget.SpendProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SpendProperty :: Prelude.Type
instance ToResourceProperties SpendProperty
instance JSON.ToJSON SpendProperty