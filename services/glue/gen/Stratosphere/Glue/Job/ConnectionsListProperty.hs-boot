module Stratosphere.Glue.Job.ConnectionsListProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConnectionsListProperty :: Prelude.Type
instance ToResourceProperties ConnectionsListProperty
instance Prelude.Eq ConnectionsListProperty
instance Prelude.Show ConnectionsListProperty
instance JSON.ToJSON ConnectionsListProperty