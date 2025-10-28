module Stratosphere.AppMesh.VirtualNode.ListenerProperty (
        module Exports, ListenerProperty(..), mkListenerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.HealthCheckProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTimeoutProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.OutlierDetectionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.PortMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualNodeConnectionPoolProperty as Exports
import Stratosphere.ResourceProperties
data ListenerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html>
    ListenerProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-connectionpool>
                      connectionPool :: (Prelude.Maybe VirtualNodeConnectionPoolProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck>
                      healthCheck :: (Prelude.Maybe HealthCheckProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-outlierdetection>
                      outlierDetection :: (Prelude.Maybe OutlierDetectionProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping>
                      portMapping :: PortMappingProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-tls>
                      tLS :: (Prelude.Maybe ListenerTlsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-timeout>
                      timeout :: (Prelude.Maybe ListenerTimeoutProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerProperty :: PortMappingProperty -> ListenerProperty
mkListenerProperty portMapping
  = ListenerProperty
      {haddock_workaround_ = (), portMapping = portMapping,
       connectionPool = Prelude.Nothing, healthCheck = Prelude.Nothing,
       outlierDetection = Prelude.Nothing, tLS = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties ListenerProperty where
  toResourceProperties ListenerProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.Listener",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortMapping" JSON..= portMapping]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionPool" Prelude.<$> connectionPool,
                               (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                               (JSON..=) "OutlierDetection" Prelude.<$> outlierDetection,
                               (JSON..=) "TLS" Prelude.<$> tLS,
                               (JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON ListenerProperty where
  toJSON ListenerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortMapping" JSON..= portMapping]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionPool" Prelude.<$> connectionPool,
                  (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                  (JSON..=) "OutlierDetection" Prelude.<$> outlierDetection,
                  (JSON..=) "TLS" Prelude.<$> tLS,
                  (JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "ConnectionPool" ListenerProperty where
  type PropertyType "ConnectionPool" ListenerProperty = VirtualNodeConnectionPoolProperty
  set newValue ListenerProperty {..}
    = ListenerProperty {connectionPool = Prelude.pure newValue, ..}
instance Property "HealthCheck" ListenerProperty where
  type PropertyType "HealthCheck" ListenerProperty = HealthCheckProperty
  set newValue ListenerProperty {..}
    = ListenerProperty {healthCheck = Prelude.pure newValue, ..}
instance Property "OutlierDetection" ListenerProperty where
  type PropertyType "OutlierDetection" ListenerProperty = OutlierDetectionProperty
  set newValue ListenerProperty {..}
    = ListenerProperty {outlierDetection = Prelude.pure newValue, ..}
instance Property "PortMapping" ListenerProperty where
  type PropertyType "PortMapping" ListenerProperty = PortMappingProperty
  set newValue ListenerProperty {..}
    = ListenerProperty {portMapping = newValue, ..}
instance Property "TLS" ListenerProperty where
  type PropertyType "TLS" ListenerProperty = ListenerTlsProperty
  set newValue ListenerProperty {..}
    = ListenerProperty {tLS = Prelude.pure newValue, ..}
instance Property "Timeout" ListenerProperty where
  type PropertyType "Timeout" ListenerProperty = ListenerTimeoutProperty
  set newValue ListenerProperty {..}
    = ListenerProperty {timeout = Prelude.pure newValue, ..}