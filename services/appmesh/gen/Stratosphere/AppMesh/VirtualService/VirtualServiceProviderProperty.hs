module Stratosphere.AppMesh.VirtualService.VirtualServiceProviderProperty (
        module Exports, VirtualServiceProviderProperty(..),
        mkVirtualServiceProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualService.VirtualNodeServiceProviderProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualService.VirtualRouterServiceProviderProperty as Exports
import Stratosphere.ResourceProperties
data VirtualServiceProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html>
    VirtualServiceProviderProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualnode>
                                    virtualNode :: (Prelude.Maybe VirtualNodeServiceProviderProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualrouter>
                                    virtualRouter :: (Prelude.Maybe VirtualRouterServiceProviderProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualServiceProviderProperty :: VirtualServiceProviderProperty
mkVirtualServiceProviderProperty
  = VirtualServiceProviderProperty
      {haddock_workaround_ = (), virtualNode = Prelude.Nothing,
       virtualRouter = Prelude.Nothing}
instance ToResourceProperties VirtualServiceProviderProperty where
  toResourceProperties VirtualServiceProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualService.VirtualServiceProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VirtualNode" Prelude.<$> virtualNode,
                            (JSON..=) "VirtualRouter" Prelude.<$> virtualRouter])}
instance JSON.ToJSON VirtualServiceProviderProperty where
  toJSON VirtualServiceProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VirtualNode" Prelude.<$> virtualNode,
               (JSON..=) "VirtualRouter" Prelude.<$> virtualRouter]))
instance Property "VirtualNode" VirtualServiceProviderProperty where
  type PropertyType "VirtualNode" VirtualServiceProviderProperty = VirtualNodeServiceProviderProperty
  set newValue VirtualServiceProviderProperty {..}
    = VirtualServiceProviderProperty
        {virtualNode = Prelude.pure newValue, ..}
instance Property "VirtualRouter" VirtualServiceProviderProperty where
  type PropertyType "VirtualRouter" VirtualServiceProviderProperty = VirtualRouterServiceProviderProperty
  set newValue VirtualServiceProviderProperty {..}
    = VirtualServiceProviderProperty
        {virtualRouter = Prelude.pure newValue, ..}