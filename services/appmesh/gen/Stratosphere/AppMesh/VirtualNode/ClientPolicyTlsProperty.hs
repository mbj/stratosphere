module Stratosphere.AppMesh.VirtualNode.ClientPolicyTlsProperty (
        module Exports, ClientPolicyTlsProperty(..),
        mkClientPolicyTlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ClientTlsCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientPolicyTlsProperty
  = ClientPolicyTlsProperty {certificate :: (Prelude.Maybe ClientTlsCertificateProperty),
                             enforce :: (Prelude.Maybe (Value Prelude.Bool)),
                             ports :: (Prelude.Maybe (ValueList Prelude.Integer)),
                             validation :: TlsValidationContextProperty}
mkClientPolicyTlsProperty ::
  TlsValidationContextProperty -> ClientPolicyTlsProperty
mkClientPolicyTlsProperty validation
  = ClientPolicyTlsProperty
      {validation = validation, certificate = Prelude.Nothing,
       enforce = Prelude.Nothing, ports = Prelude.Nothing}
instance ToResourceProperties ClientPolicyTlsProperty where
  toResourceProperties ClientPolicyTlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ClientPolicyTls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Validation" JSON..= validation]
                           (Prelude.catMaybes
                              [(JSON..=) "Certificate" Prelude.<$> certificate,
                               (JSON..=) "Enforce" Prelude.<$> enforce,
                               (JSON..=) "Ports" Prelude.<$> ports]))}
instance JSON.ToJSON ClientPolicyTlsProperty where
  toJSON ClientPolicyTlsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Validation" JSON..= validation]
              (Prelude.catMaybes
                 [(JSON..=) "Certificate" Prelude.<$> certificate,
                  (JSON..=) "Enforce" Prelude.<$> enforce,
                  (JSON..=) "Ports" Prelude.<$> ports])))
instance Property "Certificate" ClientPolicyTlsProperty where
  type PropertyType "Certificate" ClientPolicyTlsProperty = ClientTlsCertificateProperty
  set newValue ClientPolicyTlsProperty {..}
    = ClientPolicyTlsProperty {certificate = Prelude.pure newValue, ..}
instance Property "Enforce" ClientPolicyTlsProperty where
  type PropertyType "Enforce" ClientPolicyTlsProperty = Value Prelude.Bool
  set newValue ClientPolicyTlsProperty {..}
    = ClientPolicyTlsProperty {enforce = Prelude.pure newValue, ..}
instance Property "Ports" ClientPolicyTlsProperty where
  type PropertyType "Ports" ClientPolicyTlsProperty = ValueList Prelude.Integer
  set newValue ClientPolicyTlsProperty {..}
    = ClientPolicyTlsProperty {ports = Prelude.pure newValue, ..}
instance Property "Validation" ClientPolicyTlsProperty where
  type PropertyType "Validation" ClientPolicyTlsProperty = TlsValidationContextProperty
  set newValue ClientPolicyTlsProperty {..}
    = ClientPolicyTlsProperty {validation = newValue, ..}