module Stratosphere.DataSync.StorageSystem (
        module Exports, StorageSystem(..), mkStorageSystem
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.StorageSystem.ServerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.StorageSystem.ServerCredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StorageSystem
  = StorageSystem {agentArns :: (ValueList Prelude.Text),
                   cloudWatchLogGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   serverConfiguration :: ServerConfigurationProperty,
                   serverCredentials :: (Prelude.Maybe ServerCredentialsProperty),
                   systemType :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [Tag])}
mkStorageSystem ::
  ValueList Prelude.Text
  -> ServerConfigurationProperty
     -> Value Prelude.Text -> StorageSystem
mkStorageSystem agentArns serverConfiguration systemType
  = StorageSystem
      {agentArns = agentArns, serverConfiguration = serverConfiguration,
       systemType = systemType, cloudWatchLogGroupArn = Prelude.Nothing,
       name = Prelude.Nothing, serverCredentials = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties StorageSystem where
  toResourceProperties StorageSystem {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::StorageSystem",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentArns" JSON..= agentArns,
                            "ServerConfiguration" JSON..= serverConfiguration,
                            "SystemType" JSON..= systemType]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchLogGroupArn"
                                 Prelude.<$> cloudWatchLogGroupArn,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ServerCredentials" Prelude.<$> serverCredentials,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StorageSystem where
  toJSON StorageSystem {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentArns" JSON..= agentArns,
               "ServerConfiguration" JSON..= serverConfiguration,
               "SystemType" JSON..= systemType]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchLogGroupArn"
                    Prelude.<$> cloudWatchLogGroupArn,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ServerCredentials" Prelude.<$> serverCredentials,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentArns" StorageSystem where
  type PropertyType "AgentArns" StorageSystem = ValueList Prelude.Text
  set newValue StorageSystem {..}
    = StorageSystem {agentArns = newValue, ..}
instance Property "CloudWatchLogGroupArn" StorageSystem where
  type PropertyType "CloudWatchLogGroupArn" StorageSystem = Value Prelude.Text
  set newValue StorageSystem {..}
    = StorageSystem {cloudWatchLogGroupArn = Prelude.pure newValue, ..}
instance Property "Name" StorageSystem where
  type PropertyType "Name" StorageSystem = Value Prelude.Text
  set newValue StorageSystem {..}
    = StorageSystem {name = Prelude.pure newValue, ..}
instance Property "ServerConfiguration" StorageSystem where
  type PropertyType "ServerConfiguration" StorageSystem = ServerConfigurationProperty
  set newValue StorageSystem {..}
    = StorageSystem {serverConfiguration = newValue, ..}
instance Property "ServerCredentials" StorageSystem where
  type PropertyType "ServerCredentials" StorageSystem = ServerCredentialsProperty
  set newValue StorageSystem {..}
    = StorageSystem {serverCredentials = Prelude.pure newValue, ..}
instance Property "SystemType" StorageSystem where
  type PropertyType "SystemType" StorageSystem = Value Prelude.Text
  set newValue StorageSystem {..}
    = StorageSystem {systemType = newValue, ..}
instance Property "Tags" StorageSystem where
  type PropertyType "Tags" StorageSystem = [Tag]
  set newValue StorageSystem {..}
    = StorageSystem {tags = Prelude.pure newValue, ..}