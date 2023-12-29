module Stratosphere.SecretsManager.Secret.ReplicaRegionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicaRegionProperty :: Prelude.Type
instance ToResourceProperties ReplicaRegionProperty
instance Prelude.Eq ReplicaRegionProperty
instance Prelude.Show ReplicaRegionProperty
instance JSON.ToJSON ReplicaRegionProperty