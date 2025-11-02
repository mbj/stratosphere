module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayConnectionPoolProperty (
        module Exports, VirtualGatewayConnectionPoolProperty(..),
        mkVirtualGatewayConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayGrpcConnectionPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayHttp2ConnectionPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayHttpConnectionPoolProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayConnectionPoolProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayconnectionpool.html>
    VirtualGatewayConnectionPoolProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayconnectionpool.html#cfn-appmesh-virtualgateway-virtualgatewayconnectionpool-grpc>
                                          gRPC :: (Prelude.Maybe VirtualGatewayGrpcConnectionPoolProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayconnectionpool.html#cfn-appmesh-virtualgateway-virtualgatewayconnectionpool-http>
                                          hTTP :: (Prelude.Maybe VirtualGatewayHttpConnectionPoolProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayconnectionpool.html#cfn-appmesh-virtualgateway-virtualgatewayconnectionpool-http2>
                                          hTTP2 :: (Prelude.Maybe VirtualGatewayHttp2ConnectionPoolProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayConnectionPoolProperty ::
  VirtualGatewayConnectionPoolProperty
mkVirtualGatewayConnectionPoolProperty
  = VirtualGatewayConnectionPoolProperty
      {haddock_workaround_ = (), gRPC = Prelude.Nothing,
       hTTP = Prelude.Nothing, hTTP2 = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayConnectionPoolProperty where
  toResourceProperties VirtualGatewayConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayConnectionPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GRPC" Prelude.<$> gRPC,
                            (JSON..=) "HTTP" Prelude.<$> hTTP,
                            (JSON..=) "HTTP2" Prelude.<$> hTTP2])}
instance JSON.ToJSON VirtualGatewayConnectionPoolProperty where
  toJSON VirtualGatewayConnectionPoolProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GRPC" Prelude.<$> gRPC,
               (JSON..=) "HTTP" Prelude.<$> hTTP,
               (JSON..=) "HTTP2" Prelude.<$> hTTP2]))
instance Property "GRPC" VirtualGatewayConnectionPoolProperty where
  type PropertyType "GRPC" VirtualGatewayConnectionPoolProperty = VirtualGatewayGrpcConnectionPoolProperty
  set newValue VirtualGatewayConnectionPoolProperty {..}
    = VirtualGatewayConnectionPoolProperty
        {gRPC = Prelude.pure newValue, ..}
instance Property "HTTP" VirtualGatewayConnectionPoolProperty where
  type PropertyType "HTTP" VirtualGatewayConnectionPoolProperty = VirtualGatewayHttpConnectionPoolProperty
  set newValue VirtualGatewayConnectionPoolProperty {..}
    = VirtualGatewayConnectionPoolProperty
        {hTTP = Prelude.pure newValue, ..}
instance Property "HTTP2" VirtualGatewayConnectionPoolProperty where
  type PropertyType "HTTP2" VirtualGatewayConnectionPoolProperty = VirtualGatewayHttp2ConnectionPoolProperty
  set newValue VirtualGatewayConnectionPoolProperty {..}
    = VirtualGatewayConnectionPoolProperty
        {hTTP2 = Prelude.pure newValue, ..}