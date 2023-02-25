module Stratosphere.DMS.Endpoint.GcpMySQLSettingsProperty (
        GcpMySQLSettingsProperty(..), mkGcpMySQLSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GcpMySQLSettingsProperty
  = GcpMySQLSettingsProperty {afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                              cleanSourceMetadataOnMismatch :: (Prelude.Maybe (Value Prelude.Bool)),
                              databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                              eventsPollInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                              maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                              parallelLoadThreads :: (Prelude.Maybe (Value Prelude.Integer)),
                              password :: (Prelude.Maybe (Value Prelude.Text)),
                              port :: (Prelude.Maybe (Value Prelude.Integer)),
                              secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                              secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                              serverName :: (Prelude.Maybe (Value Prelude.Text)),
                              serverTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                              username :: (Prelude.Maybe (Value Prelude.Text))}
mkGcpMySQLSettingsProperty :: GcpMySQLSettingsProperty
mkGcpMySQLSettingsProperty
  = GcpMySQLSettingsProperty
      {afterConnectScript = Prelude.Nothing,
       cleanSourceMetadataOnMismatch = Prelude.Nothing,
       databaseName = Prelude.Nothing,
       eventsPollInterval = Prelude.Nothing,
       maxFileSize = Prelude.Nothing,
       parallelLoadThreads = Prelude.Nothing, password = Prelude.Nothing,
       port = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       serverName = Prelude.Nothing, serverTimezone = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties GcpMySQLSettingsProperty where
  toResourceProperties GcpMySQLSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.GcpMySQLSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
                            (JSON..=) "CleanSourceMetadataOnMismatch"
                              Prelude.<$> cleanSourceMetadataOnMismatch,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "EventsPollInterval" Prelude.<$> eventsPollInterval,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "ParallelLoadThreads" Prelude.<$> parallelLoadThreads,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "ServerTimezone" Prelude.<$> serverTimezone,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON GcpMySQLSettingsProperty where
  toJSON GcpMySQLSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
               (JSON..=) "CleanSourceMetadataOnMismatch"
                 Prelude.<$> cleanSourceMetadataOnMismatch,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "EventsPollInterval" Prelude.<$> eventsPollInterval,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "ParallelLoadThreads" Prelude.<$> parallelLoadThreads,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "ServerTimezone" Prelude.<$> serverTimezone,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "AfterConnectScript" GcpMySQLSettingsProperty where
  type PropertyType "AfterConnectScript" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {afterConnectScript = Prelude.pure newValue, ..}
instance Property "CleanSourceMetadataOnMismatch" GcpMySQLSettingsProperty where
  type PropertyType "CleanSourceMetadataOnMismatch" GcpMySQLSettingsProperty = Value Prelude.Bool
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {cleanSourceMetadataOnMismatch = Prelude.pure newValue, ..}
instance Property "DatabaseName" GcpMySQLSettingsProperty where
  type PropertyType "DatabaseName" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "EventsPollInterval" GcpMySQLSettingsProperty where
  type PropertyType "EventsPollInterval" GcpMySQLSettingsProperty = Value Prelude.Integer
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {eventsPollInterval = Prelude.pure newValue, ..}
instance Property "MaxFileSize" GcpMySQLSettingsProperty where
  type PropertyType "MaxFileSize" GcpMySQLSettingsProperty = Value Prelude.Integer
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {maxFileSize = Prelude.pure newValue, ..}
instance Property "ParallelLoadThreads" GcpMySQLSettingsProperty where
  type PropertyType "ParallelLoadThreads" GcpMySQLSettingsProperty = Value Prelude.Integer
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {parallelLoadThreads = Prelude.pure newValue, ..}
instance Property "Password" GcpMySQLSettingsProperty where
  type PropertyType "Password" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty {password = Prelude.pure newValue, ..}
instance Property "Port" GcpMySQLSettingsProperty where
  type PropertyType "Port" GcpMySQLSettingsProperty = Value Prelude.Integer
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty {port = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" GcpMySQLSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" GcpMySQLSettingsProperty where
  type PropertyType "SecretsManagerSecretId" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "ServerName" GcpMySQLSettingsProperty where
  type PropertyType "ServerName" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty {serverName = Prelude.pure newValue, ..}
instance Property "ServerTimezone" GcpMySQLSettingsProperty where
  type PropertyType "ServerTimezone" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty
        {serverTimezone = Prelude.pure newValue, ..}
instance Property "Username" GcpMySQLSettingsProperty where
  type PropertyType "Username" GcpMySQLSettingsProperty = Value Prelude.Text
  set newValue GcpMySQLSettingsProperty {..}
    = GcpMySQLSettingsProperty {username = Prelude.pure newValue, ..}