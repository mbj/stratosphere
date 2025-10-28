module Stratosphere.AppMesh.Mesh.MeshServiceDiscoveryProperty (
        MeshServiceDiscoveryProperty(..), mkMeshServiceDiscoveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MeshServiceDiscoveryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshservicediscovery.html>
    MeshServiceDiscoveryProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshservicediscovery.html#cfn-appmesh-mesh-meshservicediscovery-ippreference>
                                  ipPreference :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMeshServiceDiscoveryProperty :: MeshServiceDiscoveryProperty
mkMeshServiceDiscoveryProperty
  = MeshServiceDiscoveryProperty
      {haddock_workaround_ = (), ipPreference = Prelude.Nothing}
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
  set newValue MeshServiceDiscoveryProperty {..}
    = MeshServiceDiscoveryProperty
        {ipPreference = Prelude.pure newValue, ..}