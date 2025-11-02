module Stratosphere.AmazonMQ.Broker (
        module Exports, Broker(..), mkBroker
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.ConfigurationIdProperty as Exports
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.EncryptionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.LdapServerMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.LogListProperty as Exports
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.MaintenanceWindowProperty as Exports
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.TagsEntryProperty as Exports
import {-# SOURCE #-} Stratosphere.AmazonMQ.Broker.UserProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Broker
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html>
    Broker {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-authenticationstrategy>
            authenticationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-autominorversionupgrade>
            autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-brokername>
            brokerName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-configuration>
            configuration :: (Prelude.Maybe ConfigurationIdProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-datareplicationmode>
            dataReplicationMode :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-datareplicationprimarybrokerarn>
            dataReplicationPrimaryBrokerArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-deploymentmode>
            deploymentMode :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-encryptionoptions>
            encryptionOptions :: (Prelude.Maybe EncryptionOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-enginetype>
            engineType :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-engineversion>
            engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-hostinstancetype>
            hostInstanceType :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-ldapservermetadata>
            ldapServerMetadata :: (Prelude.Maybe LdapServerMetadataProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-logs>
            logs :: (Prelude.Maybe LogListProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-maintenancewindowstarttime>
            maintenanceWindowStartTime :: (Prelude.Maybe MaintenanceWindowProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-publiclyaccessible>
            publiclyAccessible :: (Value Prelude.Bool),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-securitygroups>
            securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-storagetype>
            storageType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-subnetids>
            subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-tags>
            tags :: (Prelude.Maybe [TagsEntryProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-users>
            users :: [UserProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBroker ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Bool -> [UserProperty] -> Broker
mkBroker
  brokerName
  deploymentMode
  engineType
  hostInstanceType
  publiclyAccessible
  users
  = Broker
      {haddock_workaround_ = (), brokerName = brokerName,
       deploymentMode = deploymentMode, engineType = engineType,
       hostInstanceType = hostInstanceType,
       publiclyAccessible = publiclyAccessible, users = users,
       authenticationStrategy = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       configuration = Prelude.Nothing,
       dataReplicationMode = Prelude.Nothing,
       dataReplicationPrimaryBrokerArn = Prelude.Nothing,
       encryptionOptions = Prelude.Nothing,
       engineVersion = Prelude.Nothing,
       ldapServerMetadata = Prelude.Nothing, logs = Prelude.Nothing,
       maintenanceWindowStartTime = Prelude.Nothing,
       securityGroups = Prelude.Nothing, storageType = Prelude.Nothing,
       subnetIds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Broker where
  toResourceProperties Broker {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BrokerName" JSON..= brokerName,
                            "DeploymentMode" JSON..= deploymentMode,
                            "EngineType" JSON..= engineType,
                            "HostInstanceType" JSON..= hostInstanceType,
                            "PubliclyAccessible" JSON..= publiclyAccessible,
                            "Users" JSON..= users]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationStrategy"
                                 Prelude.<$> authenticationStrategy,
                               (JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "DataReplicationMode" Prelude.<$> dataReplicationMode,
                               (JSON..=) "DataReplicationPrimaryBrokerArn"
                                 Prelude.<$> dataReplicationPrimaryBrokerArn,
                               (JSON..=) "EncryptionOptions" Prelude.<$> encryptionOptions,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "LdapServerMetadata" Prelude.<$> ldapServerMetadata,
                               (JSON..=) "Logs" Prelude.<$> logs,
                               (JSON..=) "MaintenanceWindowStartTime"
                                 Prelude.<$> maintenanceWindowStartTime,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "StorageType" Prelude.<$> storageType,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Broker where
  toJSON Broker {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BrokerName" JSON..= brokerName,
               "DeploymentMode" JSON..= deploymentMode,
               "EngineType" JSON..= engineType,
               "HostInstanceType" JSON..= hostInstanceType,
               "PubliclyAccessible" JSON..= publiclyAccessible,
               "Users" JSON..= users]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationStrategy"
                    Prelude.<$> authenticationStrategy,
                  (JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "DataReplicationMode" Prelude.<$> dataReplicationMode,
                  (JSON..=) "DataReplicationPrimaryBrokerArn"
                    Prelude.<$> dataReplicationPrimaryBrokerArn,
                  (JSON..=) "EncryptionOptions" Prelude.<$> encryptionOptions,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "LdapServerMetadata" Prelude.<$> ldapServerMetadata,
                  (JSON..=) "Logs" Prelude.<$> logs,
                  (JSON..=) "MaintenanceWindowStartTime"
                    Prelude.<$> maintenanceWindowStartTime,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "StorageType" Prelude.<$> storageType,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AuthenticationStrategy" Broker where
  type PropertyType "AuthenticationStrategy" Broker = Value Prelude.Text
  set newValue Broker {..}
    = Broker {authenticationStrategy = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" Broker where
  type PropertyType "AutoMinorVersionUpgrade" Broker = Value Prelude.Bool
  set newValue Broker {..}
    = Broker {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "BrokerName" Broker where
  type PropertyType "BrokerName" Broker = Value Prelude.Text
  set newValue Broker {..} = Broker {brokerName = newValue, ..}
instance Property "Configuration" Broker where
  type PropertyType "Configuration" Broker = ConfigurationIdProperty
  set newValue Broker {..}
    = Broker {configuration = Prelude.pure newValue, ..}
instance Property "DataReplicationMode" Broker where
  type PropertyType "DataReplicationMode" Broker = Value Prelude.Text
  set newValue Broker {..}
    = Broker {dataReplicationMode = Prelude.pure newValue, ..}
instance Property "DataReplicationPrimaryBrokerArn" Broker where
  type PropertyType "DataReplicationPrimaryBrokerArn" Broker = Value Prelude.Text
  set newValue Broker {..}
    = Broker
        {dataReplicationPrimaryBrokerArn = Prelude.pure newValue, ..}
instance Property "DeploymentMode" Broker where
  type PropertyType "DeploymentMode" Broker = Value Prelude.Text
  set newValue Broker {..} = Broker {deploymentMode = newValue, ..}
instance Property "EncryptionOptions" Broker where
  type PropertyType "EncryptionOptions" Broker = EncryptionOptionsProperty
  set newValue Broker {..}
    = Broker {encryptionOptions = Prelude.pure newValue, ..}
instance Property "EngineType" Broker where
  type PropertyType "EngineType" Broker = Value Prelude.Text
  set newValue Broker {..} = Broker {engineType = newValue, ..}
instance Property "EngineVersion" Broker where
  type PropertyType "EngineVersion" Broker = Value Prelude.Text
  set newValue Broker {..}
    = Broker {engineVersion = Prelude.pure newValue, ..}
instance Property "HostInstanceType" Broker where
  type PropertyType "HostInstanceType" Broker = Value Prelude.Text
  set newValue Broker {..} = Broker {hostInstanceType = newValue, ..}
instance Property "LdapServerMetadata" Broker where
  type PropertyType "LdapServerMetadata" Broker = LdapServerMetadataProperty
  set newValue Broker {..}
    = Broker {ldapServerMetadata = Prelude.pure newValue, ..}
instance Property "Logs" Broker where
  type PropertyType "Logs" Broker = LogListProperty
  set newValue Broker {..}
    = Broker {logs = Prelude.pure newValue, ..}
instance Property "MaintenanceWindowStartTime" Broker where
  type PropertyType "MaintenanceWindowStartTime" Broker = MaintenanceWindowProperty
  set newValue Broker {..}
    = Broker {maintenanceWindowStartTime = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" Broker where
  type PropertyType "PubliclyAccessible" Broker = Value Prelude.Bool
  set newValue Broker {..}
    = Broker {publiclyAccessible = newValue, ..}
instance Property "SecurityGroups" Broker where
  type PropertyType "SecurityGroups" Broker = ValueList Prelude.Text
  set newValue Broker {..}
    = Broker {securityGroups = Prelude.pure newValue, ..}
instance Property "StorageType" Broker where
  type PropertyType "StorageType" Broker = Value Prelude.Text
  set newValue Broker {..}
    = Broker {storageType = Prelude.pure newValue, ..}
instance Property "SubnetIds" Broker where
  type PropertyType "SubnetIds" Broker = ValueList Prelude.Text
  set newValue Broker {..}
    = Broker {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" Broker where
  type PropertyType "Tags" Broker = [TagsEntryProperty]
  set newValue Broker {..}
    = Broker {tags = Prelude.pure newValue, ..}
instance Property "Users" Broker where
  type PropertyType "Users" Broker = [UserProperty]
  set newValue Broker {..} = Broker {users = newValue, ..}