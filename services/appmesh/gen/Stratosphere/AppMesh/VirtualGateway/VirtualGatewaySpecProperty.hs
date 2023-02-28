module Stratosphere.AppMesh.VirtualGateway.VirtualGatewaySpecProperty (
        module Exports, VirtualGatewaySpecProperty(..),
        mkVirtualGatewaySpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayBackendDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayLoggingProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewaySpecProperty
  = VirtualGatewaySpecProperty {backendDefaults :: (Prelude.Maybe VirtualGatewayBackendDefaultsProperty),
                                listeners :: [VirtualGatewayListenerProperty],
                                logging :: (Prelude.Maybe VirtualGatewayLoggingProperty)}
mkVirtualGatewaySpecProperty ::
  [VirtualGatewayListenerProperty] -> VirtualGatewaySpecProperty
mkVirtualGatewaySpecProperty listeners
  = VirtualGatewaySpecProperty
      {listeners = listeners, backendDefaults = Prelude.Nothing,
       logging = Prelude.Nothing}
instance ToResourceProperties VirtualGatewaySpecProperty where
  toResourceProperties VirtualGatewaySpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewaySpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Listeners" JSON..= listeners]
                           (Prelude.catMaybes
                              [(JSON..=) "BackendDefaults" Prelude.<$> backendDefaults,
                               (JSON..=) "Logging" Prelude.<$> logging]))}
instance JSON.ToJSON VirtualGatewaySpecProperty where
  toJSON VirtualGatewaySpecProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Listeners" JSON..= listeners]
              (Prelude.catMaybes
                 [(JSON..=) "BackendDefaults" Prelude.<$> backendDefaults,
                  (JSON..=) "Logging" Prelude.<$> logging])))
instance Property "BackendDefaults" VirtualGatewaySpecProperty where
  type PropertyType "BackendDefaults" VirtualGatewaySpecProperty = VirtualGatewayBackendDefaultsProperty
  set newValue VirtualGatewaySpecProperty {..}
    = VirtualGatewaySpecProperty
        {backendDefaults = Prelude.pure newValue, ..}
instance Property "Listeners" VirtualGatewaySpecProperty where
  type PropertyType "Listeners" VirtualGatewaySpecProperty = [VirtualGatewayListenerProperty]
  set newValue VirtualGatewaySpecProperty {..}
    = VirtualGatewaySpecProperty {listeners = newValue, ..}
instance Property "Logging" VirtualGatewaySpecProperty where
  type PropertyType "Logging" VirtualGatewaySpecProperty = VirtualGatewayLoggingProperty
  set newValue VirtualGatewaySpecProperty {..}
    = VirtualGatewaySpecProperty {logging = Prelude.pure newValue, ..}