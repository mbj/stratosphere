module Stratosphere.ImageBuilder.LifecyclePolicy.ResourceSelectionProperty (
        module Exports, ResourceSelectionProperty(..),
        mkResourceSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.RecipeSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceSelectionProperty
  = ResourceSelectionProperty {recipes :: (Prelude.Maybe [RecipeSelectionProperty]),
                               tagMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceSelectionProperty :: ResourceSelectionProperty
mkResourceSelectionProperty
  = ResourceSelectionProperty
      {recipes = Prelude.Nothing, tagMap = Prelude.Nothing}
instance ToResourceProperties ResourceSelectionProperty where
  toResourceProperties ResourceSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.ResourceSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Recipes" Prelude.<$> recipes,
                            (JSON..=) "TagMap" Prelude.<$> tagMap])}
instance JSON.ToJSON ResourceSelectionProperty where
  toJSON ResourceSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Recipes" Prelude.<$> recipes,
               (JSON..=) "TagMap" Prelude.<$> tagMap]))
instance Property "Recipes" ResourceSelectionProperty where
  type PropertyType "Recipes" ResourceSelectionProperty = [RecipeSelectionProperty]
  set newValue ResourceSelectionProperty {..}
    = ResourceSelectionProperty {recipes = Prelude.pure newValue, ..}
instance Property "TagMap" ResourceSelectionProperty where
  type PropertyType "TagMap" ResourceSelectionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ResourceSelectionProperty {..}
    = ResourceSelectionProperty {tagMap = Prelude.pure newValue, ..}