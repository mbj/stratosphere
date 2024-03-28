module Stratosphere.ImageBuilder.LifecyclePolicy.RecipeSelectionProperty (
        RecipeSelectionProperty(..), mkRecipeSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecipeSelectionProperty
  = RecipeSelectionProperty {name :: (Value Prelude.Text),
                             semanticVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecipeSelectionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecipeSelectionProperty
mkRecipeSelectionProperty name semanticVersion
  = RecipeSelectionProperty
      {name = name, semanticVersion = semanticVersion}
instance ToResourceProperties RecipeSelectionProperty where
  toResourceProperties RecipeSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.RecipeSelection",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "SemanticVersion" JSON..= semanticVersion]}
instance JSON.ToJSON RecipeSelectionProperty where
  toJSON RecipeSelectionProperty {..}
    = JSON.object
        ["Name" JSON..= name, "SemanticVersion" JSON..= semanticVersion]
instance Property "Name" RecipeSelectionProperty where
  type PropertyType "Name" RecipeSelectionProperty = Value Prelude.Text
  set newValue RecipeSelectionProperty {..}
    = RecipeSelectionProperty {name = newValue, ..}
instance Property "SemanticVersion" RecipeSelectionProperty where
  type PropertyType "SemanticVersion" RecipeSelectionProperty = Value Prelude.Text
  set newValue RecipeSelectionProperty {..}
    = RecipeSelectionProperty {semanticVersion = newValue, ..}