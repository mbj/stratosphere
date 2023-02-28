module Stratosphere.AppMesh.Mesh.MeshServiceDiscoveryProperty (
        MeshServiceDiscoveryProperty(..), mkMeshServiceDiscoveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MeshServiceDiscoveryProperty
  = MeshServiceDiscoveryProperty {ipPreference :: (Prelude.Maybe (Value Prelude.Text))}
mkMeshServiceDiscoveryProperty :: MeshServiceDiscoveryProperty
mkMeshServiceDiscoveryProperty
  = MeshServiceDiscoveryProperty {ipPreference = Prelude.Nothing}
instance ToResourceProperties MeshServiceDiscoveryProperty where
  toResourceProperties MeshServiceDiscoveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Mesh.MeshServiceDiscovery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IpPreference" Prelude.<$> ipPreference])}
instance JSON.ToJSON MeshServiceDiscoveryProperty where
  toJSON MeshServiceDiscoveryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IpPreference" Prelude.<$> ipPreference]))
instance Property "IpPreference" MeshServiceDiscoveryProperty where
  type PropertyType "IpPreference" MeshServiceDiscoveryProperty = Value Prelude.Text
  set newValue MeshServiceDiscoveryProperty {}
    = MeshServiceDiscoveryProperty
        {ipPreference = Prelude.pure newValue, ..}