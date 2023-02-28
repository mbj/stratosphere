module Stratosphere.AppMesh.VirtualNode.VirtualNodeHttpConnectionPoolProperty (
        VirtualNodeHttpConnectionPoolProperty(..),
        mkVirtualNodeHttpConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualNodeHttpConnectionPoolProperty
  = VirtualNodeHttpConnectionPoolProperty {maxConnections :: (Value Prelude.Integer),
                                           maxPendingRequests :: (Prelude.Maybe (Value Prelude.Integer))}
mkVirtualNodeHttpConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualNodeHttpConnectionPoolProperty
mkVirtualNodeHttpConnectionPoolProperty maxConnections
  = VirtualNodeHttpConnectionPoolProperty
      {maxConnections = maxConnections,
       maxPendingRequests = Prelude.Nothing}
instance ToResourceProperties VirtualNodeHttpConnectionPoolProperty where
  toResourceProperties VirtualNodeHttpConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualNodeHttpConnectionPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxConnections" JSON..= maxConnections]
                           (Prelude.catMaybes
                              [(JSON..=) "MaxPendingRequests" Prelude.<$> maxPendingRequests]))}
instance JSON.ToJSON VirtualNodeHttpConnectionPoolProperty where
  toJSON VirtualNodeHttpConnectionPoolProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxConnections" JSON..= maxConnections]
              (Prelude.catMaybes
                 [(JSON..=) "MaxPendingRequests" Prelude.<$> maxPendingRequests])))
instance Property "MaxConnections" VirtualNodeHttpConnectionPoolProperty where
  type PropertyType "MaxConnections" VirtualNodeHttpConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualNodeHttpConnectionPoolProperty {..}
    = VirtualNodeHttpConnectionPoolProperty
        {maxConnections = newValue, ..}
instance Property "MaxPendingRequests" VirtualNodeHttpConnectionPoolProperty where
  type PropertyType "MaxPendingRequests" VirtualNodeHttpConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualNodeHttpConnectionPoolProperty {..}
    = VirtualNodeHttpConnectionPoolProperty
        {maxPendingRequests = Prelude.pure newValue, ..}