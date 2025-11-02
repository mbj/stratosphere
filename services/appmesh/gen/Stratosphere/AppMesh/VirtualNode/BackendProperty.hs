module Stratosphere.AppMesh.VirtualNode.BackendProperty (
        module Exports, BackendProperty(..), mkBackendProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.VirtualServiceBackendProperty as Exports
import Stratosphere.ResourceProperties
data BackendProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html>
    BackendProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html#cfn-appmesh-virtualnode-backend-virtualservice>
                     virtualService :: (Prelude.Maybe VirtualServiceBackendProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackendProperty :: BackendProperty
mkBackendProperty
  = BackendProperty
      {haddock_workaround_ = (), virtualService = Prelude.Nothing}
instance ToResourceProperties BackendProperty where
  toResourceProperties BackendProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.Backend",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VirtualService" Prelude.<$> virtualService])}
instance JSON.ToJSON BackendProperty where
  toJSON BackendProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VirtualService" Prelude.<$> virtualService]))
instance Property "VirtualService" BackendProperty where
  type PropertyType "VirtualService" BackendProperty = VirtualServiceBackendProperty
  set newValue BackendProperty {..}
    = BackendProperty {virtualService = Prelude.pure newValue, ..}