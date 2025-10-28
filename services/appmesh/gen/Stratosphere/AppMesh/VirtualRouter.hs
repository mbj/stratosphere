module Stratosphere.AppMesh.VirtualRouter (
        module Exports, VirtualRouter(..), mkVirtualRouter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualRouter.VirtualRouterSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VirtualRouter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html>
    VirtualRouter {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-meshname>
                   meshName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-meshowner>
                   meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-spec>
                   spec :: VirtualRouterSpecProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-virtualroutername>
                   virtualRouterName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualRouter ::
  Value Prelude.Text -> VirtualRouterSpecProperty -> VirtualRouter
mkVirtualRouter meshName spec
  = VirtualRouter
      {haddock_workaround_ = (), meshName = meshName, spec = spec,
       meshOwner = Prelude.Nothing, tags = Prelude.Nothing,
       virtualRouterName = Prelude.Nothing}
instance ToResourceProperties VirtualRouter where
  toResourceProperties VirtualRouter {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualRouter",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeshName" JSON..= meshName, "Spec" JSON..= spec]
                           (Prelude.catMaybes
                              [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VirtualRouterName" Prelude.<$> virtualRouterName]))}
instance JSON.ToJSON VirtualRouter where
  toJSON VirtualRouter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeshName" JSON..= meshName, "Spec" JSON..= spec]
              (Prelude.catMaybes
                 [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VirtualRouterName" Prelude.<$> virtualRouterName])))
instance Property "MeshName" VirtualRouter where
  type PropertyType "MeshName" VirtualRouter = Value Prelude.Text
  set newValue VirtualRouter {..}
    = VirtualRouter {meshName = newValue, ..}
instance Property "MeshOwner" VirtualRouter where
  type PropertyType "MeshOwner" VirtualRouter = Value Prelude.Text
  set newValue VirtualRouter {..}
    = VirtualRouter {meshOwner = Prelude.pure newValue, ..}
instance Property "Spec" VirtualRouter where
  type PropertyType "Spec" VirtualRouter = VirtualRouterSpecProperty
  set newValue VirtualRouter {..}
    = VirtualRouter {spec = newValue, ..}
instance Property "Tags" VirtualRouter where
  type PropertyType "Tags" VirtualRouter = [Tag]
  set newValue VirtualRouter {..}
    = VirtualRouter {tags = Prelude.pure newValue, ..}
instance Property "VirtualRouterName" VirtualRouter where
  type PropertyType "VirtualRouterName" VirtualRouter = Value Prelude.Text
  set newValue VirtualRouter {..}
    = VirtualRouter {virtualRouterName = Prelude.pure newValue, ..}