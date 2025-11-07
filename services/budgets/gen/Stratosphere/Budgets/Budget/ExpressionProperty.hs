module Stratosphere.Budgets.Budget.ExpressionProperty (
        module Exports, ExpressionProperty(..), mkExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.Budget.CostCategoryValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.ExpressionDimensionValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.TagValuesProperty as Exports
import Stratosphere.ResourceProperties
data ExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html>
    ExpressionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-and>
                        and :: (Prelude.Maybe [ExpressionProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-costcategories>
                        costCategories :: (Prelude.Maybe CostCategoryValuesProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-dimensions>
                        dimensions :: (Prelude.Maybe ExpressionDimensionValuesProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-not>
                        not :: (Prelude.Maybe ExpressionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-or>
                        or :: (Prelude.Maybe [ExpressionProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-tags>
                        tags :: (Prelude.Maybe TagValuesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExpressionProperty :: ExpressionProperty
mkExpressionProperty
  = ExpressionProperty
      {haddock_workaround_ = (), and = Prelude.Nothing,
       costCategories = Prelude.Nothing, dimensions = Prelude.Nothing,
       not = Prelude.Nothing, or = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ExpressionProperty where
  toResourceProperties ExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.Expression",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "And" Prelude.<$> and,
                            (JSON..=) "CostCategories" Prelude.<$> costCategories,
                            (JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "Not" Prelude.<$> not, (JSON..=) "Or" Prelude.<$> or,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ExpressionProperty where
  toJSON ExpressionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "And" Prelude.<$> and,
               (JSON..=) "CostCategories" Prelude.<$> costCategories,
               (JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "Not" Prelude.<$> not, (JSON..=) "Or" Prelude.<$> or,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "And" ExpressionProperty where
  type PropertyType "And" ExpressionProperty = [ExpressionProperty]
  set newValue ExpressionProperty {..}
    = ExpressionProperty {and = Prelude.pure newValue, ..}
instance Property "CostCategories" ExpressionProperty where
  type PropertyType "CostCategories" ExpressionProperty = CostCategoryValuesProperty
  set newValue ExpressionProperty {..}
    = ExpressionProperty {costCategories = Prelude.pure newValue, ..}
instance Property "Dimensions" ExpressionProperty where
  type PropertyType "Dimensions" ExpressionProperty = ExpressionDimensionValuesProperty
  set newValue ExpressionProperty {..}
    = ExpressionProperty {dimensions = Prelude.pure newValue, ..}
instance Property "Not" ExpressionProperty where
  type PropertyType "Not" ExpressionProperty = ExpressionProperty
  set newValue ExpressionProperty {..}
    = ExpressionProperty {not = Prelude.pure newValue, ..}
instance Property "Or" ExpressionProperty where
  type PropertyType "Or" ExpressionProperty = [ExpressionProperty]
  set newValue ExpressionProperty {..}
    = ExpressionProperty {or = Prelude.pure newValue, ..}
instance Property "Tags" ExpressionProperty where
  type PropertyType "Tags" ExpressionProperty = TagValuesProperty
  set newValue ExpressionProperty {..}
    = ExpressionProperty {tags = Prelude.pure newValue, ..}