module Stratosphere.AppMesh.VirtualNode.ListenerTlsValidationContextProperty (
        module Exports, ListenerTlsValidationContextProperty(..),
        mkListenerTlsValidationContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsValidationContextTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.SubjectAlternativeNamesProperty as Exports
import Stratosphere.ResourceProperties
data ListenerTlsValidationContextProperty
  = ListenerTlsValidationContextProperty {subjectAlternativeNames :: (Prelude.Maybe SubjectAlternativeNamesProperty),
                                          trust :: ListenerTlsValidationContextTrustProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsValidationContextProperty ::
  ListenerTlsValidationContextTrustProperty
  -> ListenerTlsValidationContextProperty
mkListenerTlsValidationContextProperty trust
  = ListenerTlsValidationContextProperty
      {trust = trust, subjectAlternativeNames = Prelude.Nothing}
instance ToResourceProperties ListenerTlsValidationContextProperty where
  toResourceProperties ListenerTlsValidationContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTlsValidationContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Trust" JSON..= trust]
                           (Prelude.catMaybes
                              [(JSON..=) "SubjectAlternativeNames"
                                 Prelude.<$> subjectAlternativeNames]))}
instance JSON.ToJSON ListenerTlsValidationContextProperty where
  toJSON ListenerTlsValidationContextProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Trust" JSON..= trust]
              (Prelude.catMaybes
                 [(JSON..=) "SubjectAlternativeNames"
                    Prelude.<$> subjectAlternativeNames])))
instance Property "SubjectAlternativeNames" ListenerTlsValidationContextProperty where
  type PropertyType "SubjectAlternativeNames" ListenerTlsValidationContextProperty = SubjectAlternativeNamesProperty
  set newValue ListenerTlsValidationContextProperty {..}
    = ListenerTlsValidationContextProperty
        {subjectAlternativeNames = Prelude.pure newValue, ..}
instance Property "Trust" ListenerTlsValidationContextProperty where
  type PropertyType "Trust" ListenerTlsValidationContextProperty = ListenerTlsValidationContextTrustProperty
  set newValue ListenerTlsValidationContextProperty {..}
    = ListenerTlsValidationContextProperty {trust = newValue, ..}