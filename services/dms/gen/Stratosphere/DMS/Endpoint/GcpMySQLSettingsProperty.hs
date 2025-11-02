module Stratosphere.DMS.Endpoint.GcpMySQLSettingsProperty (
        GcpMySQLSettingsProperty(..), mkGcpMySQLSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GcpMySQLSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html>
    GcpMySQLSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-afterconnectscript>
                              afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-cleansourcemetadataonmismatch>
                              cleanSourceMetadataOnMismatch :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-databasename>
                              databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-eventspollinterval>
                              eventsPollInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-maxfilesize>
                              maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-parallelloadthreads>
                              parallelLoadThreads :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-password>
                              password :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-port>
                              port :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-secretsmanageraccessrolearn>
                              secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-secretsmanagersecretid>
                              secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-servername>
                              serverName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-servertimezone>
                              serverTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-gcpmysqlsettings.html#cfn-dms-endpoint-gcpmysqlsettings-username>
                              username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGcpMySQLSettingsProperty :: GcpMySQLSettingsProperty
mkGcpMySQLSettingsProperty
  = GcpMySQLSettingsProperty
      {haddock_workaround_ = (), afterConnectScript = Prelude.Nothing,
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
         supportsTags = Prelude.False,
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