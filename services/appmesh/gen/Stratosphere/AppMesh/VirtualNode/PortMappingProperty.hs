module Stratosphere.AppMesh.VirtualNode.PortMappingProperty (
        PortMappingProperty(..), mkPortMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortMappingProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html>
    PortMappingProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html#cfn-appmesh-virtualnode-portmapping-port>
                         port :: (Value Prelude.Integer),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html#cfn-appmesh-virtualnode-portmapping-protocol>
                         protocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortMappingProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> PortMappingProperty
mkPortMappingProperty port protocol
  = PortMappingProperty {port = port, protocol = protocol}
instance ToResourceProperties PortMappingProperty where
  toResourceProperties PortMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.PortMapping",
         supportsTags = Prelude.False,
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