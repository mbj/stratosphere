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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html>
    TlsValidationContextProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html#cfn-appmesh-virtualnode-tlsvalidationcontext-subjectalternativenames>
                                  subjectAlternativeNames :: (Prelude.Maybe SubjectAlternativeNamesProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html#cfn-appmesh-virtualnode-tlsvalidationcontext-trust>
                                  trust :: TlsValidationContextTrustProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsValidationContextProperty ::
  TlsValidationContextTrustProperty -> TlsValidationContextProperty
mkTlsValidationContextProperty trust
  = TlsValidationContextProperty
      {haddock_workaround_ = (), trust = trust,
       subjectAlternativeNames = Prelude.Nothing}
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