module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayBackendDefaultsProperty (
        module Exports, VirtualGatewayBackendDefaultsProperty(..),
        mkVirtualGatewayBackendDefaultsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayClientPolicyProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayBackendDefaultsProperty
  = VirtualGatewayBackendDefaultsProperty {clientPolicy :: (Prelude.Maybe VirtualGatewayClientPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayBackendDefaultsProperty ::
  VirtualGatewayBackendDefaultsProperty
mkVirtualGatewayBackendDefaultsProperty
  = VirtualGatewayBackendDefaultsProperty
      {clientPolicy = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayBackendDefaultsProperty where
  toResourceProperties VirtualGatewayBackendDefaultsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayBackendDefaults",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientPolicy" Prelude.<$> clientPolicy])}
instance JSON.ToJSON VirtualGatewayBackendDefaultsProperty where
  toJSON VirtualGatewayBackendDefaultsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientPolicy" Prelude.<$> clientPolicy]))
instance Property "ClientPolicy" VirtualGatewayBackendDefaultsProperty where
  type PropertyType "ClientPolicy" VirtualGatewayBackendDefaultsProperty = VirtualGatewayClientPolicyProperty
  set newValue VirtualGatewayBackendDefaultsProperty {}
    = VirtualGatewayBackendDefaultsProperty
        {clientPolicy = Prelude.pure newValue, ..}