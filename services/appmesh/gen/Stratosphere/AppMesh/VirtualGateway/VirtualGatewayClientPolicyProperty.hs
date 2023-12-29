module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayClientPolicyProperty (
        module Exports, VirtualGatewayClientPolicyProperty(..),
        mkVirtualGatewayClientPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayClientPolicyTlsProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayClientPolicyProperty
  = VirtualGatewayClientPolicyProperty {tLS :: (Prelude.Maybe VirtualGatewayClientPolicyTlsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayClientPolicyProperty ::
  VirtualGatewayClientPolicyProperty
mkVirtualGatewayClientPolicyProperty
  = VirtualGatewayClientPolicyProperty {tLS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayClientPolicyProperty where
  toResourceProperties VirtualGatewayClientPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayClientPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TLS" Prelude.<$> tLS])}
instance JSON.ToJSON VirtualGatewayClientPolicyProperty where
  toJSON VirtualGatewayClientPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TLS" Prelude.<$> tLS]))
instance Property "TLS" VirtualGatewayClientPolicyProperty where
  type PropertyType "TLS" VirtualGatewayClientPolicyProperty = VirtualGatewayClientPolicyTlsProperty
  set newValue VirtualGatewayClientPolicyProperty {}
    = VirtualGatewayClientPolicyProperty
        {tLS = Prelude.pure newValue, ..}