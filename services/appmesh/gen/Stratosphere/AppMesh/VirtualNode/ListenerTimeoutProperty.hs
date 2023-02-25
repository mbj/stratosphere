module Stratosphere.AppMesh.VirtualNode.ListenerTimeoutProperty (
        module Exports, ListenerTimeoutProperty(..),
        mkListenerTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.GrpcTimeoutProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.HttpTimeoutProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TcpTimeoutProperty as Exports
import Stratosphere.ResourceProperties
data ListenerTimeoutProperty
  = ListenerTimeoutProperty {gRPC :: (Prelude.Maybe GrpcTimeoutProperty),
                             hTTP :: (Prelude.Maybe HttpTimeoutProperty),
                             hTTP2 :: (Prelude.Maybe HttpTimeoutProperty),
                             tCP :: (Prelude.Maybe TcpTimeoutProperty)}
mkListenerTimeoutProperty :: ListenerTimeoutProperty
mkListenerTimeoutProperty
  = ListenerTimeoutProperty
      {gRPC = Prelude.Nothing, hTTP = Prelude.Nothing,
       hTTP2 = Prelude.Nothing, tCP = Prelude.Nothing}
instance ToResourceProperties ListenerTimeoutProperty where
  toResourceProperties ListenerTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTimeout",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GRPC" Prelude.<$> gRPC,
                            (JSON..=) "HTTP" Prelude.<$> hTTP,
                            (JSON..=) "HTTP2" Prelude.<$> hTTP2,
                            (JSON..=) "TCP" Prelude.<$> tCP])}
instance JSON.ToJSON ListenerTimeoutProperty where
  toJSON ListenerTimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GRPC" Prelude.<$> gRPC,
               (JSON..=) "HTTP" Prelude.<$> hTTP,
               (JSON..=) "HTTP2" Prelude.<$> hTTP2,
               (JSON..=) "TCP" Prelude.<$> tCP]))
instance Property "GRPC" ListenerTimeoutProperty where
  type PropertyType "GRPC" ListenerTimeoutProperty = GrpcTimeoutProperty
  set newValue ListenerTimeoutProperty {..}
    = ListenerTimeoutProperty {gRPC = Prelude.pure newValue, ..}
instance Property "HTTP" ListenerTimeoutProperty where
  type PropertyType "HTTP" ListenerTimeoutProperty = HttpTimeoutProperty
  set newValue ListenerTimeoutProperty {..}
    = ListenerTimeoutProperty {hTTP = Prelude.pure newValue, ..}
instance Property "HTTP2" ListenerTimeoutProperty where
  type PropertyType "HTTP2" ListenerTimeoutProperty = HttpTimeoutProperty
  set newValue ListenerTimeoutProperty {..}
    = ListenerTimeoutProperty {hTTP2 = Prelude.pure newValue, ..}
instance Property "TCP" ListenerTimeoutProperty where
  type PropertyType "TCP" ListenerTimeoutProperty = TcpTimeoutProperty
  set newValue ListenerTimeoutProperty {..}
    = ListenerTimeoutProperty {tCP = Prelude.pure newValue, ..}