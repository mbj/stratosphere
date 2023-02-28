module Stratosphere.DataBrew.Job.RecipeProperty (
        RecipeProperty(..), mkRecipeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecipeProperty
  = RecipeProperty {name :: (Value Prelude.Text),
                    version :: (Prelude.Maybe (Value Prelude.Text))}
mkRecipeProperty :: Value Prelude.Text -> RecipeProperty
mkRecipeProperty name
  = RecipeProperty {name = name, version = Prelude.Nothing}
instance ToResourceProperties RecipeProperty where
  toResourceProperties RecipeProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.Recipe",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON RecipeProperty where
  toJSON RecipeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])))
instance Property "Name" RecipeProperty where
  type PropertyType "Name" RecipeProperty = Value Prelude.Text
  set newValue RecipeProperty {..}
    = RecipeProperty {name = newValue, ..}
instance Property "Version" RecipeProperty where
  type PropertyType "Version" RecipeProperty = Value Prelude.Text
  set newValue RecipeProperty {..}
    = RecipeProperty {version = Prelude.pure newValue, ..}