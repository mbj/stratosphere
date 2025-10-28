module Stratosphere.AppMesh.VirtualNode.VirtualNodeSpecProperty (
        module Exports, VirtualNodeSpecProperty(..),
        mkVirtualNodeSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.BackendProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.BackendDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.LoggingProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ServiceDiscoveryProperty as Exports
import Stratosphere.ResourceProperties
data VirtualNodeSpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html>
    VirtualNodeSpecProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backenddefaults>
                             backendDefaults :: (Prelude.Maybe BackendDefaultsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backends>
                             backends :: (Prelude.Maybe [BackendProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-listeners>
                             listeners :: (Prelude.Maybe [ListenerProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-logging>
                             logging :: (Prelude.Maybe LoggingProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-servicediscovery>
                             serviceDiscovery :: (Prelude.Maybe ServiceDiscoveryProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualNodeSpecProperty :: VirtualNodeSpecProperty
mkVirtualNodeSpecProperty
  = VirtualNodeSpecProperty
      {haddock_workaround_ = (), backendDefaults = Prelude.Nothing,
       backends = Prelude.Nothing, listeners = Prelude.Nothing,
       logging = Prelude.Nothing, serviceDiscovery = Prelude.Nothing}
instance ToResourceProperties VirtualNodeSpecProperty where
  toResourceProperties VirtualNodeSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualNodeSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackendDefaults" Prelude.<$> backendDefaults,
                            (JSON..=) "Backends" Prelude.<$> backends,
                            (JSON..=) "Listeners" Prelude.<$> listeners,
                            (JSON..=) "Logging" Prelude.<$> logging,
                            (JSON..=) "ServiceDiscovery" Prelude.<$> serviceDiscovery])}
instance JSON.ToJSON VirtualNodeSpecProperty where
  toJSON VirtualNodeSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackendDefaults" Prelude.<$> backendDefaults,
               (JSON..=) "Backends" Prelude.<$> backends,
               (JSON..=) "Listeners" Prelude.<$> listeners,
               (JSON..=) "Logging" Prelude.<$> logging,
               (JSON..=) "ServiceDiscovery" Prelude.<$> serviceDiscovery]))
instance Property "BackendDefaults" VirtualNodeSpecProperty where
  type PropertyType "BackendDefaults" VirtualNodeSpecProperty = BackendDefaultsProperty
  set newValue VirtualNodeSpecProperty {..}
    = VirtualNodeSpecProperty
        {backendDefaults = Prelude.pure newValue, ..}
instance Property "Backends" VirtualNodeSpecProperty where
  type PropertyType "Backends" VirtualNodeSpecProperty = [BackendProperty]
  set newValue VirtualNodeSpecProperty {..}
    = VirtualNodeSpecProperty {backends = Prelude.pure newValue, ..}
instance Property "Listeners" VirtualNodeSpecProperty where
  type PropertyType "Listeners" VirtualNodeSpecProperty = [ListenerProperty]
  set newValue VirtualNodeSpecProperty {..}
    = VirtualNodeSpecProperty {listeners = Prelude.pure newValue, ..}
instance Property "Logging" VirtualNodeSpecProperty where
  type PropertyType "Logging" VirtualNodeSpecProperty = LoggingProperty
  set newValue VirtualNodeSpecProperty {..}
    = VirtualNodeSpecProperty {logging = Prelude.pure newValue, ..}
instance Property "ServiceDiscovery" VirtualNodeSpecProperty where
  type PropertyType "ServiceDiscovery" VirtualNodeSpecProperty = ServiceDiscoveryProperty
  set newValue VirtualNodeSpecProperty {..}
    = VirtualNodeSpecProperty
        {serviceDiscovery = Prelude.pure newValue, ..}