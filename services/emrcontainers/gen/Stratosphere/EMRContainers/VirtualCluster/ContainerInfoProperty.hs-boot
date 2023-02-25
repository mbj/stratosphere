module Stratosphere.EMRContainers.VirtualCluster.ContainerInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerInfoProperty :: Prelude.Type
instance ToResourceProperties ContainerInfoProperty
instance JSON.ToJSON ContainerInfoProperty