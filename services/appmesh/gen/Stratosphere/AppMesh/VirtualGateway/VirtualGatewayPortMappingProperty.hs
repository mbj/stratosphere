module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayPortMappingProperty (
        VirtualGatewayPortMappingProperty(..),
        mkVirtualGatewayPortMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayPortMappingProperty
  = VirtualGatewayPortMappingProperty {port :: (Value Prelude.Integer),
                                       protocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayPortMappingProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> VirtualGatewayPortMappingProperty
mkVirtualGatewayPortMappingProperty port protocol
  = VirtualGatewayPortMappingProperty
      {port = port, protocol = protocol}
instance ToResourceProperties VirtualGatewayPortMappingProperty where
  toResourceProperties VirtualGatewayPortMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayPortMapping",
         supportsTags = Prelude.False,
         properties = ["Port" JSON..= port, "Protocol" JSON..= protocol]}
instance JSON.ToJSON VirtualGatewayPortMappingProperty where
  toJSON VirtualGatewayPortMappingProperty {..}
    = JSON.object ["Port" JSON..= port, "Protocol" JSON..= protocol]
instance Property "Port" VirtualGatewayPortMappingProperty where
  type PropertyType "Port" VirtualGatewayPortMappingProperty = Value Prelude.Integer
  set newValue VirtualGatewayPortMappingProperty {..}
    = VirtualGatewayPortMappingProperty {port = newValue, ..}
instance Property "Protocol" VirtualGatewayPortMappingProperty where
  type PropertyType "Protocol" VirtualGatewayPortMappingProperty = Value Prelude.Text
  set newValue VirtualGatewayPortMappingProperty {..}
    = VirtualGatewayPortMappingProperty {protocol = newValue, ..}