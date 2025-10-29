module Stratosphere.OpsWorksCM.Server (
        module Exports, Server(..), mkServer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorksCM.Server.EngineAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Server
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html>
    Server {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-associatepublicipaddress>
            associatePublicIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-backupid>
            backupId :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-backupretentioncount>
            backupRetentionCount :: (Prelude.Maybe (Value Prelude.Integer)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-customcertificate>
            customCertificate :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-customdomain>
            customDomain :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-customprivatekey>
            customPrivateKey :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-disableautomatedbackup>
            disableAutomatedBackup :: (Prelude.Maybe (Value Prelude.Bool)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engine>
            engine :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engineattributes>
            engineAttributes :: (Prelude.Maybe [EngineAttributeProperty]),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-enginemodel>
            engineModel :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engineversion>
            engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-instanceprofilearn>
            instanceProfileArn :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-instancetype>
            instanceType :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-keypair>
            keyPair :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-preferredbackupwindow>
            preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-preferredmaintenancewindow>
            preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-securitygroupids>
            securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-servicerolearn>
            serviceRoleArn :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-subnetids>
            subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServer ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Server
mkServer instanceProfileArn instanceType serviceRoleArn
  = Server
      {instanceProfileArn = instanceProfileArn,
       instanceType = instanceType, serviceRoleArn = serviceRoleArn,
       associatePublicIpAddress = Prelude.Nothing,
       backupId = Prelude.Nothing, backupRetentionCount = Prelude.Nothing,
       customCertificate = Prelude.Nothing,
       customDomain = Prelude.Nothing, customPrivateKey = Prelude.Nothing,
       disableAutomatedBackup = Prelude.Nothing, engine = Prelude.Nothing,
       engineAttributes = Prelude.Nothing, engineModel = Prelude.Nothing,
       engineVersion = Prelude.Nothing, keyPair = Prelude.Nothing,
       preferredBackupWindow = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Server where
  toResourceProperties Server {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorksCM::Server", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceProfileArn" JSON..= instanceProfileArn,
                            "InstanceType" JSON..= instanceType,
                            "ServiceRoleArn" JSON..= serviceRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociatePublicIpAddress"
                                 Prelude.<$> associatePublicIpAddress,
                               (JSON..=) "BackupId" Prelude.<$> backupId,
                               (JSON..=) "BackupRetentionCount" Prelude.<$> backupRetentionCount,
                               (JSON..=) "CustomCertificate" Prelude.<$> customCertificate,
                               (JSON..=) "CustomDomain" Prelude.<$> customDomain,
                               (JSON..=) "CustomPrivateKey" Prelude.<$> customPrivateKey,
                               (JSON..=) "DisableAutomatedBackup"
                                 Prelude.<$> disableAutomatedBackup,
                               (JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "EngineAttributes" Prelude.<$> engineAttributes,
                               (JSON..=) "EngineModel" Prelude.<$> engineModel,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "KeyPair" Prelude.<$> keyPair,
                               (JSON..=) "PreferredBackupWindow"
                                 Prelude.<$> preferredBackupWindow,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Server where
  toJSON Server {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceProfileArn" JSON..= instanceProfileArn,
               "InstanceType" JSON..= instanceType,
               "ServiceRoleArn" JSON..= serviceRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AssociatePublicIpAddress"
                    Prelude.<$> associatePublicIpAddress,
                  (JSON..=) "BackupId" Prelude.<$> backupId,
                  (JSON..=) "BackupRetentionCount" Prelude.<$> backupRetentionCount,
                  (JSON..=) "CustomCertificate" Prelude.<$> customCertificate,
                  (JSON..=) "CustomDomain" Prelude.<$> customDomain,
                  (JSON..=) "CustomPrivateKey" Prelude.<$> customPrivateKey,
                  (JSON..=) "DisableAutomatedBackup"
                    Prelude.<$> disableAutomatedBackup,
                  (JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "EngineAttributes" Prelude.<$> engineAttributes,
                  (JSON..=) "EngineModel" Prelude.<$> engineModel,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "KeyPair" Prelude.<$> keyPair,
                  (JSON..=) "PreferredBackupWindow"
                    Prelude.<$> preferredBackupWindow,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssociatePublicIpAddress" Server where
  type PropertyType "AssociatePublicIpAddress" Server = Value Prelude.Bool
  set newValue Server {..}
    = Server {associatePublicIpAddress = Prelude.pure newValue, ..}
instance Property "BackupId" Server where
  type PropertyType "BackupId" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {backupId = Prelude.pure newValue, ..}
instance Property "BackupRetentionCount" Server where
  type PropertyType "BackupRetentionCount" Server = Value Prelude.Integer
  set newValue Server {..}
    = Server {backupRetentionCount = Prelude.pure newValue, ..}
instance Property "CustomCertificate" Server where
  type PropertyType "CustomCertificate" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {customCertificate = Prelude.pure newValue, ..}
instance Property "CustomDomain" Server where
  type PropertyType "CustomDomain" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {customDomain = Prelude.pure newValue, ..}
instance Property "CustomPrivateKey" Server where
  type PropertyType "CustomPrivateKey" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {customPrivateKey = Prelude.pure newValue, ..}
instance Property "DisableAutomatedBackup" Server where
  type PropertyType "DisableAutomatedBackup" Server = Value Prelude.Bool
  set newValue Server {..}
    = Server {disableAutomatedBackup = Prelude.pure newValue, ..}
instance Property "Engine" Server where
  type PropertyType "Engine" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {engine = Prelude.pure newValue, ..}
instance Property "EngineAttributes" Server where
  type PropertyType "EngineAttributes" Server = [EngineAttributeProperty]
  set newValue Server {..}
    = Server {engineAttributes = Prelude.pure newValue, ..}
instance Property "EngineModel" Server where
  type PropertyType "EngineModel" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {engineModel = Prelude.pure newValue, ..}
instance Property "EngineVersion" Server where
  type PropertyType "EngineVersion" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {engineVersion = Prelude.pure newValue, ..}
instance Property "InstanceProfileArn" Server where
  type PropertyType "InstanceProfileArn" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {instanceProfileArn = newValue, ..}
instance Property "InstanceType" Server where
  type PropertyType "InstanceType" Server = Value Prelude.Text
  set newValue Server {..} = Server {instanceType = newValue, ..}
instance Property "KeyPair" Server where
  type PropertyType "KeyPair" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {keyPair = Prelude.pure newValue, ..}
instance Property "PreferredBackupWindow" Server where
  type PropertyType "PreferredBackupWindow" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {preferredBackupWindow = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" Server where
  type PropertyType "PreferredMaintenanceWindow" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Server where
  type PropertyType "SecurityGroupIds" Server = ValueList Prelude.Text
  set newValue Server {..}
    = Server {securityGroupIds = Prelude.pure newValue, ..}
instance Property "ServiceRoleArn" Server where
  type PropertyType "ServiceRoleArn" Server = Value Prelude.Text
  set newValue Server {..} = Server {serviceRoleArn = newValue, ..}
instance Property "SubnetIds" Server where
  type PropertyType "SubnetIds" Server = ValueList Prelude.Text
  set newValue Server {..}
    = Server {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" Server where
  type PropertyType "Tags" Server = [Tag]
  set newValue Server {..}
    = Server {tags = Prelude.pure newValue, ..}