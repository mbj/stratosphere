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
  = VirtualServiceBackendProperty {clientPolicy :: (Prelude.Maybe ClientPolicyProperty),
                                   virtualServiceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualServiceBackendProperty ::
  Value Prelude.Text -> VirtualServiceBackendProperty
mkVirtualServiceBackendProperty virtualServiceName
  = VirtualServiceBackendProperty
      {virtualServiceName = virtualServiceName,
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