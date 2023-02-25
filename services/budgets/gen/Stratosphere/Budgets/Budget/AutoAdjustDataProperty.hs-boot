module Stratosphere.Budgets.Budget.AutoAdjustDataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AutoAdjustDataProperty :: Prelude.Type
instance ToResourceProperties AutoAdjustDataProperty
instance JSON.ToJSON AutoAdjustDataProperty