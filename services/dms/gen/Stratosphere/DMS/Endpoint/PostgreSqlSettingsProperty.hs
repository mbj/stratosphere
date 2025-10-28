module Stratosphere.DMS.Endpoint.PostgreSqlSettingsProperty (
        PostgreSqlSettingsProperty(..), mkPostgreSqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PostgreSqlSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html>
    PostgreSqlSettingsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-afterconnectscript>
                                afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-babelfishdatabasename>
                                babelfishDatabaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-captureddls>
                                captureDdls :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-databasemode>
                                databaseMode :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-ddlartifactsschema>
                                ddlArtifactsSchema :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-executetimeout>
                                executeTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-failtasksonlobtruncation>
                                failTasksOnLobTruncation :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-heartbeatenable>
                                heartbeatEnable :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-heartbeatfrequency>
                                heartbeatFrequency :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-heartbeatschema>
                                heartbeatSchema :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-mapbooleanasboolean>
                                mapBooleanAsBoolean :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-maxfilesize>
                                maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-pluginname>
                                pluginName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-secretsmanageraccessrolearn>
                                secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-secretsmanagersecretid>
                                secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-postgresqlsettings.html#cfn-dms-endpoint-postgresqlsettings-slotname>
                                slotName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPostgreSqlSettingsProperty :: PostgreSqlSettingsProperty
mkPostgreSqlSettingsProperty
  = PostgreSqlSettingsProperty
      {haddock_workaround_ = (), afterConnectScript = Prelude.Nothing,
       babelfishDatabaseName = Prelude.Nothing,
       captureDdls = Prelude.Nothing, databaseMode = Prelude.Nothing,
       ddlArtifactsSchema = Prelude.Nothing,
       executeTimeout = Prelude.Nothing,
       failTasksOnLobTruncation = Prelude.Nothing,
       heartbeatEnable = Prelude.Nothing,
       heartbeatFrequency = Prelude.Nothing,
       heartbeatSchema = Prelude.Nothing,
       mapBooleanAsBoolean = Prelude.Nothing,
       maxFileSize = Prelude.Nothing, pluginName = Prelude.Nothing,
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
                            (JSON..=) "BabelfishDatabaseName"
                              Prelude.<$> babelfishDatabaseName,
                            (JSON..=) "CaptureDdls" Prelude.<$> captureDdls,
                            (JSON..=) "DatabaseMode" Prelude.<$> databaseMode,
                            (JSON..=) "DdlArtifactsSchema" Prelude.<$> ddlArtifactsSchema,
                            (JSON..=) "ExecuteTimeout" Prelude.<$> executeTimeout,
                            (JSON..=) "FailTasksOnLobTruncation"
                              Prelude.<$> failTasksOnLobTruncation,
                            (JSON..=) "HeartbeatEnable" Prelude.<$> heartbeatEnable,
                            (JSON..=) "HeartbeatFrequency" Prelude.<$> heartbeatFrequency,
                            (JSON..=) "HeartbeatSchema" Prelude.<$> heartbeatSchema,
                            (JSON..=) "MapBooleanAsBoolean" Prelude.<$> mapBooleanAsBoolean,
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
               (JSON..=) "BabelfishDatabaseName"
                 Prelude.<$> babelfishDatabaseName,
               (JSON..=) "CaptureDdls" Prelude.<$> captureDdls,
               (JSON..=) "DatabaseMode" Prelude.<$> databaseMode,
               (JSON..=) "DdlArtifactsSchema" Prelude.<$> ddlArtifactsSchema,
               (JSON..=) "ExecuteTimeout" Prelude.<$> executeTimeout,
               (JSON..=) "FailTasksOnLobTruncation"
                 Prelude.<$> failTasksOnLobTruncation,
               (JSON..=) "HeartbeatEnable" Prelude.<$> heartbeatEnable,
               (JSON..=) "HeartbeatFrequency" Prelude.<$> heartbeatFrequency,
               (JSON..=) "HeartbeatSchema" Prelude.<$> heartbeatSchema,
               (JSON..=) "MapBooleanAsBoolean" Prelude.<$> mapBooleanAsBoolean,
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
instance Property "BabelfishDatabaseName" PostgreSqlSettingsProperty where
  type PropertyType "BabelfishDatabaseName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {babelfishDatabaseName = Prelude.pure newValue, ..}
instance Property "CaptureDdls" PostgreSqlSettingsProperty where
  type PropertyType "CaptureDdls" PostgreSqlSettingsProperty = Value Prelude.Bool
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {captureDdls = Prelude.pure newValue, ..}
instance Property "DatabaseMode" PostgreSqlSettingsProperty where
  type PropertyType "DatabaseMode" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {databaseMode = Prelude.pure newValue, ..}
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
instance Property "MapBooleanAsBoolean" PostgreSqlSettingsProperty where
  type PropertyType "MapBooleanAsBoolean" PostgreSqlSettingsProperty = Value Prelude.Bool
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {mapBooleanAsBoolean = Prelude.pure newValue, ..}
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