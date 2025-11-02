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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html>
    ListenerTimeoutProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-grpc>
                             gRPC :: (Prelude.Maybe GrpcTimeoutProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-http>
                             hTTP :: (Prelude.Maybe HttpTimeoutProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-http2>
                             hTTP2 :: (Prelude.Maybe HttpTimeoutProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-tcp>
                             tCP :: (Prelude.Maybe TcpTimeoutProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTimeoutProperty :: ListenerTimeoutProperty
mkListenerTimeoutProperty
  = ListenerTimeoutProperty
      {haddock_workaround_ = (), gRPC = Prelude.Nothing,
       hTTP = Prelude.Nothing, hTTP2 = Prelude.Nothing,
       tCP = Prelude.Nothing}
instance ToResourceProperties ListenerTimeoutProperty where
  toResourceProperties ListenerTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTimeout",
         supportsTags = Prelude.False,
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