module Stratosphere.AppMesh.VirtualNode.VirtualNodeConnectionPoolProperty (
        module Exports, VirtualNodeConnectionPoolProperty(..),
        mkVirtualNodeConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualNodeGrpcConnectionPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualNodeHttp2ConnectionPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualNodeHttpConnectionPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualNodeTcpConnectionPoolProperty as Exports
import Stratosphere.ResourceProperties
data VirtualNodeConnectionPoolProperty
  = VirtualNodeConnectionPoolProperty {gRPC :: (Prelude.Maybe VirtualNodeGrpcConnectionPoolProperty),
                                       hTTP :: (Prelude.Maybe VirtualNodeHttpConnectionPoolProperty),
                                       hTTP2 :: (Prelude.Maybe VirtualNodeHttp2ConnectionPoolProperty),
                                       tCP :: (Prelude.Maybe VirtualNodeTcpConnectionPoolProperty)}
mkVirtualNodeConnectionPoolProperty ::
  VirtualNodeConnectionPoolProperty
mkVirtualNodeConnectionPoolProperty
  = VirtualNodeConnectionPoolProperty
      {gRPC = Prelude.Nothing, hTTP = Prelude.Nothing,
       hTTP2 = Prelude.Nothing, tCP = Prelude.Nothing}
instance ToResourceProperties VirtualNodeConnectionPoolProperty where
  toResourceProperties VirtualNodeConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualNodeConnectionPool",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GRPC" Prelude.<$> gRPC,
                            (JSON..=) "HTTP" Prelude.<$> hTTP,
                            (JSON..=) "HTTP2" Prelude.<$> hTTP2,
                            (JSON..=) "TCP" Prelude.<$> tCP])}
instance JSON.ToJSON VirtualNodeConnectionPoolProperty where
  toJSON VirtualNodeConnectionPoolProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GRPC" Prelude.<$> gRPC,
               (JSON..=) "HTTP" Prelude.<$> hTTP,
               (JSON..=) "HTTP2" Prelude.<$> hTTP2,
               (JSON..=) "TCP" Prelude.<$> tCP]))
instance Property "GRPC" VirtualNodeConnectionPoolProperty where
  type PropertyType "GRPC" VirtualNodeConnectionPoolProperty = VirtualNodeGrpcConnectionPoolProperty
  set newValue VirtualNodeConnectionPoolProperty {..}
    = VirtualNodeConnectionPoolProperty
        {gRPC = Prelude.pure newValue, ..}
instance Property "HTTP" VirtualNodeConnectionPoolProperty where
  type PropertyType "HTTP" VirtualNodeConnectionPoolProperty = VirtualNodeHttpConnectionPoolProperty
  set newValue VirtualNodeConnectionPoolProperty {..}
    = VirtualNodeConnectionPoolProperty
        {hTTP = Prelude.pure newValue, ..}
instance Property "HTTP2" VirtualNodeConnectionPoolProperty where
  type PropertyType "HTTP2" VirtualNodeConnectionPoolProperty = VirtualNodeHttp2ConnectionPoolProperty
  set newValue VirtualNodeConnectionPoolProperty {..}
    = VirtualNodeConnectionPoolProperty
        {hTTP2 = Prelude.pure newValue, ..}
instance Property "TCP" VirtualNodeConnectionPoolProperty where
  type PropertyType "TCP" VirtualNodeConnectionPoolProperty = VirtualNodeTcpConnectionPoolProperty
  set newValue VirtualNodeConnectionPoolProperty {..}
    = VirtualNodeConnectionPoolProperty
        {tCP = Prelude.pure newValue, ..}