module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsAcmCertificateProperty (
        VirtualGatewayListenerTlsAcmCertificateProperty(..),
        mkVirtualGatewayListenerTlsAcmCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayListenerTlsAcmCertificateProperty
  = VirtualGatewayListenerTlsAcmCertificateProperty {certificateArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayListenerTlsAcmCertificateProperty ::
  Value Prelude.Text
  -> VirtualGatewayListenerTlsAcmCertificateProperty
mkVirtualGatewayListenerTlsAcmCertificateProperty certificateArn
  = VirtualGatewayListenerTlsAcmCertificateProperty
      {certificateArn = certificateArn}
instance ToResourceProperties VirtualGatewayListenerTlsAcmCertificateProperty where
  toResourceProperties
    VirtualGatewayListenerTlsAcmCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsAcmCertificate",
         supportsTags = Prelude.False,
         properties = ["CertificateArn" JSON..= certificateArn]}
instance JSON.ToJSON VirtualGatewayListenerTlsAcmCertificateProperty where
  toJSON VirtualGatewayListenerTlsAcmCertificateProperty {..}
    = JSON.object ["CertificateArn" JSON..= certificateArn]
instance Property "CertificateArn" VirtualGatewayListenerTlsAcmCertificateProperty where
  type PropertyType "CertificateArn" VirtualGatewayListenerTlsAcmCertificateProperty = Value Prelude.Text
  set newValue VirtualGatewayListenerTlsAcmCertificateProperty {}
    = VirtualGatewayListenerTlsAcmCertificateProperty
        {certificateArn = newValue, ..}