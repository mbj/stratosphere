module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayHttp2ConnectionPoolProperty (
        VirtualGatewayHttp2ConnectionPoolProperty(..),
        mkVirtualGatewayHttp2ConnectionPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayHttp2ConnectionPoolProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhttp2connectionpool.html>
    VirtualGatewayHttp2ConnectionPoolProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhttp2connectionpool.html#cfn-appmesh-virtualgateway-virtualgatewayhttp2connectionpool-maxrequests>
                                               maxRequests :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayHttp2ConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualGatewayHttp2ConnectionPoolProperty
mkVirtualGatewayHttp2ConnectionPoolProperty maxRequests
  = VirtualGatewayHttp2ConnectionPoolProperty
      {haddock_workaround_ = (), maxRequests = maxRequests}
instance ToResourceProperties VirtualGatewayHttp2ConnectionPoolProperty where
  toResourceProperties VirtualGatewayHttp2ConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayHttp2ConnectionPool",
         supportsTags = Prelude.False,
         properties = ["MaxRequests" JSON..= maxRequests]}
instance JSON.ToJSON VirtualGatewayHttp2ConnectionPoolProperty where
  toJSON VirtualGatewayHttp2ConnectionPoolProperty {..}
    = JSON.object ["MaxRequests" JSON..= maxRequests]
instance Property "MaxRequests" VirtualGatewayHttp2ConnectionPoolProperty where
  type PropertyType "MaxRequests" VirtualGatewayHttp2ConnectionPoolProperty = Value Prelude.Integer
  set newValue VirtualGatewayHttp2ConnectionPoolProperty {..}
    = VirtualGatewayHttp2ConnectionPoolProperty
        {maxRequests = newValue, ..}