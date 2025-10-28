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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodehttpconnectionpool.html>
    VirtualNodeHttpConnectionPoolProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodehttpconnectionpool.html#cfn-appmesh-virtualnode-virtualnodehttpconnectionpool-maxconnections>
                                           maxConnections :: (Value Prelude.Integer),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodehttpconnectionpool.html#cfn-appmesh-virtualnode-virtualnodehttpconnectionpool-maxpendingrequests>
                                           maxPendingRequests :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualNodeHttpConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualNodeHttpConnectionPoolProperty
mkVirtualNodeHttpConnectionPoolProperty maxConnections
  = VirtualNodeHttpConnectionPoolProperty
      {haddock_workaround_ = (), maxConnections = maxConnections,
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