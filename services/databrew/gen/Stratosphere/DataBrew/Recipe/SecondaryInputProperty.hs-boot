module Stratosphere.DataBrew.Recipe.SecondaryInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecondaryInputProperty :: Prelude.Type
instance ToResourceProperties SecondaryInputProperty
instance Prelude.Eq SecondaryInputProperty
instance Prelude.Show SecondaryInputProperty
instance JSON.ToJSON SecondaryInputProperty