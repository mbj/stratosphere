module Stratosphere.AppMesh.Mesh (
        module Exports, Mesh(..), mkMesh
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Mesh.MeshSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Mesh
  = Mesh {meshName :: (Prelude.Maybe (Value Prelude.Text)),
          spec :: (Prelude.Maybe MeshSpecProperty),
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMesh :: Mesh
mkMesh
  = Mesh
      {meshName = Prelude.Nothing, spec = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Mesh where
  toResourceProperties Mesh {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Mesh", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MeshName" Prelude.<$> meshName,
                            (JSON..=) "Spec" Prelude.<$> spec,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Mesh where
  toJSON Mesh {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MeshName" Prelude.<$> meshName,
               (JSON..=) "Spec" Prelude.<$> spec,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "MeshName" Mesh where
  type PropertyType "MeshName" Mesh = Value Prelude.Text
  set newValue Mesh {..}
    = Mesh {meshName = Prelude.pure newValue, ..}
instance Property "Spec" Mesh where
  type PropertyType "Spec" Mesh = MeshSpecProperty
  set newValue Mesh {..} = Mesh {spec = Prelude.pure newValue, ..}
instance Property "Tags" Mesh where
  type PropertyType "Tags" Mesh = [Tag]
  set newValue Mesh {..} = Mesh {tags = Prelude.pure newValue, ..}