module Stratosphere.DataBrew.Recipe.RecipeStepProperty (
        module Exports, RecipeStepProperty(..), mkRecipeStepProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.ConditionExpressionProperty as Exports
import Stratosphere.ResourceProperties
data RecipeStepProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-recipestep.html>
    RecipeStepProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-recipestep.html#cfn-databrew-recipe-recipestep-action>
                        action :: ActionProperty,
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-recipestep.html#cfn-databrew-recipe-recipestep-conditionexpressions>
                        conditionExpressions :: (Prelude.Maybe [ConditionExpressionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecipeStepProperty :: ActionProperty -> RecipeStepProperty
mkRecipeStepProperty action
  = RecipeStepProperty
      {action = action, conditionExpressions = Prelude.Nothing}
instance ToResourceProperties RecipeStepProperty where
  toResourceProperties RecipeStepProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.RecipeStep",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action]
                           (Prelude.catMaybes
                              [(JSON..=) "ConditionExpressions"
                                 Prelude.<$> conditionExpressions]))}
instance JSON.ToJSON RecipeStepProperty where
  toJSON RecipeStepProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action]
              (Prelude.catMaybes
                 [(JSON..=) "ConditionExpressions"
                    Prelude.<$> conditionExpressions])))
instance Property "Action" RecipeStepProperty where
  type PropertyType "Action" RecipeStepProperty = ActionProperty
  set newValue RecipeStepProperty {..}
    = RecipeStepProperty {action = newValue, ..}
instance Property "ConditionExpressions" RecipeStepProperty where
  type PropertyType "ConditionExpressions" RecipeStepProperty = [ConditionExpressionProperty]
  set newValue RecipeStepProperty {..}
    = RecipeStepProperty
        {conditionExpressions = Prelude.pure newValue, ..}