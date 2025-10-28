module Stratosphere.DMS.Endpoint.MySqlSettingsProperty (
        MySqlSettingsProperty(..), mkMySqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MySqlSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html>
    MySqlSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-afterconnectscript>
                           afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-cleansourcemetadataonmismatch>
                           cleanSourceMetadataOnMismatch :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-eventspollinterval>
                           eventsPollInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-maxfilesize>
                           maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-parallelloadthreads>
                           parallelLoadThreads :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-secretsmanageraccessrolearn>
                           secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-secretsmanagersecretid>
                           secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-servertimezone>
                           serverTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mysqlsettings.html#cfn-dms-endpoint-mysqlsettings-targetdbtype>
                           targetDbType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMySqlSettingsProperty :: MySqlSettingsProperty
mkMySqlSettingsProperty
  = MySqlSettingsProperty
      {haddock_workaround_ = (), afterConnectScript = Prelude.Nothing,
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