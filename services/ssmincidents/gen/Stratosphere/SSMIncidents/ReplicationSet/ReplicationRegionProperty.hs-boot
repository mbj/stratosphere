module Stratosphere.SSMIncidents.ReplicationSet.ReplicationRegionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicationRegionProperty :: Prelude.Type
instance ToResourceProperties ReplicationRegionProperty
instance Prelude.Eq ReplicationRegionProperty
instance Prelude.Show ReplicationRegionProperty
instance JSON.ToJSON ReplicationRegionProperty