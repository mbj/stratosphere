module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextFileTrustProperty (
        VirtualGatewayTlsValidationContextFileTrustProperty(..),
        mkVirtualGatewayTlsValidationContextFileTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayTlsValidationContextFileTrustProperty
  = VirtualGatewayTlsValidationContextFileTrustProperty {certificateChain :: (Value Prelude.Text)}
mkVirtualGatewayTlsValidationContextFileTrustProperty ::
  Value Prelude.Text
  -> VirtualGatewayTlsValidationContextFileTrustProperty
mkVirtualGatewayTlsValidationContextFileTrustProperty
  certificateChain
  = VirtualGatewayTlsValidationContextFileTrustProperty
      {certificateChain = certificateChain}
instance ToResourceProperties VirtualGatewayTlsValidationContextFileTrustProperty where
  toResourceProperties
    VirtualGatewayTlsValidationContextFileTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextFileTrust",
         supportsTags = Prelude.False,
         properties = ["CertificateChain" JSON..= certificateChain]}
instance JSON.ToJSON VirtualGatewayTlsValidationContextFileTrustProperty where
  toJSON VirtualGatewayTlsValidationContextFileTrustProperty {..}
    = JSON.object ["CertificateChain" JSON..= certificateChain]
instance Property "CertificateChain" VirtualGatewayTlsValidationContextFileTrustProperty where
  type PropertyType "CertificateChain" VirtualGatewayTlsValidationContextFileTrustProperty = Value Prelude.Text
  set newValue VirtualGatewayTlsValidationContextFileTrustProperty {}
    = VirtualGatewayTlsValidationContextFileTrustProperty
        {certificateChain = newValue, ..}