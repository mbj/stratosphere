module Stratosphere.DataBrew.Recipe.RecipeParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecipeParametersProperty :: Prelude.Type
instance ToResourceProperties RecipeParametersProperty
instance JSON.ToJSON RecipeParametersProperty