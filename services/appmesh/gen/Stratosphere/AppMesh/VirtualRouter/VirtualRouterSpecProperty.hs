module Stratosphere.AppMesh.VirtualRouter.VirtualRouterSpecProperty (
        module Exports, VirtualRouterSpecProperty(..),
        mkVirtualRouterSpecProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualRouter.VirtualRouterListenerProperty as Exports
import Stratosphere.ResourceProperties
data VirtualRouterSpecProperty
  = VirtualRouterSpecProperty {listeners :: [VirtualRouterListenerProperty]}
mkVirtualRouterSpecProperty ::
  [VirtualRouterListenerProperty] -> VirtualRouterSpecProperty
mkVirtualRouterSpecProperty listeners
  = VirtualRouterSpecProperty {listeners = listeners}
instance ToResourceProperties VirtualRouterSpecProperty where
  toResourceProperties VirtualRouterSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualRouter.VirtualRouterSpec",
         properties = ["Listeners" JSON..= listeners]}
instance JSON.ToJSON VirtualRouterSpecProperty where
  toJSON VirtualRouterSpecProperty {..}
    = JSON.object ["Listeners" JSON..= listeners]
instance Property "Listeners" VirtualRouterSpecProperty where
  type PropertyType "Listeners" VirtualRouterSpecProperty = [VirtualRouterListenerProperty]
  set newValue VirtualRouterSpecProperty {}
    = VirtualRouterSpecProperty {listeners = newValue, ..}