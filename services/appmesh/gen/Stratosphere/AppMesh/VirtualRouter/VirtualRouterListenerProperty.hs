module Stratosphere.AppMesh.VirtualRouter.VirtualRouterListenerProperty (
        module Exports, VirtualRouterListenerProperty(..),
        mkVirtualRouterListenerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualRouter.PortMappingProperty as Exports
import Stratosphere.ResourceProperties
data VirtualRouterListenerProperty
  = VirtualRouterListenerProperty {portMapping :: PortMappingProperty}
mkVirtualRouterListenerProperty ::
  PortMappingProperty -> VirtualRouterListenerProperty
mkVirtualRouterListenerProperty portMapping
  = VirtualRouterListenerProperty {portMapping = portMapping}
instance ToResourceProperties VirtualRouterListenerProperty where
  toResourceProperties VirtualRouterListenerProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualRouter.VirtualRouterListener",
         supportsTags = Prelude.False,
         properties = ["PortMapping" JSON..= portMapping]}
instance JSON.ToJSON VirtualRouterListenerProperty where
  toJSON VirtualRouterListenerProperty {..}
    = JSON.object ["PortMapping" JSON..= portMapping]
instance Property "PortMapping" VirtualRouterListenerProperty where
  type PropertyType "PortMapping" VirtualRouterListenerProperty = PortMappingProperty
  set newValue VirtualRouterListenerProperty {}
    = VirtualRouterListenerProperty {portMapping = newValue, ..}