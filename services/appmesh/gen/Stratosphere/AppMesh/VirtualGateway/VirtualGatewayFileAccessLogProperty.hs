module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayFileAccessLogProperty (
        module Exports, VirtualGatewayFileAccessLogProperty(..),
        mkVirtualGatewayFileAccessLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.LoggingFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayFileAccessLogProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayfileaccesslog.html>
    VirtualGatewayFileAccessLogProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayfileaccesslog.html#cfn-appmesh-virtualgateway-virtualgatewayfileaccesslog-format>
                                         format :: (Prelude.Maybe LoggingFormatProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayfileaccesslog.html#cfn-appmesh-virtualgateway-virtualgatewayfileaccesslog-path>
                                         path :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayFileAccessLogProperty ::
  Value Prelude.Text -> VirtualGatewayFileAccessLogProperty
mkVirtualGatewayFileAccessLogProperty path
  = VirtualGatewayFileAccessLogProperty
      {haddock_workaround_ = (), path = path, format = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayFileAccessLogProperty where
  toResourceProperties VirtualGatewayFileAccessLogProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayFileAccessLog",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Path" JSON..= path]
                           (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format]))}
instance JSON.ToJSON VirtualGatewayFileAccessLogProperty where
  toJSON VirtualGatewayFileAccessLogProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Path" JSON..= path]
              (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format])))
instance Property "Format" VirtualGatewayFileAccessLogProperty where
  type PropertyType "Format" VirtualGatewayFileAccessLogProperty = LoggingFormatProperty
  set newValue VirtualGatewayFileAccessLogProperty {..}
    = VirtualGatewayFileAccessLogProperty
        {format = Prelude.pure newValue, ..}
instance Property "Path" VirtualGatewayFileAccessLogProperty where
  type PropertyType "Path" VirtualGatewayFileAccessLogProperty = Value Prelude.Text
  set newValue VirtualGatewayFileAccessLogProperty {..}
    = VirtualGatewayFileAccessLogProperty {path = newValue, ..}