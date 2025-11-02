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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlssdscertificate.html>
    ListenerTlsSdsCertificateProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlssdscertificate.html#cfn-appmesh-virtualnode-listenertlssdscertificate-secretname>
                                       secretName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsSdsCertificateProperty ::
  Value Prelude.Text -> ListenerTlsSdsCertificateProperty
mkListenerTlsSdsCertificateProperty secretName
  = ListenerTlsSdsCertificateProperty
      {haddock_workaround_ = (), secretName = secretName}
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
  set newValue ListenerTlsSdsCertificateProperty {..}
    = ListenerTlsSdsCertificateProperty {secretName = newValue, ..}