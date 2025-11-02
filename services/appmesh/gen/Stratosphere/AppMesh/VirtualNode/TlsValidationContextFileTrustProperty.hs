module Stratosphere.AppMesh.VirtualNode.TlsValidationContextFileTrustProperty (
        TlsValidationContextFileTrustProperty(..),
        mkTlsValidationContextFileTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsValidationContextFileTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextfiletrust.html>
    TlsValidationContextFileTrustProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextfiletrust.html#cfn-appmesh-virtualnode-tlsvalidationcontextfiletrust-certificatechain>
                                           certificateChain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsValidationContextFileTrustProperty ::
  Value Prelude.Text -> TlsValidationContextFileTrustProperty
mkTlsValidationContextFileTrustProperty certificateChain
  = TlsValidationContextFileTrustProperty
      {haddock_workaround_ = (), certificateChain = certificateChain}
instance ToResourceProperties TlsValidationContextFileTrustProperty where
  toResourceProperties TlsValidationContextFileTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContextFileTrust",
         supportsTags = Prelude.False,
         properties = ["CertificateChain" JSON..= certificateChain]}
instance JSON.ToJSON TlsValidationContextFileTrustProperty where
  toJSON TlsValidationContextFileTrustProperty {..}
    = JSON.object ["CertificateChain" JSON..= certificateChain]
instance Property "CertificateChain" TlsValidationContextFileTrustProperty where
  type PropertyType "CertificateChain" TlsValidationContextFileTrustProperty = Value Prelude.Text
  set newValue TlsValidationContextFileTrustProperty {..}
    = TlsValidationContextFileTrustProperty
        {certificateChain = newValue, ..}