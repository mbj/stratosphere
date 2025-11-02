module Stratosphere.DMS.Endpoint.MicrosoftSqlServerSettingsProperty (
        MicrosoftSqlServerSettingsProperty(..),
        mkMicrosoftSqlServerSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MicrosoftSqlServerSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html>
    MicrosoftSqlServerSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-bcppacketsize>
                                        bcpPacketSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-controltablesfilegroup>
                                        controlTablesFileGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-databasename>
                                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-forceloblookup>
                                        forceLobLookup :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-password>
                                        password :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-port>
                                        port :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-querysinglealwaysonnode>
                                        querySingleAlwaysOnNode :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-readbackuponly>
                                        readBackupOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-safeguardpolicy>
                                        safeguardPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-secretsmanageraccessrolearn>
                                        secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-secretsmanagersecretid>
                                        secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-servername>
                                        serverName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-tlogaccessmode>
                                        tlogAccessMode :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-trimspaceinchar>
                                        trimSpaceInChar :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-usebcpfullload>
                                        useBcpFullLoad :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-usethirdpartybackupdevice>
                                        useThirdPartyBackupDevice :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-microsoftsqlserversettings.html#cfn-dms-endpoint-microsoftsqlserversettings-username>
                                        username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMicrosoftSqlServerSettingsProperty ::
  MicrosoftSqlServerSettingsProperty
mkMicrosoftSqlServerSettingsProperty
  = MicrosoftSqlServerSettingsProperty
      {haddock_workaround_ = (), bcpPacketSize = Prelude.Nothing,
       controlTablesFileGroup = Prelude.Nothing,
       databaseName = Prelude.Nothing, forceLobLookup = Prelude.Nothing,
       password = Prelude.Nothing, port = Prelude.Nothing,
       querySingleAlwaysOnNode = Prelude.Nothing,
       readBackupOnly = Prelude.Nothing,
       safeguardPolicy = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       serverName = Prelude.Nothing, tlogAccessMode = Prelude.Nothing,
       trimSpaceInChar = Prelude.Nothing,
       useBcpFullLoad = Prelude.Nothing,
       useThirdPartyBackupDevice = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties MicrosoftSqlServerSettingsProperty where
  toResourceProperties MicrosoftSqlServerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.MicrosoftSqlServerSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BcpPacketSize" Prelude.<$> bcpPacketSize,
                            (JSON..=) "ControlTablesFileGroup"
                              Prelude.<$> controlTablesFileGroup,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "ForceLobLookup" Prelude.<$> forceLobLookup,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "QuerySingleAlwaysOnNode"
                              Prelude.<$> querySingleAlwaysOnNode,
                            (JSON..=) "ReadBackupOnly" Prelude.<$> readBackupOnly,
                            (JSON..=) "SafeguardPolicy" Prelude.<$> safeguardPolicy,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "TlogAccessMode" Prelude.<$> tlogAccessMode,
                            (JSON..=) "TrimSpaceInChar" Prelude.<$> trimSpaceInChar,
                            (JSON..=) "UseBcpFullLoad" Prelude.<$> useBcpFullLoad,
                            (JSON..=) "UseThirdPartyBackupDevice"
                              Prelude.<$> useThirdPartyBackupDevice,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON MicrosoftSqlServerSettingsProperty where
  toJSON MicrosoftSqlServerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BcpPacketSize" Prelude.<$> bcpPacketSize,
               (JSON..=) "ControlTablesFileGroup"
                 Prelude.<$> controlTablesFileGroup,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "ForceLobLookup" Prelude.<$> forceLobLookup,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "QuerySingleAlwaysOnNode"
                 Prelude.<$> querySingleAlwaysOnNode,
               (JSON..=) "ReadBackupOnly" Prelude.<$> readBackupOnly,
               (JSON..=) "SafeguardPolicy" Prelude.<$> safeguardPolicy,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "TlogAccessMode" Prelude.<$> tlogAccessMode,
               (JSON..=) "TrimSpaceInChar" Prelude.<$> trimSpaceInChar,
               (JSON..=) "UseBcpFullLoad" Prelude.<$> useBcpFullLoad,
               (JSON..=) "UseThirdPartyBackupDevice"
                 Prelude.<$> useThirdPartyBackupDevice,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "BcpPacketSize" MicrosoftSqlServerSettingsProperty where
  type PropertyType "BcpPacketSize" MicrosoftSqlServerSettingsProperty = Value Prelude.Integer
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {bcpPacketSize = Prelude.pure newValue, ..}
instance Property "ControlTablesFileGroup" MicrosoftSqlServerSettingsProperty where
  type PropertyType "ControlTablesFileGroup" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {controlTablesFileGroup = Prelude.pure newValue, ..}
instance Property "DatabaseName" MicrosoftSqlServerSettingsProperty where
  type PropertyType "DatabaseName" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "ForceLobLookup" MicrosoftSqlServerSettingsProperty where
  type PropertyType "ForceLobLookup" MicrosoftSqlServerSettingsProperty = Value Prelude.Bool
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {forceLobLookup = Prelude.pure newValue, ..}
instance Property "Password" MicrosoftSqlServerSettingsProperty where
  type PropertyType "Password" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {password = Prelude.pure newValue, ..}
instance Property "Port" MicrosoftSqlServerSettingsProperty where
  type PropertyType "Port" MicrosoftSqlServerSettingsProperty = Value Prelude.Integer
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {port = Prelude.pure newValue, ..}
instance Property "QuerySingleAlwaysOnNode" MicrosoftSqlServerSettingsProperty where
  type PropertyType "QuerySingleAlwaysOnNode" MicrosoftSqlServerSettingsProperty = Value Prelude.Bool
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {querySingleAlwaysOnNode = Prelude.pure newValue, ..}
instance Property "ReadBackupOnly" MicrosoftSqlServerSettingsProperty where
  type PropertyType "ReadBackupOnly" MicrosoftSqlServerSettingsProperty = Value Prelude.Bool
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {readBackupOnly = Prelude.pure newValue, ..}
instance Property "SafeguardPolicy" MicrosoftSqlServerSettingsProperty where
  type PropertyType "SafeguardPolicy" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {safeguardPolicy = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" MicrosoftSqlServerSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" MicrosoftSqlServerSettingsProperty where
  type PropertyType "SecretsManagerSecretId" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "ServerName" MicrosoftSqlServerSettingsProperty where
  type PropertyType "ServerName" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {serverName = Prelude.pure newValue, ..}
instance Property "TlogAccessMode" MicrosoftSqlServerSettingsProperty where
  type PropertyType "TlogAccessMode" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {tlogAccessMode = Prelude.pure newValue, ..}
instance Property "TrimSpaceInChar" MicrosoftSqlServerSettingsProperty where
  type PropertyType "TrimSpaceInChar" MicrosoftSqlServerSettingsProperty = Value Prelude.Bool
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {trimSpaceInChar = Prelude.pure newValue, ..}
instance Property "UseBcpFullLoad" MicrosoftSqlServerSettingsProperty where
  type PropertyType "UseBcpFullLoad" MicrosoftSqlServerSettingsProperty = Value Prelude.Bool
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {useBcpFullLoad = Prelude.pure newValue, ..}
instance Property "UseThirdPartyBackupDevice" MicrosoftSqlServerSettingsProperty where
  type PropertyType "UseThirdPartyBackupDevice" MicrosoftSqlServerSettingsProperty = Value Prelude.Bool
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {useThirdPartyBackupDevice = Prelude.pure newValue, ..}
instance Property "Username" MicrosoftSqlServerSettingsProperty where
  type PropertyType "Username" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {username = Prelude.pure newValue, ..}