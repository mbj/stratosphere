module Stratosphere.AppMesh.VirtualNode.VirtualServiceBackendProperty (
        module Exports, VirtualServiceBackendProperty(..),
        mkVirtualServiceBackendProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ClientPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualServiceBackendProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html>
    VirtualServiceBackendProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html#cfn-appmesh-virtualnode-virtualservicebackend-clientpolicy>
                                   clientPolicy :: (Prelude.Maybe ClientPolicyProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html#cfn-appmesh-virtualnode-virtualservicebackend-virtualservicename>
                                   virtualServiceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualServiceBackendProperty ::
  Value Prelude.Text -> VirtualServiceBackendProperty
mkVirtualServiceBackendProperty virtualServiceName
  = VirtualServiceBackendProperty
      {haddock_workaround_ = (), virtualServiceName = virtualServiceName,
       clientPolicy = Prelude.Nothing}
instance ToResourceProperties VirtualServiceBackendProperty where
  toResourceProperties VirtualServiceBackendProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.VirtualServiceBackend",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VirtualServiceName" JSON..= virtualServiceName]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientPolicy" Prelude.<$> clientPolicy]))}
instance JSON.ToJSON VirtualServiceBackendProperty where
  toJSON VirtualServiceBackendProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VirtualServiceName" JSON..= virtualServiceName]
              (Prelude.catMaybes
                 [(JSON..=) "ClientPolicy" Prelude.<$> clientPolicy])))
instance Property "ClientPolicy" VirtualServiceBackendProperty where
  type PropertyType "ClientPolicy" VirtualServiceBackendProperty = ClientPolicyProperty
  set newValue VirtualServiceBackendProperty {..}
    = VirtualServiceBackendProperty
        {clientPolicy = Prelude.pure newValue, ..}
instance Property "VirtualServiceName" VirtualServiceBackendProperty where
  type PropertyType "VirtualServiceName" VirtualServiceBackendProperty = Value Prelude.Text
  set newValue VirtualServiceBackendProperty {..}
    = VirtualServiceBackendProperty {virtualServiceName = newValue, ..}