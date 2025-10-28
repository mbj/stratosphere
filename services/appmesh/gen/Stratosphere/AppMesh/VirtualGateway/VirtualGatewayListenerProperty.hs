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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html>
    VirtualGatewayListenerProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-connectionpool>
                                    connectionPool :: (Prelude.Maybe VirtualGatewayConnectionPoolProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-healthcheck>
                                    healthCheck :: (Prelude.Maybe VirtualGatewayHealthCheckPolicyProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-portmapping>
                                    portMapping :: VirtualGatewayPortMappingProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-tls>
                                    tLS :: (Prelude.Maybe VirtualGatewayListenerTlsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayListenerProperty ::
  VirtualGatewayPortMappingProperty -> VirtualGatewayListenerProperty
mkVirtualGatewayListenerProperty portMapping
  = VirtualGatewayListenerProperty
      {haddock_workaround_ = (), portMapping = portMapping,
       connectionPool = Prelude.Nothing, healthCheck = Prelude.Nothing,
       tLS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayListenerProperty where
  toResourceProperties VirtualGatewayListenerProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListener",
         supportsTags = Prelude.False,
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