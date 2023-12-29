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
  = Broker {authenticationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
            autoMinorVersionUpgrade :: (Value Prelude.Bool),
            brokerName :: (Value Prelude.Text),
            configuration :: (Prelude.Maybe ConfigurationIdProperty),
            deploymentMode :: (Value Prelude.Text),
            encryptionOptions :: (Prelude.Maybe EncryptionOptionsProperty),
            engineType :: (Value Prelude.Text),
            engineVersion :: (Value Prelude.Text),
            hostInstanceType :: (Value Prelude.Text),
            ldapServerMetadata :: (Prelude.Maybe LdapServerMetadataProperty),
            logs :: (Prelude.Maybe LogListProperty),
            maintenanceWindowStartTime :: (Prelude.Maybe MaintenanceWindowProperty),
            publiclyAccessible :: (Value Prelude.Bool),
            securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
            storageType :: (Prelude.Maybe (Value Prelude.Text)),
            subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            tags :: (Prelude.Maybe [TagsEntryProperty]),
            users :: [UserProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBroker ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Bool -> [UserProperty] -> Broker
mkBroker
  autoMinorVersionUpgrade
  brokerName
  deploymentMode
  engineType
  engineVersion
  hostInstanceType
  publiclyAccessible
  users
  = Broker
      {autoMinorVersionUpgrade = autoMinorVersionUpgrade,
       brokerName = brokerName, deploymentMode = deploymentMode,
       engineType = engineType, engineVersion = engineVersion,
       hostInstanceType = hostInstanceType,
       publiclyAccessible = publiclyAccessible, users = users,
       authenticationStrategy = Prelude.Nothing,
       configuration = Prelude.Nothing,
       encryptionOptions = Prelude.Nothing,
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
                           ["AutoMinorVersionUpgrade" JSON..= autoMinorVersionUpgrade,
                            "BrokerName" JSON..= brokerName,
                            "DeploymentMode" JSON..= deploymentMode,
                            "EngineType" JSON..= engineType,
                            "EngineVersion" JSON..= engineVersion,
                            "HostInstanceType" JSON..= hostInstanceType,
                            "PubliclyAccessible" JSON..= publiclyAccessible,
                            "Users" JSON..= users]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationStrategy"
                                 Prelude.<$> authenticationStrategy,
                               (JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "EncryptionOptions" Prelude.<$> encryptionOptions,
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
              ["AutoMinorVersionUpgrade" JSON..= autoMinorVersionUpgrade,
               "BrokerName" JSON..= brokerName,
               "DeploymentMode" JSON..= deploymentMode,
               "EngineType" JSON..= engineType,
               "EngineVersion" JSON..= engineVersion,
               "HostInstanceType" JSON..= hostInstanceType,
               "PubliclyAccessible" JSON..= publiclyAccessible,
               "Users" JSON..= users]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationStrategy"
                    Prelude.<$> authenticationStrategy,
                  (JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "EncryptionOptions" Prelude.<$> encryptionOptions,
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
    = Broker {autoMinorVersionUpgrade = newValue, ..}
instance Property "BrokerName" Broker where
  type PropertyType "BrokerName" Broker = Value Prelude.Text
  set newValue Broker {..} = Broker {brokerName = newValue, ..}
instance Property "Configuration" Broker where
  type PropertyType "Configuration" Broker = ConfigurationIdProperty
  set newValue Broker {..}
    = Broker {configuration = Prelude.pure newValue, ..}
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
  set newValue Broker {..} = Broker {engineVersion = newValue, ..}
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