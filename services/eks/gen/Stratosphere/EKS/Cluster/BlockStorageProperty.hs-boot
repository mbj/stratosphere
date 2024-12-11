module Stratosphere.EKS.Cluster.BlockStorageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BlockStorageProperty :: Prelude.Type
instance ToResourceProperties BlockStorageProperty
instance Prelude.Eq BlockStorageProperty
instance Prelude.Show BlockStorageProperty
instance JSON.ToJSON BlockStorageProperty