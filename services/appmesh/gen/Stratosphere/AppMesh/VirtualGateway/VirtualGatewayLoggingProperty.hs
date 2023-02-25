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
  = VirtualGatewayLoggingProperty {accessLog :: (Prelude.Maybe VirtualGatewayAccessLogProperty)}
mkVirtualGatewayLoggingProperty :: VirtualGatewayLoggingProperty
mkVirtualGatewayLoggingProperty
  = VirtualGatewayLoggingProperty {accessLog = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayLoggingProperty where
  toResourceProperties VirtualGatewayLoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayLogging",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog])}
instance JSON.ToJSON VirtualGatewayLoggingProperty where
  toJSON VirtualGatewayLoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog]))
instance Property "AccessLog" VirtualGatewayLoggingProperty where
  type PropertyType "AccessLog" VirtualGatewayLoggingProperty = VirtualGatewayAccessLogProperty
  set newValue VirtualGatewayLoggingProperty {}
    = VirtualGatewayLoggingProperty
        {accessLog = Prelude.pure newValue, ..}