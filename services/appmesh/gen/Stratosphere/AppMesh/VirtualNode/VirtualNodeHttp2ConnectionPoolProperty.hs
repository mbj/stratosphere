module Stratosphere.AppMesh.VirtualNode.VirtualNodeHttp2ConnectionPoolProperty (
        VirtualNodeHttp2ConnectionPoolProperty(..),
        mkVirtualNodeHttp2ConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualNodeHttp2ConnectionPoolProperty
  = VirtualNodeHttp2ConnectionPoolProperty {maxRequests :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualNodeHttp2ConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualNodeHttp2ConnectionPoolProperty
mkVirtualNodeHttp2ConnectionPoolProperty maxRequests
  = VirtualNodeHttp2ConnectionPoolProperty
      {maxRequests = maxRequests}
instance ToResourceProperties VirtualNodeHttp2ConnectionPoolProperty where
  toResourceProperties VirtualNodeHttp2ConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualNodeHttp2ConnectionPool",
         supportsTags = Prelude.False,
         properties = ["MaxRequests" JSON..= maxRequests]}
instance JSON.ToJSON VirtualNodeHttp2ConnectionPoolProperty where
  toJSON VirtualNodeHttp2ConnectionPoolProperty {..}
    = JSON.object ["MaxRequests" JSON..= maxRequests]
instance Property "MaxRequests" VirtualNodeHttp2ConnectionPoolProperty where
  type PropertyType "MaxRequests" VirtualNodeHttp2ConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualNodeHttp2ConnectionPoolProperty {}
    = VirtualNodeHttp2ConnectionPoolProperty
        {maxRequests = newValue, ..}