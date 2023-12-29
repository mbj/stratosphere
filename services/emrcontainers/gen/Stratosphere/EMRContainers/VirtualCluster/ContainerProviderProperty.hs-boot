module Stratosphere.EMRContainers.VirtualCluster.ContainerProviderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerProviderProperty :: Prelude.Type
instance ToResourceProperties ContainerProviderProperty
instance Prelude.Eq ContainerProviderProperty
instance Prelude.Show ContainerProviderProperty
instance JSON.ToJSON ContainerProviderProperty