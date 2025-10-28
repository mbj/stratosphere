module Stratosphere.DataBrew.Recipe (
        module Exports, Recipe(..), mkRecipe
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.RecipeStepProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Recipe
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-recipe.html>
    Recipe {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-recipe.html#cfn-databrew-recipe-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-recipe.html#cfn-databrew-recipe-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-recipe.html#cfn-databrew-recipe-steps>
            steps :: [RecipeStepProperty],
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-recipe.html#cfn-databrew-recipe-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecipe :: Value Prelude.Text -> [RecipeStepProperty] -> Recipe
mkRecipe name steps
  = Recipe
      {haddock_workaround_ = (), name = name, steps = steps,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Recipe where
  toResourceProperties Recipe {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Steps" JSON..= steps]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Recipe where
  toJSON Recipe {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Steps" JSON..= steps]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Recipe where
  type PropertyType "Description" Recipe = Value Prelude.Text
  set newValue Recipe {..}
    = Recipe {description = Prelude.pure newValue, ..}
instance Property "Name" Recipe where
  type PropertyType "Name" Recipe = Value Prelude.Text
  set newValue Recipe {..} = Recipe {name = newValue, ..}
instance Property "Steps" Recipe where
  type PropertyType "Steps" Recipe = [RecipeStepProperty]
  set newValue Recipe {..} = Recipe {steps = newValue, ..}
instance Property "Tags" Recipe where
  type PropertyType "Tags" Recipe = [Tag]
  set newValue Recipe {..}
    = Recipe {tags = Prelude.pure newValue, ..}