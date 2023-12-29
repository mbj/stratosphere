module Stratosphere.DataBrew.Job.RecipeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecipeProperty :: Prelude.Type
instance ToResourceProperties RecipeProperty
instance Prelude.Eq RecipeProperty
instance Prelude.Show RecipeProperty
instance JSON.ToJSON RecipeProperty