module Stratosphere.AppMesh.VirtualService (
        module Exports, VirtualService(..), mkVirtualService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualService.VirtualServiceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VirtualService
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html>
    VirtualService {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-meshname>
                    meshName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-meshowner>
                    meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-spec>
                    spec :: VirtualServiceSpecProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-virtualservicename>
                    virtualServiceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualService ::
  Value Prelude.Text
  -> VirtualServiceSpecProperty
     -> Value Prelude.Text -> VirtualService
mkVirtualService meshName spec virtualServiceName
  = VirtualService
      {haddock_workaround_ = (), meshName = meshName, spec = spec,
       virtualServiceName = virtualServiceName,
       meshOwner = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VirtualService where
  toResourceProperties VirtualService {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualService",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeshName" JSON..= meshName, "Spec" JSON..= spec,
                            "VirtualServiceName" JSON..= virtualServiceName]
                           (Prelude.catMaybes
                              [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VirtualService where
  toJSON VirtualService {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeshName" JSON..= meshName, "Spec" JSON..= spec,
               "VirtualServiceName" JSON..= virtualServiceName]
              (Prelude.catMaybes
                 [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "MeshName" VirtualService where
  type PropertyType "MeshName" VirtualService = Value Prelude.Text
  set newValue VirtualService {..}
    = VirtualService {meshName = newValue, ..}
instance Property "MeshOwner" VirtualService where
  type PropertyType "MeshOwner" VirtualService = Value Prelude.Text
  set newValue VirtualService {..}
    = VirtualService {meshOwner = Prelude.pure newValue, ..}
instance Property "Spec" VirtualService where
  type PropertyType "Spec" VirtualService = VirtualServiceSpecProperty
  set newValue VirtualService {..}
    = VirtualService {spec = newValue, ..}
instance Property "Tags" VirtualService where
  type PropertyType "Tags" VirtualService = [Tag]
  set newValue VirtualService {..}
    = VirtualService {tags = Prelude.pure newValue, ..}
instance Property "VirtualServiceName" VirtualService where
  type PropertyType "VirtualServiceName" VirtualService = Value Prelude.Text
  set newValue VirtualService {..}
    = VirtualService {virtualServiceName = newValue, ..}