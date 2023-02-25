module Stratosphere.AppMesh.Route (
        module Exports, Route(..), mkRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.RouteSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Route
  = Route {meshName :: (Value Prelude.Text),
           meshOwner :: (Prelude.Maybe (Value Prelude.Text)),
           routeName :: (Prelude.Maybe (Value Prelude.Text)),
           spec :: RouteSpecProperty,
           tags :: (Prelude.Maybe [Tag]),
           virtualRouterName :: (Value Prelude.Text)}
mkRoute ::
  Value Prelude.Text
  -> RouteSpecProperty -> Value Prelude.Text -> Route
mkRoute meshName spec virtualRouterName
  = Route
      {meshName = meshName, spec = spec,
       virtualRouterName = virtualRouterName, meshOwner = Prelude.Nothing,
       routeName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Route where
  toResourceProperties Route {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeshName" JSON..= meshName, "Spec" JSON..= spec,
                            "VirtualRouterName" JSON..= virtualRouterName]
                           (Prelude.catMaybes
                              [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                               (JSON..=) "RouteName" Prelude.<$> routeName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Route where
  toJSON Route {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeshName" JSON..= meshName, "Spec" JSON..= spec,
               "VirtualRouterName" JSON..= virtualRouterName]
              (Prelude.catMaybes
                 [(JSON..=) "MeshOwner" Prelude.<$> meshOwner,
                  (JSON..=) "RouteName" Prelude.<$> routeName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "MeshName" Route where
  type PropertyType "MeshName" Route = Value Prelude.Text
  set newValue Route {..} = Route {meshName = newValue, ..}
instance Property "MeshOwner" Route where
  type PropertyType "MeshOwner" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {meshOwner = Prelude.pure newValue, ..}
instance Property "RouteName" Route where
  type PropertyType "RouteName" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {routeName = Prelude.pure newValue, ..}
instance Property "Spec" Route where
  type PropertyType "Spec" Route = RouteSpecProperty
  set newValue Route {..} = Route {spec = newValue, ..}
instance Property "Tags" Route where
  type PropertyType "Tags" Route = [Tag]
  set newValue Route {..} = Route {tags = Prelude.pure newValue, ..}
instance Property "VirtualRouterName" Route where
  type PropertyType "VirtualRouterName" Route = Value Prelude.Text
  set newValue Route {..} = Route {virtualRouterName = newValue, ..}