module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextAcmTrustProperty (
        VirtualGatewayTlsValidationContextAcmTrustProperty(..),
        mkVirtualGatewayTlsValidationContextAcmTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayTlsValidationContextAcmTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextacmtrust.html>
    VirtualGatewayTlsValidationContextAcmTrustProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextacmtrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextacmtrust-certificateauthorityarns>
                                                        certificateAuthorityArns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayTlsValidationContextAcmTrustProperty ::
  ValueList Prelude.Text
  -> VirtualGatewayTlsValidationContextAcmTrustProperty
mkVirtualGatewayTlsValidationContextAcmTrustProperty
  certificateAuthorityArns
  = VirtualGatewayTlsValidationContextAcmTrustProperty
      {haddock_workaround_ = (),
       certificateAuthorityArns = certificateAuthorityArns}
instance ToResourceProperties VirtualGatewayTlsValidationContextAcmTrustProperty where
  toResourceProperties
    VirtualGatewayTlsValidationContextAcmTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextAcmTrust",
         supportsTags = Prelude.False,
         properties = ["CertificateAuthorityArns"
                         JSON..= certificateAuthorityArns]}
instance JSON.ToJSON VirtualGatewayTlsValidationContextAcmTrustProperty where
  toJSON VirtualGatewayTlsValidationContextAcmTrustProperty {..}
    = JSON.object
        ["CertificateAuthorityArns" JSON..= certificateAuthorityArns]
instance Property "CertificateAuthorityArns" VirtualGatewayTlsValidationContextAcmTrustProperty where
  type PropertyType "CertificateAuthorityArns" VirtualGatewayTlsValidationContextAcmTrustProperty = ValueList Prelude.Text
  set
    newValue
    VirtualGatewayTlsValidationContextAcmTrustProperty {..}
    = VirtualGatewayTlsValidationContextAcmTrustProperty
        {certificateAuthorityArns = newValue, ..}