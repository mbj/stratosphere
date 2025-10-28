module Stratosphere.Pipes.Pipe.MSKAccessCredentialsProperty (
        MSKAccessCredentialsProperty(..), mkMSKAccessCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MSKAccessCredentialsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-mskaccesscredentials.html>
    MSKAccessCredentialsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-mskaccesscredentials.html#cfn-pipes-pipe-mskaccesscredentials-clientcertificatetlsauth>
                                  clientCertificateTlsAuth :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-mskaccesscredentials.html#cfn-pipes-pipe-mskaccesscredentials-saslscram512auth>
                                  saslScram512Auth :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMSKAccessCredentialsProperty :: MSKAccessCredentialsProperty
mkMSKAccessCredentialsProperty
  = MSKAccessCredentialsProperty
      {clientCertificateTlsAuth = Prelude.Nothing,
       saslScram512Auth = Prelude.Nothing}
instance ToResourceProperties MSKAccessCredentialsProperty where
  toResourceProperties MSKAccessCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.MSKAccessCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientCertificateTlsAuth"
                              Prelude.<$> clientCertificateTlsAuth,
                            (JSON..=) "SaslScram512Auth" Prelude.<$> saslScram512Auth])}
instance JSON.ToJSON MSKAccessCredentialsProperty where
  toJSON MSKAccessCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientCertificateTlsAuth"
                 Prelude.<$> clientCertificateTlsAuth,
               (JSON..=) "SaslScram512Auth" Prelude.<$> saslScram512Auth]))
instance Property "ClientCertificateTlsAuth" MSKAccessCredentialsProperty where
  type PropertyType "ClientCertificateTlsAuth" MSKAccessCredentialsProperty = Value Prelude.Text
  set newValue MSKAccessCredentialsProperty {..}
    = MSKAccessCredentialsProperty
        {clientCertificateTlsAuth = Prelude.pure newValue, ..}
instance Property "SaslScram512Auth" MSKAccessCredentialsProperty where
  type PropertyType "SaslScram512Auth" MSKAccessCredentialsProperty = Value Prelude.Text
  set newValue MSKAccessCredentialsProperty {..}
    = MSKAccessCredentialsProperty
        {saslScram512Auth = Prelude.pure newValue, ..}