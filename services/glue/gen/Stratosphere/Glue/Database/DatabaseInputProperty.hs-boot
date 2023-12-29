module Stratosphere.Glue.Database.DatabaseInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatabaseInputProperty :: Prelude.Type
instance ToResourceProperties DatabaseInputProperty
instance Prelude.Eq DatabaseInputProperty
instance Prelude.Show DatabaseInputProperty
instance JSON.ToJSON DatabaseInputProperty