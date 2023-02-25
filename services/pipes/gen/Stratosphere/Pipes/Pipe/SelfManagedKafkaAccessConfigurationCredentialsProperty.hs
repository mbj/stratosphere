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
  = SelfManagedKafkaAccessConfigurationCredentialsProperty {basicAuth :: (Prelude.Maybe (Value Prelude.Text)),
                                                            clientCertificateTlsAuth :: (Prelude.Maybe (Value Prelude.Text)),
                                                            saslScram256Auth :: (Prelude.Maybe (Value Prelude.Text)),
                                                            saslScram512Auth :: (Prelude.Maybe (Value Prelude.Text))}
mkSelfManagedKafkaAccessConfigurationCredentialsProperty ::
  SelfManagedKafkaAccessConfigurationCredentialsProperty
mkSelfManagedKafkaAccessConfigurationCredentialsProperty
  = SelfManagedKafkaAccessConfigurationCredentialsProperty
      {basicAuth = Prelude.Nothing,
       clientCertificateTlsAuth = Prelude.Nothing,
       saslScram256Auth = Prelude.Nothing,
       saslScram512Auth = Prelude.Nothing}
instance ToResourceProperties SelfManagedKafkaAccessConfigurationCredentialsProperty where
  toResourceProperties
    SelfManagedKafkaAccessConfigurationCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.SelfManagedKafkaAccessConfigurationCredentials",
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