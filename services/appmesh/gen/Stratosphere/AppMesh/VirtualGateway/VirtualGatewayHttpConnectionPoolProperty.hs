module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayHttpConnectionPoolProperty (
        VirtualGatewayHttpConnectionPoolProperty(..),
        mkVirtualGatewayHttpConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayHttpConnectionPoolProperty
  = VirtualGatewayHttpConnectionPoolProperty {maxConnections :: (Value Prelude.Integer),
                                              maxPendingRequests :: (Prelude.Maybe (Value Prelude.Integer))}
mkVirtualGatewayHttpConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualGatewayHttpConnectionPoolProperty
mkVirtualGatewayHttpConnectionPoolProperty maxConnections
  = VirtualGatewayHttpConnectionPoolProperty
      {maxConnections = maxConnections,
       maxPendingRequests = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayHttpConnectionPoolProperty where
  toResourceProperties VirtualGatewayHttpConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayHttpConnectionPool",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxConnections" JSON..= maxConnections]
                           (Prelude.catMaybes
                              [(JSON..=) "MaxPendingRequests" Prelude.<$> maxPendingRequests]))}
instance JSON.ToJSON VirtualGatewayHttpConnectionPoolProperty where
  toJSON VirtualGatewayHttpConnectionPoolProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxConnections" JSON..= maxConnections]
              (Prelude.catMaybes
                 [(JSON..=) "MaxPendingRequests" Prelude.<$> maxPendingRequests])))
instance Property "MaxConnections" VirtualGatewayHttpConnectionPoolProperty where
  type PropertyType "MaxConnections" VirtualGatewayHttpConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualGatewayHttpConnectionPoolProperty {..}
    = VirtualGatewayHttpConnectionPoolProperty
        {maxConnections = newValue, ..}
instance Property "MaxPendingRequests" VirtualGatewayHttpConnectionPoolProperty where
  type PropertyType "MaxPendingRequests" VirtualGatewayHttpConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualGatewayHttpConnectionPoolProperty {..}
    = VirtualGatewayHttpConnectionPoolProperty
        {maxPendingRequests = Prelude.pure newValue, ..}