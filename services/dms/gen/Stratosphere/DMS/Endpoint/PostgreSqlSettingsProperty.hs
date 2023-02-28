module Stratosphere.DMS.Endpoint.PostgreSqlSettingsProperty (
        PostgreSqlSettingsProperty(..), mkPostgreSqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PostgreSqlSettingsProperty
  = PostgreSqlSettingsProperty {afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                                captureDdls :: (Prelude.Maybe (Value Prelude.Bool)),
                                ddlArtifactsSchema :: (Prelude.Maybe (Value Prelude.Text)),
                                executeTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                failTasksOnLobTruncation :: (Prelude.Maybe (Value Prelude.Bool)),
                                heartbeatEnable :: (Prelude.Maybe (Value Prelude.Bool)),
                                heartbeatFrequency :: (Prelude.Maybe (Value Prelude.Integer)),
                                heartbeatSchema :: (Prelude.Maybe (Value Prelude.Text)),
                                maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                pluginName :: (Prelude.Maybe (Value Prelude.Text)),
                                secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                                slotName :: (Prelude.Maybe (Value Prelude.Text))}
mkPostgreSqlSettingsProperty :: PostgreSqlSettingsProperty
mkPostgreSqlSettingsProperty
  = PostgreSqlSettingsProperty
      {afterConnectScript = Prelude.Nothing,
       captureDdls = Prelude.Nothing,
       ddlArtifactsSchema = Prelude.Nothing,
       executeTimeout = Prelude.Nothing,
       failTasksOnLobTruncation = Prelude.Nothing,
       heartbeatEnable = Prelude.Nothing,
       heartbeatFrequency = Prelude.Nothing,
       heartbeatSchema = Prelude.Nothing, maxFileSize = Prelude.Nothing,
       pluginName = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       slotName = Prelude.Nothing}
instance ToResourceProperties PostgreSqlSettingsProperty where
  toResourceProperties PostgreSqlSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.PostgreSqlSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
                            (JSON..=) "CaptureDdls" Prelude.<$> captureDdls,
                            (JSON..=) "DdlArtifactsSchema" Prelude.<$> ddlArtifactsSchema,
                            (JSON..=) "ExecuteTimeout" Prelude.<$> executeTimeout,
                            (JSON..=) "FailTasksOnLobTruncation"
                              Prelude.<$> failTasksOnLobTruncation,
                            (JSON..=) "HeartbeatEnable" Prelude.<$> heartbeatEnable,
                            (JSON..=) "HeartbeatFrequency" Prelude.<$> heartbeatFrequency,
                            (JSON..=) "HeartbeatSchema" Prelude.<$> heartbeatSchema,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "PluginName" Prelude.<$> pluginName,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "SlotName" Prelude.<$> slotName])}
instance JSON.ToJSON PostgreSqlSettingsProperty where
  toJSON PostgreSqlSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
               (JSON..=) "CaptureDdls" Prelude.<$> captureDdls,
               (JSON..=) "DdlArtifactsSchema" Prelude.<$> ddlArtifactsSchema,
               (JSON..=) "ExecuteTimeout" Prelude.<$> executeTimeout,
               (JSON..=) "FailTasksOnLobTruncation"
                 Prelude.<$> failTasksOnLobTruncation,
               (JSON..=) "HeartbeatEnable" Prelude.<$> heartbeatEnable,
               (JSON..=) "HeartbeatFrequency" Prelude.<$> heartbeatFrequency,
               (JSON..=) "HeartbeatSchema" Prelude.<$> heartbeatSchema,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "PluginName" Prelude.<$> pluginName,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "SlotName" Prelude.<$> slotName]))
instance Property "AfterConnectScript" PostgreSqlSettingsProperty where
  type PropertyType "AfterConnectScript" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {afterConnectScript = Prelude.pure newValue, ..}
instance Property "CaptureDdls" PostgreSqlSettingsProperty where
  type PropertyType "CaptureDdls" PostgreSqlSettingsProperty = Value Prelude.Bool
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {captureDdls = Prelude.pure newValue, ..}
instance Property "DdlArtifactsSchema" PostgreSqlSettingsProperty where
  type PropertyType "DdlArtifactsSchema" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {ddlArtifactsSchema = Prelude.pure newValue, ..}
instance Property "ExecuteTimeout" PostgreSqlSettingsProperty where
  type PropertyType "ExecuteTimeout" PostgreSqlSettingsProperty = Value Prelude.Integer
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {executeTimeout = Prelude.pure newValue, ..}
instance Property "FailTasksOnLobTruncation" PostgreSqlSettingsProperty where
  type PropertyType "FailTasksOnLobTruncation" PostgreSqlSettingsProperty = Value Prelude.Bool
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {failTasksOnLobTruncation = Prelude.pure newValue, ..}
instance Property "HeartbeatEnable" PostgreSqlSettingsProperty where
  type PropertyType "HeartbeatEnable" PostgreSqlSettingsProperty = Value Prelude.Bool
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {heartbeatEnable = Prelude.pure newValue, ..}
instance Property "HeartbeatFrequency" PostgreSqlSettingsProperty where
  type PropertyType "HeartbeatFrequency" PostgreSqlSettingsProperty = Value Prelude.Integer
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {heartbeatFrequency = Prelude.pure newValue, ..}
instance Property "HeartbeatSchema" PostgreSqlSettingsProperty where
  type PropertyType "HeartbeatSchema" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {heartbeatSchema = Prelude.pure newValue, ..}
instance Property "MaxFileSize" PostgreSqlSettingsProperty where
  type PropertyType "MaxFileSize" PostgreSqlSettingsProperty = Value Prelude.Integer
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {maxFileSize = Prelude.pure newValue, ..}
instance Property "PluginName" PostgreSqlSettingsProperty where
  type PropertyType "PluginName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {pluginName = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" PostgreSqlSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" PostgreSqlSettingsProperty where
  type PropertyType "SecretsManagerSecretId" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "SlotName" PostgreSqlSettingsProperty where
  type PropertyType "SlotName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {slotName = Prelude.pure newValue, ..}