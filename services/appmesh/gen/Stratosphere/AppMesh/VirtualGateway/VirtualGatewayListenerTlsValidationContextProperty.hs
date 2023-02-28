module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsValidationContextProperty (
        module Exports,
        VirtualGatewayListenerTlsValidationContextProperty(..),
        mkVirtualGatewayListenerTlsValidationContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.SubjectAlternativeNamesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsValidationContextTrustProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayListenerTlsValidationContextProperty
  = VirtualGatewayListenerTlsValidationContextProperty {subjectAlternativeNames :: (Prelude.Maybe SubjectAlternativeNamesProperty),
                                                        trust :: VirtualGatewayListenerTlsValidationContextTrustProperty}
mkVirtualGatewayListenerTlsValidationContextProperty ::
  VirtualGatewayListenerTlsValidationContextTrustProperty
  -> VirtualGatewayListenerTlsValidationContextProperty
mkVirtualGatewayListenerTlsValidationContextProperty trust
  = VirtualGatewayListenerTlsValidationContextProperty
      {trust = trust, subjectAlternativeNames = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayListenerTlsValidationContextProperty where
  toResourceProperties
    VirtualGatewayListenerTlsValidationContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsValidationContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Trust" JSON..= trust]
                           (Prelude.catMaybes
                              [(JSON..=) "SubjectAlternativeNames"
                                 Prelude.<$> subjectAlternativeNames]))}
instance JSON.ToJSON VirtualGatewayListenerTlsValidationContextProperty where
  toJSON VirtualGatewayListenerTlsValidationContextProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Trust" JSON..= trust]
              (Prelude.catMaybes
                 [(JSON..=) "SubjectAlternativeNames"
                    Prelude.<$> subjectAlternativeNames])))
instance Property "SubjectAlternativeNames" VirtualGatewayListenerTlsValidationContextProperty where
  type PropertyType "SubjectAlternativeNames" VirtualGatewayListenerTlsValidationContextProperty = SubjectAlternativeNamesProperty
  set
    newValue
    VirtualGatewayListenerTlsValidationContextProperty {..}
    = VirtualGatewayListenerTlsValidationContextProperty
        {subjectAlternativeNames = Prelude.pure newValue, ..}
instance Property "Trust" VirtualGatewayListenerTlsValidationContextProperty where
  type PropertyType "Trust" VirtualGatewayListenerTlsValidationContextProperty = VirtualGatewayListenerTlsValidationContextTrustProperty
  set
    newValue
    VirtualGatewayListenerTlsValidationContextProperty {..}
    = VirtualGatewayListenerTlsValidationContextProperty
        {trust = newValue, ..}