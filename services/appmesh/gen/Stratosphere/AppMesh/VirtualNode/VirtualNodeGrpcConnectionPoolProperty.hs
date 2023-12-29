module Stratosphere.AppMesh.VirtualNode.VirtualNodeGrpcConnectionPoolProperty (
        VirtualNodeGrpcConnectionPoolProperty(..),
        mkVirtualNodeGrpcConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualNodeGrpcConnectionPoolProperty
  = VirtualNodeGrpcConnectionPoolProperty {maxRequests :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualNodeGrpcConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualNodeGrpcConnectionPoolProperty
mkVirtualNodeGrpcConnectionPoolProperty maxRequests
  = VirtualNodeGrpcConnectionPoolProperty {maxRequests = maxRequests}
instance ToResourceProperties VirtualNodeGrpcConnectionPoolProperty where
  toResourceProperties VirtualNodeGrpcConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualNodeGrpcConnectionPool",
         supportsTags = Prelude.False,
         properties = ["MaxRequests" JSON..= maxRequests]}
instance JSON.ToJSON VirtualNodeGrpcConnectionPoolProperty where
  toJSON VirtualNodeGrpcConnectionPoolProperty {..}
    = JSON.object ["MaxRequests" JSON..= maxRequests]
instance Property "MaxRequests" VirtualNodeGrpcConnectionPoolProperty where
  type PropertyType "MaxRequests" VirtualNodeGrpcConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualNodeGrpcConnectionPoolProperty {}
    = VirtualNodeGrpcConnectionPoolProperty
        {maxRequests = newValue, ..}