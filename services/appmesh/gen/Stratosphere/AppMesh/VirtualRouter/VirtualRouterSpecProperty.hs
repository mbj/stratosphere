module Stratosphere.AppMesh.VirtualRouter.VirtualRouterSpecProperty (
        module Exports, VirtualRouterSpecProperty(..),
        mkVirtualRouterSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualRouter.VirtualRouterListenerProperty as Exports
import Stratosphere.ResourceProperties
data VirtualRouterSpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html>
    VirtualRouterSpecProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html#cfn-appmesh-virtualrouter-virtualrouterspec-listeners>
                               listeners :: [VirtualRouterListenerProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualRouterSpecProperty ::
  [VirtualRouterListenerProperty] -> VirtualRouterSpecProperty
mkVirtualRouterSpecProperty listeners
  = VirtualRouterSpecProperty
      {haddock_workaround_ = (), listeners = listeners}
instance ToResourceProperties VirtualRouterSpecProperty where
  toResourceProperties VirtualRouterSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualRouter.VirtualRouterSpec",
         supportsTags = Prelude.False,
         properties = ["Listeners" JSON..= listeners]}
instance JSON.ToJSON VirtualRouterSpecProperty where
  toJSON VirtualRouterSpecProperty {..}
    = JSON.object ["Listeners" JSON..= listeners]
instance Property "Listeners" VirtualRouterSpecProperty where
  type PropertyType "Listeners" VirtualRouterSpecProperty = [VirtualRouterListenerProperty]
  set newValue VirtualRouterSpecProperty {..}
    = VirtualRouterSpecProperty {listeners = newValue, ..}