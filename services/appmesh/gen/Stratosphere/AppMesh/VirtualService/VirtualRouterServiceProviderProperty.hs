module Stratosphere.AppMesh.VirtualService.VirtualRouterServiceProviderProperty (
        VirtualRouterServiceProviderProperty(..),
        mkVirtualRouterServiceProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualRouterServiceProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html>
    VirtualRouterServiceProviderProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html#cfn-appmesh-virtualservice-virtualrouterserviceprovider-virtualroutername>
                                          virtualRouterName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualRouterServiceProviderProperty ::
  Value Prelude.Text -> VirtualRouterServiceProviderProperty
mkVirtualRouterServiceProviderProperty virtualRouterName
  = VirtualRouterServiceProviderProperty
      {haddock_workaround_ = (), virtualRouterName = virtualRouterName}
instance ToResourceProperties VirtualRouterServiceProviderProperty where
  toResourceProperties VirtualRouterServiceProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualService.VirtualRouterServiceProvider",
         supportsTags = Prelude.False,
         properties = ["VirtualRouterName" JSON..= virtualRouterName]}
instance JSON.ToJSON VirtualRouterServiceProviderProperty where
  toJSON VirtualRouterServiceProviderProperty {..}
    = JSON.object ["VirtualRouterName" JSON..= virtualRouterName]
instance Property "VirtualRouterName" VirtualRouterServiceProviderProperty where
  type PropertyType "VirtualRouterName" VirtualRouterServiceProviderProperty = Value Prelude.Text
  set newValue VirtualRouterServiceProviderProperty {..}
    = VirtualRouterServiceProviderProperty
        {virtualRouterName = newValue, ..}