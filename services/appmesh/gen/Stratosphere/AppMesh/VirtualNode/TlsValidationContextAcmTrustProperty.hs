module Stratosphere.AppMesh.VirtualNode.TlsValidationContextAcmTrustProperty (
        TlsValidationContextAcmTrustProperty(..),
        mkTlsValidationContextAcmTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsValidationContextAcmTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextacmtrust.html>
    TlsValidationContextAcmTrustProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextacmtrust.html#cfn-appmesh-virtualnode-tlsvalidationcontextacmtrust-certificateauthorityarns>
                                          certificateAuthorityArns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsValidationContextAcmTrustProperty ::
  ValueList Prelude.Text -> TlsValidationContextAcmTrustProperty
mkTlsValidationContextAcmTrustProperty certificateAuthorityArns
  = TlsValidationContextAcmTrustProperty
      {haddock_workaround_ = (),
       certificateAuthorityArns = certificateAuthorityArns}
instance ToResourceProperties TlsValidationContextAcmTrustProperty where
  toResourceProperties TlsValidationContextAcmTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContextAcmTrust",
         supportsTags = Prelude.False,
         properties = ["CertificateAuthorityArns"
                         JSON..= certificateAuthorityArns]}
instance JSON.ToJSON TlsValidationContextAcmTrustProperty where
  toJSON TlsValidationContextAcmTrustProperty {..}
    = JSON.object
        ["CertificateAuthorityArns" JSON..= certificateAuthorityArns]
instance Property "CertificateAuthorityArns" TlsValidationContextAcmTrustProperty where
  type PropertyType "CertificateAuthorityArns" TlsValidationContextAcmTrustProperty = ValueList Prelude.Text
  set newValue TlsValidationContextAcmTrustProperty {..}
    = TlsValidationContextAcmTrustProperty
        {certificateAuthorityArns = newValue, ..}