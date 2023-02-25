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
  = CertificateAuthenticationRequestProperty {clientRootCertificateChainArn :: (Value Prelude.Text)}
mkCertificateAuthenticationRequestProperty ::
  Value Prelude.Text -> CertificateAuthenticationRequestProperty
mkCertificateAuthenticationRequestProperty
  clientRootCertificateChainArn
  = CertificateAuthenticationRequestProperty
      {clientRootCertificateChainArn = clientRootCertificateChainArn}
instance ToResourceProperties CertificateAuthenticationRequestProperty where
  toResourceProperties CertificateAuthenticationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.CertificateAuthenticationRequest",
         properties = ["ClientRootCertificateChainArn"
                         JSON..= clientRootCertificateChainArn]}
instance JSON.ToJSON CertificateAuthenticationRequestProperty where
  toJSON CertificateAuthenticationRequestProperty {..}
    = JSON.object
        ["ClientRootCertificateChainArn"
           JSON..= clientRootCertificateChainArn]
instance Property "ClientRootCertificateChainArn" CertificateAuthenticationRequestProperty where
  type PropertyType "ClientRootCertificateChainArn" CertificateAuthenticationRequestProperty = Value Prelude.Text
  set newValue CertificateAuthenticationRequestProperty {}
    = CertificateAuthenticationRequestProperty
        {clientRootCertificateChainArn = newValue, ..}