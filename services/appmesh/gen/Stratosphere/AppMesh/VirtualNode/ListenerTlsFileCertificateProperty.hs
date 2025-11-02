module Stratosphere.AppMesh.VirtualNode.ListenerTlsFileCertificateProperty (
        ListenerTlsFileCertificateProperty(..),
        mkListenerTlsFileCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerTlsFileCertificateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsfilecertificate.html>
    ListenerTlsFileCertificateProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsfilecertificate.html#cfn-appmesh-virtualnode-listenertlsfilecertificate-certificatechain>
                                        certificateChain :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsfilecertificate.html#cfn-appmesh-virtualnode-listenertlsfilecertificate-privatekey>
                                        privateKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsFileCertificateProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ListenerTlsFileCertificateProperty
mkListenerTlsFileCertificateProperty certificateChain privateKey
  = ListenerTlsFileCertificateProperty
      {haddock_workaround_ = (), certificateChain = certificateChain,
       privateKey = privateKey}
instance ToResourceProperties ListenerTlsFileCertificateProperty where
  toResourceProperties ListenerTlsFileCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTlsFileCertificate",
         supportsTags = Prelude.False,
         properties = ["CertificateChain" JSON..= certificateChain,
                       "PrivateKey" JSON..= privateKey]}
instance JSON.ToJSON ListenerTlsFileCertificateProperty where
  toJSON ListenerTlsFileCertificateProperty {..}
    = JSON.object
        ["CertificateChain" JSON..= certificateChain,
         "PrivateKey" JSON..= privateKey]
instance Property "CertificateChain" ListenerTlsFileCertificateProperty where
  type PropertyType "CertificateChain" ListenerTlsFileCertificateProperty = Value Prelude.Text
  set newValue ListenerTlsFileCertificateProperty {..}
    = ListenerTlsFileCertificateProperty
        {certificateChain = newValue, ..}
instance Property "PrivateKey" ListenerTlsFileCertificateProperty where
  type PropertyType "PrivateKey" ListenerTlsFileCertificateProperty = Value Prelude.Text
  set newValue ListenerTlsFileCertificateProperty {..}
    = ListenerTlsFileCertificateProperty {privateKey = newValue, ..}