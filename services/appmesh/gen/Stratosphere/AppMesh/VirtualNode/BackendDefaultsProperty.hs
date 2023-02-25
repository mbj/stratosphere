module Stratosphere.AppMesh.VirtualNode.BackendDefaultsProperty (
        module Exports, BackendDefaultsProperty(..),
        mkBackendDefaultsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ClientPolicyProperty as Exports
import Stratosphere.ResourceProperties
data BackendDefaultsProperty
  = BackendDefaultsProperty {clientPolicy :: (Prelude.Maybe ClientPolicyProperty)}
mkBackendDefaultsProperty :: BackendDefaultsProperty
mkBackendDefaultsProperty
  = BackendDefaultsProperty {clientPolicy = Prelude.Nothing}
instance ToResourceProperties BackendDefaultsProperty where
  toResourceProperties BackendDefaultsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.BackendDefaults",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientPolicy" Prelude.<$> clientPolicy])}
instance JSON.ToJSON BackendDefaultsProperty where
  toJSON BackendDefaultsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientPolicy" Prelude.<$> clientPolicy]))
instance Property "ClientPolicy" BackendDefaultsProperty where
  type PropertyType "ClientPolicy" BackendDefaultsProperty = ClientPolicyProperty
  set newValue BackendDefaultsProperty {}
    = BackendDefaultsProperty
        {clientPolicy = Prelude.pure newValue, ..}