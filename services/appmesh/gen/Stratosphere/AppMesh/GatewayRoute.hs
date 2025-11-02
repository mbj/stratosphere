module Stratosphere.AppMesh.GatewayRoute (
        module Exports, GatewayRoute(..), mkGatewayRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GatewayRoute
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html>
    GatewayRoute {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-gatewayroutename>
                  gatewayRouteName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-meshname>
                  meshName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-meshowner>
                  meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-spec>
                  spec :: GatewayRouteSpecProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-virtualgatewayname>
                  virtualGatewayName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRoute ::
  Value Prelude.Text
  -> GatewayRouteSpecProperty -> Value Prelude.Text -> GatewayRoute
mkGatewayRoute meshName spec virtualGatewayName
  = GatewayRoute
      {haddock_workaround_ = (), meshName = meshName, spec = spec,
       virtualGatewayName = virtualGatewayName,
       gatewayRouteName = Prelude.Nothing, meshOwner = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties GatewayRoute where
  toResourceProperties GatewayRoute {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeshName" JSON..= meshName, "Spec" JSON..= spec,
                            "VirtualGatewayName" JSON..= virtualGatewayName]
                           (Prelude.catMaybes
                              [(JSON..=) "GatewayRouteName" Prelude.<$> gatewayRouteName,
                               (JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON GatewayRoute where
  toJSON GatewayRoute {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeshName" JSON..= meshName, "Spec" JSON..= spec,
               "VirtualGatewayName" JSON..= virtualGatewayName]
              (Prelude.catMaybes
                 [(JSON..=) "GatewayRouteName" Prelude.<$> gatewayRouteName,
                  (JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "GatewayRouteName" GatewayRoute where
  type PropertyType "GatewayRouteName" GatewayRoute = Value Prelude.Text
  set newValue GatewayRoute {..}
    = GatewayRoute {gatewayRouteName = Prelude.pure newValue, ..}
instance Property "MeshName" GatewayRoute where
  type PropertyType "MeshName" GatewayRoute = Value Prelude.Text
  set newValue GatewayRoute {..}
    = GatewayRoute {meshName = newValue, ..}
instance Property "MeshOwner" GatewayRoute where
  type PropertyType "MeshOwner" GatewayRoute = Value Prelude.Text
  set newValue GatewayRoute {..}
    = GatewayRoute {meshOwner = Prelude.pure newValue, ..}
instance Property "Spec" GatewayRoute where
  type PropertyType "Spec" GatewayRoute = GatewayRouteSpecProperty
  set newValue GatewayRoute {..} = GatewayRoute {spec = newValue, ..}
instance Property "Tags" GatewayRoute where
  type PropertyType "Tags" GatewayRoute = [Tag]
  set newValue GatewayRoute {..}
    = GatewayRoute {tags = Prelude.pure newValue, ..}
instance Property "VirtualGatewayName" GatewayRoute where
  type PropertyType "VirtualGatewayName" GatewayRoute = Value Prelude.Text
  set newValue GatewayRoute {..}
    = GatewayRoute {virtualGatewayName = newValue, ..}