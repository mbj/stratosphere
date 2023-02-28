module Stratosphere.AppMesh.VirtualNode.TlsValidationContextProperty (
        module Exports, TlsValidationContextProperty(..),
        mkTlsValidationContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.SubjectAlternativeNamesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextTrustProperty as Exports
import Stratosphere.ResourceProperties
data TlsValidationContextProperty
  = TlsValidationContextProperty {subjectAlternativeNames :: (Prelude.Maybe SubjectAlternativeNamesProperty),
                                  trust :: TlsValidationContextTrustProperty}
mkTlsValidationContextProperty ::
  TlsValidationContextTrustProperty -> TlsValidationContextProperty
mkTlsValidationContextProperty trust
  = TlsValidationContextProperty
      {trust = trust, subjectAlternativeNames = Prelude.Nothing}
instance ToResourceProperties TlsValidationContextProperty where
  toResourceProperties TlsValidationContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Trust" JSON..= trust]
                           (Prelude.catMaybes
                              [(JSON..=) "SubjectAlternativeNames"
                                 Prelude.<$> subjectAlternativeNames]))}
instance JSON.ToJSON TlsValidationContextProperty where
  toJSON TlsValidationContextProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Trust" JSON..= trust]
              (Prelude.catMaybes
                 [(JSON..=) "SubjectAlternativeNames"
                    Prelude.<$> subjectAlternativeNames])))
instance Property "SubjectAlternativeNames" TlsValidationContextProperty where
  type PropertyType "SubjectAlternativeNames" TlsValidationContextProperty = SubjectAlternativeNamesProperty
  set newValue TlsValidationContextProperty {..}
    = TlsValidationContextProperty
        {subjectAlternativeNames = Prelude.pure newValue, ..}
instance Property "Trust" TlsValidationContextProperty where
  type PropertyType "Trust" TlsValidationContextProperty = TlsValidationContextTrustProperty
  set newValue TlsValidationContextProperty {..}
    = TlsValidationContextProperty {trust = newValue, ..}