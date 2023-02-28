module Stratosphere.AppMesh.VirtualService.VirtualServiceSpecProperty (
        module Exports, VirtualServiceSpecProperty(..),
        mkVirtualServiceSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualService.VirtualServiceProviderProperty as Exports
import Stratosphere.ResourceProperties
data VirtualServiceSpecProperty
  = VirtualServiceSpecProperty {provider :: (Prelude.Maybe VirtualServiceProviderProperty)}
mkVirtualServiceSpecProperty :: VirtualServiceSpecProperty
mkVirtualServiceSpecProperty
  = VirtualServiceSpecProperty {provider = Prelude.Nothing}
instance ToResourceProperties VirtualServiceSpecProperty where
  toResourceProperties VirtualServiceSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualService.VirtualServiceSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Provider" Prelude.<$> provider])}
instance JSON.ToJSON VirtualServiceSpecProperty where
  toJSON VirtualServiceSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Provider" Prelude.<$> provider]))
instance Property "Provider" VirtualServiceSpecProperty where
  type PropertyType "Provider" VirtualServiceSpecProperty = VirtualServiceProviderProperty
  set newValue VirtualServiceSpecProperty {}
    = VirtualServiceSpecProperty {provider = Prelude.pure newValue, ..}