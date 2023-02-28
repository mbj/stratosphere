module Stratosphere.AppMesh.VirtualGateway (
        module Exports, VirtualGateway(..), mkVirtualGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewaySpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VirtualGateway
  = VirtualGateway {meshName :: (Value Prelude.Text),
                    meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
                    spec :: VirtualGatewaySpecProperty,
                    tags :: (Prelude.Maybe [Tag]),
                    virtualGatewayName :: (Prelude.Maybe (Value Prelude.Text))}
mkVirtualGateway ::
  Value Prelude.Text -> VirtualGatewaySpecProperty -> VirtualGateway
mkVirtualGateway meshName spec
  = VirtualGateway
      {meshName = meshName, spec = spec, meshOwner = Prelude.Nothing,
       tags = Prelude.Nothing, virtualGatewayName = Prelude.Nothing}
instance ToResourceProperties VirtualGateway where
  toResourceProperties VirtualGateway {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeshName" JSON..= meshName, "Spec" JSON..= spec]
                           (Prelude.catMaybes
                              [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VirtualGatewayName" Prelude.<$> virtualGatewayName]))}
instance JSON.ToJSON VirtualGateway where
  toJSON VirtualGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeshName" JSON..= meshName, "Spec" JSON..= spec]
              (Prelude.catMaybes
                 [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VirtualGatewayName" Prelude.<$> virtualGatewayName])))
instance Property "MeshName" VirtualGateway where
  type PropertyType "MeshName" VirtualGateway = Value Prelude.Text
  set newValue VirtualGateway {..}
    = VirtualGateway {meshName = newValue, ..}
instance Property "MeshOwner" VirtualGateway where
  type PropertyType "MeshOwner" VirtualGateway = Value Prelude.Text
  set newValue VirtualGateway {..}
    = VirtualGateway {meshOwner = Prelude.pure newValue, ..}
instance Property "Spec" VirtualGateway where
  type PropertyType "Spec" VirtualGateway = VirtualGatewaySpecProperty
  set newValue VirtualGateway {..}
    = VirtualGateway {spec = newValue, ..}
instance Property "Tags" VirtualGateway where
  type PropertyType "Tags" VirtualGateway = [Tag]
  set newValue VirtualGateway {..}
    = VirtualGateway {tags = Prelude.pure newValue, ..}
instance Property "VirtualGatewayName" VirtualGateway where
  type PropertyType "VirtualGatewayName" VirtualGateway = Value Prelude.Text
  set newValue VirtualGateway {..}
    = VirtualGateway {virtualGatewayName = Prelude.pure newValue, ..}