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
  = VirtualGatewayFileAccessLogProperty {format :: (Prelude.Maybe LoggingFormatProperty),
                                         path :: (Value Prelude.Text)}
mkVirtualGatewayFileAccessLogProperty ::
  Value Prelude.Text -> VirtualGatewayFileAccessLogProperty
mkVirtualGatewayFileAccessLogProperty path
  = VirtualGatewayFileAccessLogProperty
      {path = path, format = Prelude.Nothing}
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