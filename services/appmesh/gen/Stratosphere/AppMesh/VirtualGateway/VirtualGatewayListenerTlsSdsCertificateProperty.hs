module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsSdsCertificateProperty (
        VirtualGatewayListenerTlsSdsCertificateProperty(..),
        mkVirtualGatewayListenerTlsSdsCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayListenerTlsSdsCertificateProperty
  = VirtualGatewayListenerTlsSdsCertificateProperty {secretName :: (Value Prelude.Text)}
mkVirtualGatewayListenerTlsSdsCertificateProperty ::
  Value Prelude.Text
  -> VirtualGatewayListenerTlsSdsCertificateProperty
mkVirtualGatewayListenerTlsSdsCertificateProperty secretName
  = VirtualGatewayListenerTlsSdsCertificateProperty
      {secretName = secretName}
instance ToResourceProperties VirtualGatewayListenerTlsSdsCertificateProperty where
  toResourceProperties
    VirtualGatewayListenerTlsSdsCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsSdsCertificate",
         supportsTags = Prelude.False,
         properties = ["SecretName" JSON..= secretName]}
instance JSON.ToJSON VirtualGatewayListenerTlsSdsCertificateProperty where
  toJSON VirtualGatewayListenerTlsSdsCertificateProperty {..}
    = JSON.object ["SecretName" JSON..= secretName]
instance Property "SecretName" VirtualGatewayListenerTlsSdsCertificateProperty where
  type PropertyType "SecretName" VirtualGatewayListenerTlsSdsCertificateProperty = Value Prelude.Text
  set newValue VirtualGatewayListenerTlsSdsCertificateProperty {}
    = VirtualGatewayListenerTlsSdsCertificateProperty
        {secretName = newValue, ..}