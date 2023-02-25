module Stratosphere.AppMesh.VirtualNode.TlsValidationContextSdsTrustProperty (
        TlsValidationContextSdsTrustProperty(..),
        mkTlsValidationContextSdsTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsValidationContextSdsTrustProperty
  = TlsValidationContextSdsTrustProperty {secretName :: (Value Prelude.Text)}
mkTlsValidationContextSdsTrustProperty ::
  Value Prelude.Text -> TlsValidationContextSdsTrustProperty
mkTlsValidationContextSdsTrustProperty secretName
  = TlsValidationContextSdsTrustProperty {secretName = secretName}
instance ToResourceProperties TlsValidationContextSdsTrustProperty where
  toResourceProperties TlsValidationContextSdsTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContextSdsTrust",
         properties = ["SecretName" JSON..= secretName]}
instance JSON.ToJSON TlsValidationContextSdsTrustProperty where
  toJSON TlsValidationContextSdsTrustProperty {..}
    = JSON.object ["SecretName" JSON..= secretName]
instance Property "SecretName" TlsValidationContextSdsTrustProperty where
  type PropertyType "SecretName" TlsValidationContextSdsTrustProperty = Value Prelude.Text
  set newValue TlsValidationContextSdsTrustProperty {}
    = TlsValidationContextSdsTrustProperty {secretName = newValue, ..}