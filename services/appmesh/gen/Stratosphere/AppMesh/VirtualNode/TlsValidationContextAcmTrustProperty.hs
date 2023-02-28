module Stratosphere.AppMesh.VirtualNode.TlsValidationContextAcmTrustProperty (
        TlsValidationContextAcmTrustProperty(..),
        mkTlsValidationContextAcmTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsValidationContextAcmTrustProperty
  = TlsValidationContextAcmTrustProperty {certificateAuthorityArns :: (ValueList Prelude.Text)}
mkTlsValidationContextAcmTrustProperty ::
  ValueList Prelude.Text -> TlsValidationContextAcmTrustProperty
mkTlsValidationContextAcmTrustProperty certificateAuthorityArns
  = TlsValidationContextAcmTrustProperty
      {certificateAuthorityArns = certificateAuthorityArns}
instance ToResourceProperties TlsValidationContextAcmTrustProperty where
  toResourceProperties TlsValidationContextAcmTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContextAcmTrust",
         supportsTags = Prelude.False,
         properties = ["CertificateAuthorityArns"
                         JSON..= certificateAuthorityArns]}
instance JSON.ToJSON TlsValidationContextAcmTrustProperty where
  toJSON TlsValidationContextAcmTrustProperty {..}
    = JSON.object
        ["CertificateAuthorityArns" JSON..= certificateAuthorityArns]
instance Property "CertificateAuthorityArns" TlsValidationContextAcmTrustProperty where
  type PropertyType "CertificateAuthorityArns" TlsValidationContextAcmTrustProperty = ValueList Prelude.Text
  set newValue TlsValidationContextAcmTrustProperty {}
    = TlsValidationContextAcmTrustProperty
        {certificateAuthorityArns = newValue, ..}