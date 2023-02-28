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
  = VirtualNodeSpecProperty {backendDefaults :: (Prelude.Maybe BackendDefaultsProperty),
                             backends :: (Prelude.Maybe [BackendProperty]),
                             listeners :: (Prelude.Maybe [ListenerProperty]),
                             logging :: (Prelude.Maybe LoggingProperty),
                             serviceDiscovery :: (Prelude.Maybe ServiceDiscoveryProperty)}
mkVirtualNodeSpecProperty :: VirtualNodeSpecProperty
mkVirtualNodeSpecProperty
  = VirtualNodeSpecProperty
      {backendDefaults = Prelude.Nothing, backends = Prelude.Nothing,
       listeners = Prelude.Nothing, logging = Prelude.Nothing,
       serviceDiscovery = Prelude.Nothing}
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