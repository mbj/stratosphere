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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html>
    VirtualRouterListenerProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html#cfn-appmesh-virtualrouter-virtualrouterlistener-portmapping>
                                   portMapping :: PortMappingProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualRouterListenerProperty ::
  PortMappingProperty -> VirtualRouterListenerProperty
mkVirtualRouterListenerProperty portMapping
  = VirtualRouterListenerProperty
      {haddock_workaround_ = (), portMapping = portMapping}
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
  set newValue VirtualRouterListenerProperty {..}
    = VirtualRouterListenerProperty {portMapping = newValue, ..}