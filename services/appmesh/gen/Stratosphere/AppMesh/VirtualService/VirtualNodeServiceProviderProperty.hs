module Stratosphere.AppMesh.VirtualService.VirtualNodeServiceProviderProperty (
        VirtualNodeServiceProviderProperty(..),
        mkVirtualNodeServiceProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualNodeServiceProviderProperty
  = VirtualNodeServiceProviderProperty {virtualNodeName :: (Value Prelude.Text)}
mkVirtualNodeServiceProviderProperty ::
  Value Prelude.Text -> VirtualNodeServiceProviderProperty
mkVirtualNodeServiceProviderProperty virtualNodeName
  = VirtualNodeServiceProviderProperty
      {virtualNodeName = virtualNodeName}
instance ToResourceProperties VirtualNodeServiceProviderProperty where
  toResourceProperties VirtualNodeServiceProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualService.VirtualNodeServiceProvider",
         properties = ["VirtualNodeName" JSON..= virtualNodeName]}
instance JSON.ToJSON VirtualNodeServiceProviderProperty where
  toJSON VirtualNodeServiceProviderProperty {..}
    = JSON.object ["VirtualNodeName" JSON..= virtualNodeName]
instance Property "VirtualNodeName" VirtualNodeServiceProviderProperty where
  type PropertyType "VirtualNodeName" VirtualNodeServiceProviderProperty = Value Prelude.Text
  set newValue VirtualNodeServiceProviderProperty {}
    = VirtualNodeServiceProviderProperty
        {virtualNodeName = newValue, ..}