module Stratosphere.DMS.DataProvider.OracleSettingsProperty (
        OracleSettingsProperty(..), mkOracleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OracleSettingsProperty
  = OracleSettingsProperty {asmServer :: (Prelude.Maybe (Value Prelude.Text)),
                            certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                            databaseName :: (Value Prelude.Text),
                            port :: (Value Prelude.Integer),
                            secretsManagerOracleAsmAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerOracleAsmSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerSecurityDbEncryptionAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerSecurityDbEncryptionSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            serverName :: (Value Prelude.Text),
                            sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOracleSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> OracleSettingsProperty
mkOracleSettingsProperty databaseName port serverName sslMode
  = OracleSettingsProperty
      {databaseName = databaseName, port = port, serverName = serverName,
       sslMode = sslMode, asmServer = Prelude.Nothing,
       certificateArn = Prelude.Nothing,
       secretsManagerOracleAsmAccessRoleArn = Prelude.Nothing,
       secretsManagerOracleAsmSecretId = Prelude.Nothing,
       secretsManagerSecurityDbEncryptionAccessRoleArn = Prelude.Nothing,
       secretsManagerSecurityDbEncryptionSecretId = Prelude.Nothing}
instance ToResourceProperties OracleSettingsProperty where
  toResourceProperties OracleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.OracleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
                            "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "AsmServer" Prelude.<$> asmServer,
                               (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                               (JSON..=) "SecretsManagerOracleAsmAccessRoleArn"
                                 Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
                               (JSON..=) "SecretsManagerOracleAsmSecretId"
                                 Prelude.<$> secretsManagerOracleAsmSecretId,
                               (JSON..=) "SecretsManagerSecurityDbEncryptionAccessRoleArn"
                                 Prelude.<$> secretsManagerSecurityDbEncryptionAccessRoleArn,
                               (JSON..=) "SecretsManagerSecurityDbEncryptionSecretId"
                                 Prelude.<$> secretsManagerSecurityDbEncryptionSecretId]))}
instance JSON.ToJSON OracleSettingsProperty where
  toJSON OracleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
               "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "AsmServer" Prelude.<$> asmServer,
                  (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                  (JSON..=) "SecretsManagerOracleAsmAccessRoleArn"
                    Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
                  (JSON..=) "SecretsManagerOracleAsmSecretId"
                    Prelude.<$> secretsManagerOracleAsmSecretId,
                  (JSON..=) "SecretsManagerSecurityDbEncryptionAccessRoleArn"
                    Prelude.<$> secretsManagerSecurityDbEncryptionAccessRoleArn,
                  (JSON..=) "SecretsManagerSecurityDbEncryptionSecretId"
                    Prelude.<$> secretsManagerSecurityDbEncryptionSecretId])))
instance Property "AsmServer" OracleSettingsProperty where
  type PropertyType "AsmServer" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {asmServer = Prelude.pure newValue, ..}
instance Property "CertificateArn" OracleSettingsProperty where
  type PropertyType "CertificateArn" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" OracleSettingsProperty where
  type PropertyType "DatabaseName" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {databaseName = newValue, ..}
instance Property "Port" OracleSettingsProperty where
  type PropertyType "Port" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {port = newValue, ..}
instance Property "SecretsManagerOracleAsmAccessRoleArn" OracleSettingsProperty where
  type PropertyType "SecretsManagerOracleAsmAccessRoleArn" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerOracleAsmAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerOracleAsmSecretId" OracleSettingsProperty where
  type PropertyType "SecretsManagerOracleAsmSecretId" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerOracleAsmSecretId = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecurityDbEncryptionAccessRoleArn" OracleSettingsProperty where
  type PropertyType "SecretsManagerSecurityDbEncryptionAccessRoleArn" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerSecurityDbEncryptionAccessRoleArn = Prelude.pure
                                                             newValue,
         ..}
instance Property "SecretsManagerSecurityDbEncryptionSecretId" OracleSettingsProperty where
  type PropertyType "SecretsManagerSecurityDbEncryptionSecretId" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerSecurityDbEncryptionSecretId = Prelude.pure
                                                        newValue,
         ..}
instance Property "ServerName" OracleSettingsProperty where
  type PropertyType "ServerName" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" OracleSettingsProperty where
  type PropertyType "SslMode" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {sslMode = newValue, ..}