module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayClientPolicyTlsProperty (
        module Exports, VirtualGatewayClientPolicyTlsProperty(..),
        mkVirtualGatewayClientPolicyTlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayClientTlsCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayClientPolicyTlsProperty
  = VirtualGatewayClientPolicyTlsProperty {certificate :: (Prelude.Maybe VirtualGatewayClientTlsCertificateProperty),
                                           enforce :: (Prelude.Maybe (Value Prelude.Bool)),
                                           ports :: (Prelude.Maybe (ValueList Prelude.Integer)),
                                           validation :: VirtualGatewayTlsValidationContextProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayClientPolicyTlsProperty ::
  VirtualGatewayTlsValidationContextProperty
  -> VirtualGatewayClientPolicyTlsProperty
mkVirtualGatewayClientPolicyTlsProperty validation
  = VirtualGatewayClientPolicyTlsProperty
      {validation = validation, certificate = Prelude.Nothing,
       enforce = Prelude.Nothing, ports = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayClientPolicyTlsProperty where
  toResourceProperties VirtualGatewayClientPolicyTlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayClientPolicyTls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Validation" JSON..= validation]
                           (Prelude.catMaybes
                              [(JSON..=) "Certificate" Prelude.<$> certificate,
                               (JSON..=) "Enforce" Prelude.<$> enforce,
                               (JSON..=) "Ports" Prelude.<$> ports]))}
instance JSON.ToJSON VirtualGatewayClientPolicyTlsProperty where
  toJSON VirtualGatewayClientPolicyTlsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Validation" JSON..= validation]
              (Prelude.catMaybes
                 [(JSON..=) "Certificate" Prelude.<$> certificate,
                  (JSON..=) "Enforce" Prelude.<$> enforce,
                  (JSON..=) "Ports" Prelude.<$> ports])))
instance Property "Certificate" VirtualGatewayClientPolicyTlsProperty where
  type PropertyType "Certificate" VirtualGatewayClientPolicyTlsProperty = VirtualGatewayClientTlsCertificateProperty
  set newValue VirtualGatewayClientPolicyTlsProperty {..}
    = VirtualGatewayClientPolicyTlsProperty
        {certificate = Prelude.pure newValue, ..}
instance Property "Enforce" VirtualGatewayClientPolicyTlsProperty where
  type PropertyType "Enforce" VirtualGatewayClientPolicyTlsProperty = Value Prelude.Bool
  set newValue VirtualGatewayClientPolicyTlsProperty {..}
    = VirtualGatewayClientPolicyTlsProperty
        {enforce = Prelude.pure newValue, ..}
instance Property "Ports" VirtualGatewayClientPolicyTlsProperty where
  type PropertyType "Ports" VirtualGatewayClientPolicyTlsProperty = ValueList Prelude.Integer
  set newValue VirtualGatewayClientPolicyTlsProperty {..}
    = VirtualGatewayClientPolicyTlsProperty
        {ports = Prelude.pure newValue, ..}
instance Property "Validation" VirtualGatewayClientPolicyTlsProperty where
  type PropertyType "Validation" VirtualGatewayClientPolicyTlsProperty = VirtualGatewayTlsValidationContextProperty
  set newValue VirtualGatewayClientPolicyTlsProperty {..}
    = VirtualGatewayClientPolicyTlsProperty {validation = newValue, ..}