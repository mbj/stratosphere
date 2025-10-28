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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhttpconnectionpool.html>
    VirtualGatewayHttpConnectionPoolProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhttpconnectionpool.html#cfn-appmesh-virtualgateway-virtualgatewayhttpconnectionpool-maxconnections>
                                              maxConnections :: (Value Prelude.Integer),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhttpconnectionpool.html#cfn-appmesh-virtualgateway-virtualgatewayhttpconnectionpool-maxpendingrequests>
                                              maxPendingRequests :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayHttpConnectionPoolProperty ::
  Value Prelude.Integer -> VirtualGatewayHttpConnectionPoolProperty
mkVirtualGatewayHttpConnectionPoolProperty maxConnections
  = VirtualGatewayHttpConnectionPoolProperty
      {haddock_workaround_ = (), maxConnections = maxConnections,
       maxPendingRequests = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayHttpConnectionPoolProperty where
  toResourceProperties VirtualGatewayHttpConnectionPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayHttpConnectionPool",
         supportsTags = Prelude.False,
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