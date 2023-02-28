module Stratosphere.AppMesh.VirtualNode.ListenerTlsSdsCertificateProperty (
        ListenerTlsSdsCertificateProperty(..),
        mkListenerTlsSdsCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerTlsSdsCertificateProperty
  = ListenerTlsSdsCertificateProperty {secretName :: (Value Prelude.Text)}
mkListenerTlsSdsCertificateProperty ::
  Value Prelude.Text -> ListenerTlsSdsCertificateProperty
mkListenerTlsSdsCertificateProperty secretName
  = ListenerTlsSdsCertificateProperty {secretName = secretName}
instance ToResourceProperties ListenerTlsSdsCertificateProperty where
  toResourceProperties ListenerTlsSdsCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTlsSdsCertificate",
         supportsTags = Prelude.False,
         properties = ["SecretName" JSON..= secretName]}
instance JSON.ToJSON ListenerTlsSdsCertificateProperty where
  toJSON ListenerTlsSdsCertificateProperty {..}
    = JSON.object ["SecretName" JSON..= secretName]
instance Property "SecretName" ListenerTlsSdsCertificateProperty where
  type PropertyType "SecretName" ListenerTlsSdsCertificateProperty = Value Prelude.Text
  set newValue ListenerTlsSdsCertificateProperty {}
    = ListenerTlsSdsCertificateProperty {secretName = newValue, ..}