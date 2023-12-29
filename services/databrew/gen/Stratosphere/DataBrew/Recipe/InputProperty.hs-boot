module Stratosphere.DataBrew.Recipe.InputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputProperty :: Prelude.Type
instance ToResourceProperties InputProperty
instance Prelude.Eq InputProperty
instance Prelude.Show InputProperty
instance JSON.ToJSON InputProperty