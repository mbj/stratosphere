module Stratosphere.Budgets.Budget.CostCategoryValuesProperty (
        CostCategoryValuesProperty(..), mkCostCategoryValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CostCategoryValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html>
    CostCategoryValuesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html#cfn-budgets-budget-costcategoryvalues-key>
                                key :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html#cfn-budgets-budget-costcategoryvalues-matchoptions>
                                matchOptions :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html#cfn-budgets-budget-costcategoryvalues-values>
                                values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCostCategoryValuesProperty :: CostCategoryValuesProperty
mkCostCategoryValuesProperty
  = CostCategoryValuesProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       matchOptions = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties CostCategoryValuesProperty where
  toResourceProperties CostCategoryValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.CostCategoryValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "MatchOptions" Prelude.<$> matchOptions,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON CostCategoryValuesProperty where
  toJSON CostCategoryValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "MatchOptions" Prelude.<$> matchOptions,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" CostCategoryValuesProperty where
  type PropertyType "Key" CostCategoryValuesProperty = Value Prelude.Text
  set newValue CostCategoryValuesProperty {..}
    = CostCategoryValuesProperty {key = Prelude.pure newValue, ..}
instance Property "MatchOptions" CostCategoryValuesProperty where
  type PropertyType "MatchOptions" CostCategoryValuesProperty = ValueList Prelude.Text
  set newValue CostCategoryValuesProperty {..}
    = CostCategoryValuesProperty
        {matchOptions = Prelude.pure newValue, ..}
instance Property "Values" CostCategoryValuesProperty where
  type PropertyType "Values" CostCategoryValuesProperty = ValueList Prelude.Text
  set newValue CostCategoryValuesProperty {..}
    = CostCategoryValuesProperty {values = Prelude.pure newValue, ..}