module Stratosphere.Cassandra.Table.ReplicaSpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicaSpecificationProperty :: Prelude.Type
instance ToResourceProperties ReplicaSpecificationProperty
instance Prelude.Eq ReplicaSpecificationProperty
instance Prelude.Show ReplicaSpecificationProperty
instance JSON.ToJSON ReplicaSpecificationProperty