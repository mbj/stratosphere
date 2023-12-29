module Stratosphere.DMS.Endpoint.MySqlSettingsProperty (
        MySqlSettingsProperty(..), mkMySqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MySqlSettingsProperty
  = MySqlSettingsProperty {afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                           cleanSourceMetadataOnMismatch :: (Prelude.Maybe (Value Prelude.Bool)),
                           eventsPollInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                           maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                           parallelLoadThreads :: (Prelude.Maybe (Value Prelude.Integer)),
                           secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                           serverTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                           targetDbType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMySqlSettingsProperty :: MySqlSettingsProperty
mkMySqlSettingsProperty
  = MySqlSettingsProperty
      {afterConnectScript = Prelude.Nothing,
       cleanSourceMetadataOnMismatch = Prelude.Nothing,
       eventsPollInterval = Prelude.Nothing,
       maxFileSize = Prelude.Nothing,
       parallelLoadThreads = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       serverTimezone = Prelude.Nothing, targetDbType = Prelude.Nothing}
instance ToResourceProperties MySqlSettingsProperty where
  toResourceProperties MySqlSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.MySqlSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
                            (JSON..=) "CleanSourceMetadataOnMismatch"
                              Prelude.<$> cleanSourceMetadataOnMismatch,
                            (JSON..=) "EventsPollInterval" Prelude.<$> eventsPollInterval,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "ParallelLoadThreads" Prelude.<$> parallelLoadThreads,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "ServerTimezone" Prelude.<$> serverTimezone,
                            (JSON..=) "TargetDbType" Prelude.<$> targetDbType])}
instance JSON.ToJSON MySqlSettingsProperty where
  toJSON MySqlSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
               (JSON..=) "CleanSourceMetadataOnMismatch"
                 Prelude.<$> cleanSourceMetadataOnMismatch,
               (JSON..=) "EventsPollInterval" Prelude.<$> eventsPollInterval,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "ParallelLoadThreads" Prelude.<$> parallelLoadThreads,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "ServerTimezone" Prelude.<$> serverTimezone,
               (JSON..=) "TargetDbType" Prelude.<$> targetDbType]))
instance Property "AfterConnectScript" MySqlSettingsProperty where
  type PropertyType "AfterConnectScript" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {afterConnectScript = Prelude.pure newValue, ..}
instance Property "CleanSourceMetadataOnMismatch" MySqlSettingsProperty where
  type PropertyType "CleanSourceMetadataOnMismatch" MySqlSettingsProperty = Value Prelude.Bool
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {cleanSourceMetadataOnMismatch = Prelude.pure newValue, ..}
instance Property "EventsPollInterval" MySqlSettingsProperty where
  type PropertyType "EventsPollInterval" MySqlSettingsProperty = Value Prelude.Integer
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {eventsPollInterval = Prelude.pure newValue, ..}
instance Property "MaxFileSize" MySqlSettingsProperty where
  type PropertyType "MaxFileSize" MySqlSettingsProperty = Value Prelude.Integer
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {maxFileSize = Prelude.pure newValue, ..}
instance Property "ParallelLoadThreads" MySqlSettingsProperty where
  type PropertyType "ParallelLoadThreads" MySqlSettingsProperty = Value Prelude.Integer
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {parallelLoadThreads = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" MySqlSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" MySqlSettingsProperty where
  type PropertyType "SecretsManagerSecretId" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "ServerTimezone" MySqlSettingsProperty where
  type PropertyType "ServerTimezone" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {serverTimezone = Prelude.pure newValue, ..}
instance Property "TargetDbType" MySqlSettingsProperty where
  type PropertyType "TargetDbType" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {targetDbType = Prelude.pure newValue, ..}