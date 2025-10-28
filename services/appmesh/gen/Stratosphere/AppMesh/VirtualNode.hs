module Stratosphere.AppMesh.VirtualNode (
        module Exports, VirtualNode(..), mkVirtualNode
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualNodeSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VirtualNode
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html>
    VirtualNode {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-meshname>
                 meshName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-meshowner>
                 meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-spec>
                 spec :: VirtualNodeSpecProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-virtualnodename>
                 virtualNodeName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualNode ::
  Value Prelude.Text -> VirtualNodeSpecProperty -> VirtualNode
mkVirtualNode meshName spec
  = VirtualNode
      {haddock_workaround_ = (), meshName = meshName, spec = spec,
       meshOwner = Prelude.Nothing, tags = Prelude.Nothing,
       virtualNodeName = Prelude.Nothing}
instance ToResourceProperties VirtualNode where
  toResourceProperties VirtualNode {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeshName" JSON..= meshName, "Spec" JSON..= spec]
                           (Prelude.catMaybes
                              [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VirtualNodeName" Prelude.<$> virtualNodeName]))}
instance JSON.ToJSON VirtualNode where
  toJSON VirtualNode {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeshName" JSON..= meshName, "Spec" JSON..= spec]
              (Prelude.catMaybes
                 [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VirtualNodeName" Prelude.<$> virtualNodeName])))
instance Property "MeshName" VirtualNode where
  type PropertyType "MeshName" VirtualNode = Value Prelude.Text
  set newValue VirtualNode {..}
    = VirtualNode {meshName = newValue, ..}
instance Property "MeshOwner" VirtualNode where
  type PropertyType "MeshOwner" VirtualNode = Value Prelude.Text
  set newValue VirtualNode {..}
    = VirtualNode {meshOwner = Prelude.pure newValue, ..}
instance Property "Spec" VirtualNode where
  type PropertyType "Spec" VirtualNode = VirtualNodeSpecProperty
  set newValue VirtualNode {..} = VirtualNode {spec = newValue, ..}
instance Property "Tags" VirtualNode where
  type PropertyType "Tags" VirtualNode = [Tag]
  set newValue VirtualNode {..}
    = VirtualNode {tags = Prelude.pure newValue, ..}
instance Property "VirtualNodeName" VirtualNode where
  type PropertyType "VirtualNodeName" VirtualNode = Value Prelude.Text
  set newValue VirtualNode {..}
    = VirtualNode {virtualNodeName = Prelude.pure newValue, ..}