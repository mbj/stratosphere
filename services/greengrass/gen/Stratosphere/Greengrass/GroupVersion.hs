module Stratosphere.Greengrass.GroupVersion (
        GroupVersion(..), mkGroupVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupVersion
  = GroupVersion {connectorDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                  coreDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                  deviceDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                  functionDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                  groupId :: (Value Prelude.Text),
                  loggerDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                  resourceDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                  subscriptionDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text))}
mkGroupVersion :: Value Prelude.Text -> GroupVersion
mkGroupVersion groupId
  = GroupVersion
      {groupId = groupId,
       connectorDefinitionVersionArn = Prelude.Nothing,
       coreDefinitionVersionArn = Prelude.Nothing,
       deviceDefinitionVersionArn = Prelude.Nothing,
       functionDefinitionVersionArn = Prelude.Nothing,
       loggerDefinitionVersionArn = Prelude.Nothing,
       resourceDefinitionVersionArn = Prelude.Nothing,
       subscriptionDefinitionVersionArn = Prelude.Nothing}
instance ToResourceProperties GroupVersion where
  toResourceProperties GroupVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::GroupVersion",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupId" JSON..= groupId]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectorDefinitionVersionArn"
                                 Prelude.<$> connectorDefinitionVersionArn,
                               (JSON..=) "CoreDefinitionVersionArn"
                                 Prelude.<$> coreDefinitionVersionArn,
                               (JSON..=) "DeviceDefinitionVersionArn"
                                 Prelude.<$> deviceDefinitionVersionArn,
                               (JSON..=) "FunctionDefinitionVersionArn"
                                 Prelude.<$> functionDefinitionVersionArn,
                               (JSON..=) "LoggerDefinitionVersionArn"
                                 Prelude.<$> loggerDefinitionVersionArn,
                               (JSON..=) "ResourceDefinitionVersionArn"
                                 Prelude.<$> resourceDefinitionVersionArn,
                               (JSON..=) "SubscriptionDefinitionVersionArn"
                                 Prelude.<$> subscriptionDefinitionVersionArn]))}
instance JSON.ToJSON GroupVersion where
  toJSON GroupVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupId" JSON..= groupId]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectorDefinitionVersionArn"
                    Prelude.<$> connectorDefinitionVersionArn,
                  (JSON..=) "CoreDefinitionVersionArn"
                    Prelude.<$> coreDefinitionVersionArn,
                  (JSON..=) "DeviceDefinitionVersionArn"
                    Prelude.<$> deviceDefinitionVersionArn,
                  (JSON..=) "FunctionDefinitionVersionArn"
                    Prelude.<$> functionDefinitionVersionArn,
                  (JSON..=) "LoggerDefinitionVersionArn"
                    Prelude.<$> loggerDefinitionVersionArn,
                  (JSON..=) "ResourceDefinitionVersionArn"
                    Prelude.<$> resourceDefinitionVersionArn,
                  (JSON..=) "SubscriptionDefinitionVersionArn"
                    Prelude.<$> subscriptionDefinitionVersionArn])))
instance Property "ConnectorDefinitionVersionArn" GroupVersion where
  type PropertyType "ConnectorDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {connectorDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "CoreDefinitionVersionArn" GroupVersion where
  type PropertyType "CoreDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {coreDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "DeviceDefinitionVersionArn" GroupVersion where
  type PropertyType "DeviceDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {deviceDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "FunctionDefinitionVersionArn" GroupVersion where
  type PropertyType "FunctionDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {functionDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "GroupId" GroupVersion where
  type PropertyType "GroupId" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion {groupId = newValue, ..}
instance Property "LoggerDefinitionVersionArn" GroupVersion where
  type PropertyType "LoggerDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {loggerDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "ResourceDefinitionVersionArn" GroupVersion where
  type PropertyType "ResourceDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {resourceDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "SubscriptionDefinitionVersionArn" GroupVersion where
  type PropertyType "SubscriptionDefinitionVersionArn" GroupVersion = Value Prelude.Text
  set newValue GroupVersion {..}
    = GroupVersion
        {subscriptionDefinitionVersionArn = Prelude.pure newValue, ..}