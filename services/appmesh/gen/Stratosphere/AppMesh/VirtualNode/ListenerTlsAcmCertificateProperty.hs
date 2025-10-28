module Stratosphere.AppMesh.VirtualNode.ListenerTlsAcmCertificateProperty (
        ListenerTlsAcmCertificateProperty(..),
        mkListenerTlsAcmCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerTlsAcmCertificateProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html>
    ListenerTlsAcmCertificateProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html#cfn-appmesh-virtualnode-listenertlsacmcertificate-certificatearn>
                                       certificateArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsAcmCertificateProperty ::
  Value Prelude.Text -> ListenerTlsAcmCertificateProperty
mkListenerTlsAcmCertificateProperty certificateArn
  = ListenerTlsAcmCertificateProperty
      {certificateArn = certificateArn}
instance ToResourceProperties ListenerTlsAcmCertificateProperty where
  toResourceProperties ListenerTlsAcmCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTlsAcmCertificate",
         supportsTags = Prelude.False,
         properties = ["CertificateArn" JSON..= certificateArn]}
instance JSON.ToJSON ListenerTlsAcmCertificateProperty where
  toJSON ListenerTlsAcmCertificateProperty {..}
    = JSON.object ["CertificateArn" JSON..= certificateArn]
instance Property "CertificateArn" ListenerTlsAcmCertificateProperty where
  type PropertyType "CertificateArn" ListenerTlsAcmCertificateProperty = Value Prelude.Text
  set newValue ListenerTlsAcmCertificateProperty {}
    = ListenerTlsAcmCertificateProperty {certificateArn = newValue, ..}