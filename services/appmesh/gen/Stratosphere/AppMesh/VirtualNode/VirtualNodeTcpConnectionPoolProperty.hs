module Stratosphere.AppMesh.VirtualNode.VirtualNodeTcpConnectionPoolProperty (
        VirtualNodeTcpConnectionPoolProperty(..),
        mkVirtualNodeTcpConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualNodeTcpConnectionPoolProperty
  = VirtualNodeTcpConnectionPoolProperty {maxConnections :: (Value Prelude.Integer)}
mkVirtualNodeTcpConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualNodeTcpConnectionPoolProperty
mkVirtualNodeTcpConnectionPoolProperty maxConnections
  = VirtualNodeTcpConnectionPoolProperty
      {maxConnections = maxConnections}
instance ToResourceProperties VirtualNodeTcpConnectionPoolProperty where
  toResourceProperties VirtualNodeTcpConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualNodeTcpConnectionPool",
         supportsTags = Prelude.False,
         properties = ["MaxConnections" JSON..= maxConnections]}
instance JSON.ToJSON VirtualNodeTcpConnectionPoolProperty where
  toJSON VirtualNodeTcpConnectionPoolProperty {..}
    = JSON.object ["MaxConnections" JSON..= maxConnections]
instance Property "MaxConnections" VirtualNodeTcpConnectionPoolProperty where
  type PropertyType "MaxConnections" VirtualNodeTcpConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualNodeTcpConnectionPoolProperty {}
    = VirtualNodeTcpConnectionPoolProperty
        {maxConnections = newValue, ..}