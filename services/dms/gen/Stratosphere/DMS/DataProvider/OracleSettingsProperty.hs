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
                            databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                            port :: (Prelude.Maybe (Value Prelude.Integer)),
                            secretsManagerOracleAsmAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerOracleAsmSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerSecurityDbEncryptionAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerSecurityDbEncryptionSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            serverName :: (Prelude.Maybe (Value Prelude.Text)),
                            sslMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOracleSettingsProperty :: OracleSettingsProperty
mkOracleSettingsProperty
  = OracleSettingsProperty
      {asmServer = Prelude.Nothing, certificateArn = Prelude.Nothing,
       databaseName = Prelude.Nothing, port = Prelude.Nothing,
       secretsManagerOracleAsmAccessRoleArn = Prelude.Nothing,
       secretsManagerOracleAsmSecretId = Prelude.Nothing,
       secretsManagerSecurityDbEncryptionAccessRoleArn = Prelude.Nothing,
       secretsManagerSecurityDbEncryptionSecretId = Prelude.Nothing,
       serverName = Prelude.Nothing, sslMode = Prelude.Nothing}
instance ToResourceProperties OracleSettingsProperty where
  toResourceProperties OracleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.OracleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AsmServer" Prelude.<$> asmServer,
                            (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "SecretsManagerOracleAsmAccessRoleArn"
                              Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
                            (JSON..=) "SecretsManagerOracleAsmSecretId"
                              Prelude.<$> secretsManagerOracleAsmSecretId,
                            (JSON..=) "SecretsManagerSecurityDbEncryptionAccessRoleArn"
                              Prelude.<$> secretsManagerSecurityDbEncryptionAccessRoleArn,
                            (JSON..=) "SecretsManagerSecurityDbEncryptionSecretId"
                              Prelude.<$> secretsManagerSecurityDbEncryptionSecretId,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "SslMode" Prelude.<$> sslMode])}
instance JSON.ToJSON OracleSettingsProperty where
  toJSON OracleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AsmServer" Prelude.<$> asmServer,
               (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "SecretsManagerOracleAsmAccessRoleArn"
                 Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
               (JSON..=) "SecretsManagerOracleAsmSecretId"
                 Prelude.<$> secretsManagerOracleAsmSecretId,
               (JSON..=) "SecretsManagerSecurityDbEncryptionAccessRoleArn"
                 Prelude.<$> secretsManagerSecurityDbEncryptionAccessRoleArn,
               (JSON..=) "SecretsManagerSecurityDbEncryptionSecretId"
                 Prelude.<$> secretsManagerSecurityDbEncryptionSecretId,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "SslMode" Prelude.<$> sslMode]))
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
    = OracleSettingsProperty {databaseName = Prelude.pure newValue, ..}
instance Property "Port" OracleSettingsProperty where
  type PropertyType "Port" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {port = Prelude.pure newValue, ..}
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
    = OracleSettingsProperty {serverName = Prelude.pure newValue, ..}
instance Property "SslMode" OracleSettingsProperty where
  type PropertyType "SslMode" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {sslMode = Prelude.pure newValue, ..}