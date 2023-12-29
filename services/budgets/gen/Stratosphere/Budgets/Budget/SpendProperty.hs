module Stratosphere.Budgets.Budget.SpendProperty (
        SpendProperty(..), mkSpendProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpendProperty
  = SpendProperty {amount :: (Value Prelude.Double),
                   unit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpendProperty ::
  Value Prelude.Double -> Value Prelude.Text -> SpendProperty
mkSpendProperty amount unit
  = SpendProperty {amount = amount, unit = unit}
instance ToResourceProperties SpendProperty where
  toResourceProperties SpendProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.Spend",
         supportsTags = Prelude.False,
         properties = ["Amount" JSON..= amount, "Unit" JSON..= unit]}
instance JSON.ToJSON SpendProperty where
  toJSON SpendProperty {..}
    = JSON.object ["Amount" JSON..= amount, "Unit" JSON..= unit]
instance Property "Amount" SpendProperty where
  type PropertyType "Amount" SpendProperty = Value Prelude.Double
  set newValue SpendProperty {..}
    = SpendProperty {amount = newValue, ..}
instance Property "Unit" SpendProperty where
  type PropertyType "Unit" SpendProperty = Value Prelude.Text
  set newValue SpendProperty {..}
    = SpendProperty {unit = newValue, ..}