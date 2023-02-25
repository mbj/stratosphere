module Stratosphere.DataBrew.Job.RecipeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecipeProperty :: Prelude.Type
instance ToResourceProperties RecipeProperty
instance JSON.ToJSON RecipeProperty