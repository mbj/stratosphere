module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsFileCertificateProperty (
        VirtualGatewayListenerTlsFileCertificateProperty(..),
        mkVirtualGatewayListenerTlsFileCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayListenerTlsFileCertificateProperty
  = VirtualGatewayListenerTlsFileCertificateProperty {certificateChain :: (Value Prelude.Text),
                                                      privateKey :: (Value Prelude.Text)}
mkVirtualGatewayListenerTlsFileCertificateProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> VirtualGatewayListenerTlsFileCertificateProperty
mkVirtualGatewayListenerTlsFileCertificateProperty
  certificateChain
  privateKey
  = VirtualGatewayListenerTlsFileCertificateProperty
      {certificateChain = certificateChain, privateKey = privateKey}
instance ToResourceProperties VirtualGatewayListenerTlsFileCertificateProperty where
  toResourceProperties
    VirtualGatewayListenerTlsFileCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsFileCertificate",
         supportsTags = Prelude.False,
         properties = ["CertificateChain" JSON..= certificateChain,
                       "PrivateKey" JSON..= privateKey]}
instance JSON.ToJSON VirtualGatewayListenerTlsFileCertificateProperty where
  toJSON VirtualGatewayListenerTlsFileCertificateProperty {..}
    = JSON.object
        ["CertificateChain" JSON..= certificateChain,
         "PrivateKey" JSON..= privateKey]
instance Property "CertificateChain" VirtualGatewayListenerTlsFileCertificateProperty where
  type PropertyType "CertificateChain" VirtualGatewayListenerTlsFileCertificateProperty = Value Prelude.Text
  set newValue VirtualGatewayListenerTlsFileCertificateProperty {..}
    = VirtualGatewayListenerTlsFileCertificateProperty
        {certificateChain = newValue, ..}
instance Property "PrivateKey" VirtualGatewayListenerTlsFileCertificateProperty where
  type PropertyType "PrivateKey" VirtualGatewayListenerTlsFileCertificateProperty = Value Prelude.Text
  set newValue VirtualGatewayListenerTlsFileCertificateProperty {..}
    = VirtualGatewayListenerTlsFileCertificateProperty
        {privateKey = newValue, ..}