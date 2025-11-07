module Stratosphere.Budgets.Budget.ExpressionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExpressionProperty :: Prelude.Type
instance ToResourceProperties ExpressionProperty
instance Prelude.Eq ExpressionProperty
instance Prelude.Show ExpressionProperty
instance JSON.ToJSON ExpressionProperty