module Stratosphere.EC2.ClientVpnEndpoint.CertificateAuthenticationRequestProperty (
        CertificateAuthenticationRequestProperty(..),
        mkCertificateAuthenticationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateAuthenticationRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html>
    CertificateAuthenticationRequestProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html#cfn-ec2-clientvpnendpoint-certificateauthenticationrequest-clientrootcertificatechainarn>
                                              clientRootCertificateChainArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateAuthenticationRequestProperty ::
  Value Prelude.Text -> CertificateAuthenticationRequestProperty
mkCertificateAuthenticationRequestProperty
  clientRootCertificateChainArn
  = CertificateAuthenticationRequestProperty
      {haddock_workaround_ = (),
       clientRootCertificateChainArn = clientRootCertificateChainArn}
instance ToResourceProperties CertificateAuthenticationRequestProperty where
  toResourceProperties CertificateAuthenticationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.CertificateAuthenticationRequest",
         supportsTags = Prelude.False,
         properties = ["ClientRootCertificateChainArn"
                         JSON..= clientRootCertificateChainArn]}
instance JSON.ToJSON CertificateAuthenticationRequestProperty where
  toJSON CertificateAuthenticationRequestProperty {..}
    = JSON.object
        ["ClientRootCertificateChainArn"
           JSON..= clientRootCertificateChainArn]
instance Property "ClientRootCertificateChainArn" CertificateAuthenticationRequestProperty where
  type PropertyType "ClientRootCertificateChainArn" CertificateAuthenticationRequestProperty = Value Prelude.Text
  set newValue CertificateAuthenticationRequestProperty {..}
    = CertificateAuthenticationRequestProperty
        {clientRootCertificateChainArn = newValue, ..}