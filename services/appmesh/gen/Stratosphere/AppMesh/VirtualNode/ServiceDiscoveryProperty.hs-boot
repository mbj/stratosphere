module Stratosphere.AppMesh.VirtualNode.ServiceDiscoveryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ServiceDiscoveryProperty :: Prelude.Type
instance ToResourceProperties ServiceDiscoveryProperty
instance JSON.ToJSON ServiceDiscoveryProperty