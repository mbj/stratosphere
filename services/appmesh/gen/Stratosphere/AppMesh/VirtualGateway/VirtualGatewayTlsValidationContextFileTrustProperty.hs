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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextfiletrust.html>
    VirtualGatewayTlsValidationContextFileTrustProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextfiletrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextfiletrust-certificatechain>
                                                         certificateChain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayTlsValidationContextFileTrustProperty ::
  Value Prelude.Text
  -> VirtualGatewayTlsValidationContextFileTrustProperty
mkVirtualGatewayTlsValidationContextFileTrustProperty
  certificateChain
  = VirtualGatewayTlsValidationContextFileTrustProperty
      {haddock_workaround_ = (), certificateChain = certificateChain}
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
  set
    newValue
    VirtualGatewayTlsValidationContextFileTrustProperty {..}
    = VirtualGatewayTlsValidationContextFileTrustProperty
        {certificateChain = newValue, ..}