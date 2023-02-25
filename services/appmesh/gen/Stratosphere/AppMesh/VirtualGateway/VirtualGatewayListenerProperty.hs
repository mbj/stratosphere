module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerProperty (
        module Exports, VirtualGatewayListenerProperty(..),
        mkVirtualGatewayListenerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayConnectionPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayHealthCheckPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayPortMappingProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayListenerProperty
  = VirtualGatewayListenerProperty {connectionPool :: (Prelude.Maybe VirtualGatewayConnectionPoolProperty),
                                    healthCheck :: (Prelude.Maybe VirtualGatewayHealthCheckPolicyProperty),
                                    portMapping :: VirtualGatewayPortMappingProperty,
                                    tLS :: (Prelude.Maybe VirtualGatewayListenerTlsProperty)}
mkVirtualGatewayListenerProperty ::
  VirtualGatewayPortMappingProperty -> VirtualGatewayListenerProperty
mkVirtualGatewayListenerProperty portMapping
  = VirtualGatewayListenerProperty
      {portMapping = portMapping, connectionPool = Prelude.Nothing,
       healthCheck = Prelude.Nothing, tLS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayListenerProperty where
  toResourceProperties VirtualGatewayListenerProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListener",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortMapping" JSON..= portMapping]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionPool" Prelude.<$> connectionPool,
                               (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                               (JSON..=) "TLS" Prelude.<$> tLS]))}
instance JSON.ToJSON VirtualGatewayListenerProperty where
  toJSON VirtualGatewayListenerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortMapping" JSON..= portMapping]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionPool" Prelude.<$> connectionPool,
                  (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                  (JSON..=) "TLS" Prelude.<$> tLS])))
instance Property "ConnectionPool" VirtualGatewayListenerProperty where
  type PropertyType "ConnectionPool" VirtualGatewayListenerProperty = VirtualGatewayConnectionPoolProperty
  set newValue VirtualGatewayListenerProperty {..}
    = VirtualGatewayListenerProperty
        {connectionPool = Prelude.pure newValue, ..}
instance Property "HealthCheck" VirtualGatewayListenerProperty where
  type PropertyType "HealthCheck" VirtualGatewayListenerProperty = VirtualGatewayHealthCheckPolicyProperty
  set newValue VirtualGatewayListenerProperty {..}
    = VirtualGatewayListenerProperty
        {healthCheck = Prelude.pure newValue, ..}
instance Property "PortMapping" VirtualGatewayListenerProperty where
  type PropertyType "PortMapping" VirtualGatewayListenerProperty = VirtualGatewayPortMappingProperty
  set newValue VirtualGatewayListenerProperty {..}
    = VirtualGatewayListenerProperty {portMapping = newValue, ..}
instance Property "TLS" VirtualGatewayListenerProperty where
  type PropertyType "TLS" VirtualGatewayListenerProperty = VirtualGatewayListenerTlsProperty
  set newValue VirtualGatewayListenerProperty {..}
    = VirtualGatewayListenerProperty {tLS = Prelude.pure newValue, ..}