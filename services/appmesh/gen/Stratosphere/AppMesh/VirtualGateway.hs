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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html>
    VirtualGateway {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-meshname>
                    meshName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-meshowner>
                    meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-spec>
                    spec :: VirtualGatewaySpecProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-virtualgatewayname>
                    virtualGatewayName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGateway ::
  Value Prelude.Text -> VirtualGatewaySpecProperty -> VirtualGateway
mkVirtualGateway meshName spec
  = VirtualGateway
      {haddock_workaround_ = (), meshName = meshName, spec = spec,
       meshOwner = Prelude.Nothing, tags = Prelude.Nothing,
       virtualGatewayName = Prelude.Nothing}
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