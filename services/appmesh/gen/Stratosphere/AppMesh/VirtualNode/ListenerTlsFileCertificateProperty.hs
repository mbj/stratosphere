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
  = ListenerTlsFileCertificateProperty {certificateChain :: (Value Prelude.Text),
                                        privateKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsFileCertificateProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ListenerTlsFileCertificateProperty
mkListenerTlsFileCertificateProperty certificateChain privateKey
  = ListenerTlsFileCertificateProperty
      {certificateChain = certificateChain, privateKey = privateKey}
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