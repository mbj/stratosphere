module Stratosphere.DataBrew.Recipe.RecipeStepProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecipeStepProperty :: Prelude.Type
instance ToResourceProperties RecipeStepProperty
instance JSON.ToJSON RecipeStepProperty