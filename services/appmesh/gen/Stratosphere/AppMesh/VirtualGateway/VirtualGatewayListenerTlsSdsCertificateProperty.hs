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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlssdscertificate.html>
    VirtualGatewayListenerTlsSdsCertificateProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlssdscertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlssdscertificate-secretname>
                                                     secretName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayListenerTlsSdsCertificateProperty ::
  Value Prelude.Text
  -> VirtualGatewayListenerTlsSdsCertificateProperty
mkVirtualGatewayListenerTlsSdsCertificateProperty secretName
  = VirtualGatewayListenerTlsSdsCertificateProperty
      {haddock_workaround_ = (), secretName = secretName}
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
  set newValue VirtualGatewayListenerTlsSdsCertificateProperty {..}
    = VirtualGatewayListenerTlsSdsCertificateProperty
        {secretName = newValue, ..}