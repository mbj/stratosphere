module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayAccessLogProperty (
        module Exports, VirtualGatewayAccessLogProperty(..),
        mkVirtualGatewayAccessLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayFileAccessLogProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayAccessLogProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayaccesslog.html>
    VirtualGatewayAccessLogProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayaccesslog.html#cfn-appmesh-virtualgateway-virtualgatewayaccesslog-file>
                                     file :: (Prelude.Maybe VirtualGatewayFileAccessLogProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayAccessLogProperty ::
  VirtualGatewayAccessLogProperty
mkVirtualGatewayAccessLogProperty
  = VirtualGatewayAccessLogProperty
      {haddock_workaround_ = (), file = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayAccessLogProperty where
  toResourceProperties VirtualGatewayAccessLogProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayAccessLog",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "File" Prelude.<$> file])}
instance JSON.ToJSON VirtualGatewayAccessLogProperty where
  toJSON VirtualGatewayAccessLogProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "File" Prelude.<$> file]))
instance Property "File" VirtualGatewayAccessLogProperty where
  type PropertyType "File" VirtualGatewayAccessLogProperty = VirtualGatewayFileAccessLogProperty
  set newValue VirtualGatewayAccessLogProperty {..}
    = VirtualGatewayAccessLogProperty
        {file = Prelude.pure newValue, ..}