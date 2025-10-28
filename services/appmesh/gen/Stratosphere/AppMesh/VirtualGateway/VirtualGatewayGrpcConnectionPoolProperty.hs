module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayGrpcConnectionPoolProperty (
        VirtualGatewayGrpcConnectionPoolProperty(..),
        mkVirtualGatewayGrpcConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayGrpcConnectionPoolProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaygrpcconnectionpool.html>
    VirtualGatewayGrpcConnectionPoolProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaygrpcconnectionpool.html#cfn-appmesh-virtualgateway-virtualgatewaygrpcconnectionpool-maxrequests>
                                              maxRequests :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayGrpcConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualGatewayGrpcConnectionPoolProperty
mkVirtualGatewayGrpcConnectionPoolProperty maxRequests
  = VirtualGatewayGrpcConnectionPoolProperty
      {haddock_workaround_ = (), maxRequests = maxRequests}
instance ToResourceProperties VirtualGatewayGrpcConnectionPoolProperty where
  toResourceProperties VirtualGatewayGrpcConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayGrpcConnectionPool",
         supportsTags = Prelude.False,
         properties = ["MaxRequests" JSON..= maxRequests]}
instance JSON.ToJSON VirtualGatewayGrpcConnectionPoolProperty where
  toJSON VirtualGatewayGrpcConnectionPoolProperty {..}
    = JSON.object ["MaxRequests" JSON..= maxRequests]
instance Property "MaxRequests" VirtualGatewayGrpcConnectionPoolProperty where
  type PropertyType "MaxRequests" VirtualGatewayGrpcConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualGatewayGrpcConnectionPoolProperty {..}
    = VirtualGatewayGrpcConnectionPoolProperty
        {maxRequests = newValue, ..}