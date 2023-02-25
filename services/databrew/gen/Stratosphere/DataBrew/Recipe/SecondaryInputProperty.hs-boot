module Stratosphere.DataBrew.Recipe.SecondaryInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecondaryInputProperty :: Prelude.Type
instance ToResourceProperties SecondaryInputProperty
instance JSON.ToJSON SecondaryInputProperty