module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayLoggingProperty (
        module Exports, VirtualGatewayLoggingProperty(..),
        mkVirtualGatewayLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayAccessLogProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayLoggingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylogging.html>
    VirtualGatewayLoggingProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylogging.html#cfn-appmesh-virtualgateway-virtualgatewaylogging-accesslog>
                                   accessLog :: (Prelude.Maybe VirtualGatewayAccessLogProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayLoggingProperty :: VirtualGatewayLoggingProperty
mkVirtualGatewayLoggingProperty
  = VirtualGatewayLoggingProperty
      {haddock_workaround_ = (), accessLog = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayLoggingProperty where
  toResourceProperties VirtualGatewayLoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayLogging",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog])}
instance JSON.ToJSON VirtualGatewayLoggingProperty where
  toJSON VirtualGatewayLoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog]))
instance Property "AccessLog" VirtualGatewayLoggingProperty where
  type PropertyType "AccessLog" VirtualGatewayLoggingProperty = VirtualGatewayAccessLogProperty
  set newValue VirtualGatewayLoggingProperty {..}
    = VirtualGatewayLoggingProperty
        {accessLog = Prelude.pure newValue, ..}