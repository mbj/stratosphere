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
  = MeshSpecProperty {egressFilter :: (Prelude.Maybe EgressFilterProperty),
                      serviceDiscovery :: (Prelude.Maybe MeshServiceDiscoveryProperty)}
mkMeshSpecProperty :: MeshSpecProperty
mkMeshSpecProperty
  = MeshSpecProperty
      {egressFilter = Prelude.Nothing,
       serviceDiscovery = Prelude.Nothing}
instance ToResourceProperties MeshSpecProperty where
  toResourceProperties MeshSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Mesh.MeshSpec",
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