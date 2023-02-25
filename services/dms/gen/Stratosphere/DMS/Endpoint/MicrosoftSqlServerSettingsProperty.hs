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
  = MicrosoftSqlServerSettingsProperty {bcpPacketSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                        controlTablesFileGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                        querySingleAlwaysOnNode :: (Prelude.Maybe (Value Prelude.Bool)),
                                        readBackupOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                        safeguardPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                        secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                                        useBcpFullLoad :: (Prelude.Maybe (Value Prelude.Bool)),
                                        useThirdPartyBackupDevice :: (Prelude.Maybe (Value Prelude.Bool))}
mkMicrosoftSqlServerSettingsProperty ::
  MicrosoftSqlServerSettingsProperty
mkMicrosoftSqlServerSettingsProperty
  = MicrosoftSqlServerSettingsProperty
      {bcpPacketSize = Prelude.Nothing,
       controlTablesFileGroup = Prelude.Nothing,
       querySingleAlwaysOnNode = Prelude.Nothing,
       readBackupOnly = Prelude.Nothing,
       safeguardPolicy = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       useBcpFullLoad = Prelude.Nothing,
       useThirdPartyBackupDevice = Prelude.Nothing}
instance ToResourceProperties MicrosoftSqlServerSettingsProperty where
  toResourceProperties MicrosoftSqlServerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.MicrosoftSqlServerSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BcpPacketSize" Prelude.<$> bcpPacketSize,
                            (JSON..=) "ControlTablesFileGroup"
                              Prelude.<$> controlTablesFileGroup,
                            (JSON..=) "QuerySingleAlwaysOnNode"
                              Prelude.<$> querySingleAlwaysOnNode,
                            (JSON..=) "ReadBackupOnly" Prelude.<$> readBackupOnly,
                            (JSON..=) "SafeguardPolicy" Prelude.<$> safeguardPolicy,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "UseBcpFullLoad" Prelude.<$> useBcpFullLoad,
                            (JSON..=) "UseThirdPartyBackupDevice"
                              Prelude.<$> useThirdPartyBackupDevice])}
instance JSON.ToJSON MicrosoftSqlServerSettingsProperty where
  toJSON MicrosoftSqlServerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BcpPacketSize" Prelude.<$> bcpPacketSize,
               (JSON..=) "ControlTablesFileGroup"
                 Prelude.<$> controlTablesFileGroup,
               (JSON..=) "QuerySingleAlwaysOnNode"
                 Prelude.<$> querySingleAlwaysOnNode,
               (JSON..=) "ReadBackupOnly" Prelude.<$> readBackupOnly,
               (JSON..=) "SafeguardPolicy" Prelude.<$> safeguardPolicy,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "UseBcpFullLoad" Prelude.<$> useBcpFullLoad,
               (JSON..=) "UseThirdPartyBackupDevice"
                 Prelude.<$> useThirdPartyBackupDevice]))
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