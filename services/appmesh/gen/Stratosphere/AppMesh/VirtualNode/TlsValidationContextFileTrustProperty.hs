module Stratosphere.AppMesh.VirtualNode.TlsValidationContextFileTrustProperty (
        TlsValidationContextFileTrustProperty(..),
        mkTlsValidationContextFileTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsValidationContextFileTrustProperty
  = TlsValidationContextFileTrustProperty {certificateChain :: (Value Prelude.Text)}
mkTlsValidationContextFileTrustProperty ::
  Value Prelude.Text -> TlsValidationContextFileTrustProperty
mkTlsValidationContextFileTrustProperty certificateChain
  = TlsValidationContextFileTrustProperty
      {certificateChain = certificateChain}
instance ToResourceProperties TlsValidationContextFileTrustProperty where
  toResourceProperties TlsValidationContextFileTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContextFileTrust",
         supportsTags = Prelude.False,
         properties = ["CertificateChain" JSON..= certificateChain]}
instance JSON.ToJSON TlsValidationContextFileTrustProperty where
  toJSON TlsValidationContextFileTrustProperty {..}
    = JSON.object ["CertificateChain" JSON..= certificateChain]
instance Property "CertificateChain" TlsValidationContextFileTrustProperty where
  type PropertyType "CertificateChain" TlsValidationContextFileTrustProperty = Value Prelude.Text
  set newValue TlsValidationContextFileTrustProperty {}
    = TlsValidationContextFileTrustProperty
        {certificateChain = newValue, ..}