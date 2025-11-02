module Stratosphere.AppMesh.Mesh.MeshSpecProperty (
        module Exports, MeshSpecProperty(..), mkMeshSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Mesh.EgressFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Mesh.MeshServiceDiscoveryProperty as Exports
import Stratosphere.ResourceProperties
data MeshSpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html>
    MeshSpecProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html#cfn-appmesh-mesh-meshspec-egressfilter>
                      egressFilter :: (Prelude.Maybe EgressFilterProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html#cfn-appmesh-mesh-meshspec-servicediscovery>
                      serviceDiscovery :: (Prelude.Maybe MeshServiceDiscoveryProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMeshSpecProperty :: MeshSpecProperty
mkMeshSpecProperty
  = MeshSpecProperty
      {haddock_workaround_ = (), egressFilter = Prelude.Nothing,
       serviceDiscovery = Prelude.Nothing}
instance ToResourceProperties MeshSpecProperty where
  toResourceProperties MeshSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Mesh.MeshSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EgressFilter" Prelude.<$> egressFilter,
                            (JSON..=) "ServiceDiscovery" Prelude.<$> serviceDiscovery])}
instance JSON.ToJSON MeshSpecProperty where
  toJSON MeshSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EgressFilter" Prelude.<$> egressFilter,
               (JSON..=) "ServiceDiscovery" Prelude.<$> serviceDiscovery]))
instance Property "EgressFilter" MeshSpecProperty where
  type PropertyType "EgressFilter" MeshSpecProperty = EgressFilterProperty
  set newValue MeshSpecProperty {..}
    = MeshSpecProperty {egressFilter = Prelude.pure newValue, ..}
instance Property "ServiceDiscovery" MeshSpecProperty where
  type PropertyType "ServiceDiscovery" MeshSpecProperty = MeshServiceDiscoveryProperty
  set newValue MeshSpecProperty {..}
    = MeshSpecProperty {serviceDiscovery = Prelude.pure newValue, ..}