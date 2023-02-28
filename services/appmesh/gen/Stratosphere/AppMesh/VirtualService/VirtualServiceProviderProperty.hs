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
  = VirtualServiceProviderProperty {virtualNode :: (Prelude.Maybe VirtualNodeServiceProviderProperty),
                                    virtualRouter :: (Prelude.Maybe VirtualRouterServiceProviderProperty)}
mkVirtualServiceProviderProperty :: VirtualServiceProviderProperty
mkVirtualServiceProviderProperty
  = VirtualServiceProviderProperty
      {virtualNode = Prelude.Nothing, virtualRouter = Prelude.Nothing}
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