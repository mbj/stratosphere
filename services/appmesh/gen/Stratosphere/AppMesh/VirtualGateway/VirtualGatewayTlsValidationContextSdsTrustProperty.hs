module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextSdsTrustProperty (
        VirtualGatewayTlsValidationContextSdsTrustProperty(..),
        mkVirtualGatewayTlsValidationContextSdsTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayTlsValidationContextSdsTrustProperty
  = VirtualGatewayTlsValidationContextSdsTrustProperty {secretName :: (Value Prelude.Text)}
mkVirtualGatewayTlsValidationContextSdsTrustProperty ::
  Value Prelude.Text
  -> VirtualGatewayTlsValidationContextSdsTrustProperty
mkVirtualGatewayTlsValidationContextSdsTrustProperty secretName
  = VirtualGatewayTlsValidationContextSdsTrustProperty
      {secretName = secretName}
instance ToResourceProperties VirtualGatewayTlsValidationContextSdsTrustProperty where
  toResourceProperties
    VirtualGatewayTlsValidationContextSdsTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextSdsTrust",
         properties = ["SecretName" JSON..= secretName]}
instance JSON.ToJSON VirtualGatewayTlsValidationContextSdsTrustProperty where
  toJSON VirtualGatewayTlsValidationContextSdsTrustProperty {..}
    = JSON.object ["SecretName" JSON..= secretName]
instance Property "SecretName" VirtualGatewayTlsValidationContextSdsTrustProperty where
  type PropertyType "SecretName" VirtualGatewayTlsValidationContextSdsTrustProperty = Value Prelude.Text
  set newValue VirtualGatewayTlsValidationContextSdsTrustProperty {}
    = VirtualGatewayTlsValidationContextSdsTrustProperty
        {secretName = newValue, ..}