module Stratosphere.AppMesh.VirtualRouter.PortMappingProperty (
        PortMappingProperty(..), mkPortMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortMappingProperty
  = PortMappingProperty {port :: (Value Prelude.Integer),
                         protocol :: (Value Prelude.Text)}
mkPortMappingProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> PortMappingProperty
mkPortMappingProperty port protocol
  = PortMappingProperty {port = port, protocol = protocol}
instance ToResourceProperties PortMappingProperty where
  toResourceProperties PortMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualRouter.PortMapping",
         properties = ["Port" JSON..= port, "Protocol" JSON..= protocol]}
instance JSON.ToJSON PortMappingProperty where
  toJSON PortMappingProperty {..}
    = JSON.object ["Port" JSON..= port, "Protocol" JSON..= protocol]
instance Property "Port" PortMappingProperty where
  type PropertyType "Port" PortMappingProperty = Value Prelude.Integer
  set newValue PortMappingProperty {..}
    = PortMappingProperty {port = newValue, ..}
instance Property "Protocol" PortMappingProperty where
  type PropertyType "Protocol" PortMappingProperty = Value Prelude.Text
  set newValue PortMappingProperty {..}
    = PortMappingProperty {protocol = newValue, ..}