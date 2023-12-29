module Stratosphere.DataBrew.Job.DatabaseOutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatabaseOutputProperty :: Prelude.Type
instance ToResourceProperties DatabaseOutputProperty
instance Prelude.Eq DatabaseOutputProperty
instance Prelude.Show DatabaseOutputProperty
instance JSON.ToJSON DatabaseOutputProperty