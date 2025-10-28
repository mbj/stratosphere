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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html>
    VirtualServiceSpecProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html#cfn-appmesh-virtualservice-virtualservicespec-provider>
                                provider :: (Prelude.Maybe VirtualServiceProviderProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualServiceSpecProperty :: VirtualServiceSpecProperty
mkVirtualServiceSpecProperty
  = VirtualServiceSpecProperty
      {haddock_workaround_ = (), provider = Prelude.Nothing}
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
  set newValue VirtualServiceSpecProperty {..}
    = VirtualServiceSpecProperty {provider = Prelude.pure newValue, ..}