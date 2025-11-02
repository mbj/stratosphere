module Stratosphere.Pipes.Pipe.SelfManagedKafkaAccessConfigurationCredentialsProperty (
        SelfManagedKafkaAccessConfigurationCredentialsProperty(..),
        mkSelfManagedKafkaAccessConfigurationCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedKafkaAccessConfigurationCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials.html>
    SelfManagedKafkaAccessConfigurationCredentialsProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials.html#cfn-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials-basicauth>
                                                            basicAuth :: (Prelude.Maybe (Value Prelude.Text)),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials.html#cfn-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials-clientcertificatetlsauth>
                                                            clientCertificateTlsAuth :: (Prelude.Maybe (Value Prelude.Text)),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials.html#cfn-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials-saslscram256auth>
                                                            saslScram256Auth :: (Prelude.Maybe (Value Prelude.Text)),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials.html#cfn-pipes-pipe-selfmanagedkafkaaccessconfigurationcredentials-saslscram512auth>
                                                            saslScram512Auth :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedKafkaAccessConfigurationCredentialsProperty ::
  SelfManagedKafkaAccessConfigurationCredentialsProperty
mkSelfManagedKafkaAccessConfigurationCredentialsProperty
  = SelfManagedKafkaAccessConfigurationCredentialsProperty
      {haddock_workaround_ = (), basicAuth = Prelude.Nothing,
       clientCertificateTlsAuth = Prelude.Nothing,
       saslScram256Auth = Prelude.Nothing,
       saslScram512Auth = Prelude.Nothing}
instance ToResourceProperties SelfManagedKafkaAccessConfigurationCredentialsProperty where
  toResourceProperties
    SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.SelfManagedKafkaAccessConfigurationCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BasicAuth" Prelude.<$> basicAuth,
                            (JSON..=) "ClientCertificateTlsAuth"
                              Prelude.<$> clientCertificateTlsAuth,
                            (JSON..=) "SaslScram256Auth" Prelude.<$> saslScram256Auth,
                            (JSON..=) "SaslScram512Auth" Prelude.<$> saslScram512Auth])}
instance JSON.ToJSON SelfManagedKafkaAccessConfigurationCredentialsProperty where
  toJSON SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BasicAuth" Prelude.<$> basicAuth,
               (JSON..=) "ClientCertificateTlsAuth"
                 Prelude.<$> clientCertificateTlsAuth,
               (JSON..=) "SaslScram256Auth" Prelude.<$> saslScram256Auth,
               (JSON..=) "SaslScram512Auth" Prelude.<$> saslScram512Auth]))
instance Property "BasicAuth" SelfManagedKafkaAccessConfigurationCredentialsProperty where
  type PropertyType "BasicAuth" SelfManagedKafkaAccessConfigurationCredentialsProperty = Value Prelude.Text
  set
    newValue
    SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = SelfManagedKafkaAccessConfigurationCredentialsProperty
        {basicAuth = Prelude.pure newValue, ..}
instance Property "ClientCertificateTlsAuth" SelfManagedKafkaAccessConfigurationCredentialsProperty where
  type PropertyType "ClientCertificateTlsAuth" SelfManagedKafkaAccessConfigurationCredentialsProperty = Value Prelude.Text
  set
    newValue
    SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = SelfManagedKafkaAccessConfigurationCredentialsProperty
        {clientCertificateTlsAuth = Prelude.pure newValue, ..}
instance Property "SaslScram256Auth" SelfManagedKafkaAccessConfigurationCredentialsProperty where
  type PropertyType "SaslScram256Auth" SelfManagedKafkaAccessConfigurationCredentialsProperty = Value Prelude.Text
  set
    newValue
    SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = SelfManagedKafkaAccessConfigurationCredentialsProperty
        {saslScram256Auth = Prelude.pure newValue, ..}
instance Property "SaslScram512Auth" SelfManagedKafkaAccessConfigurationCredentialsProperty where
  type PropertyType "SaslScram512Auth" SelfManagedKafkaAccessConfigurationCredentialsProperty = Value Prelude.Text
  set
    newValue
    SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = SelfManagedKafkaAccessConfigurationCredentialsProperty
        {saslScram512Auth = Prelude.pure newValue, ..}