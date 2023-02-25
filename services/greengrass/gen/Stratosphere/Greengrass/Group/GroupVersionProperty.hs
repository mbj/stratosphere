module Stratosphere.Greengrass.Group.GroupVersionProperty (
        GroupVersionProperty(..), mkGroupVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupVersionProperty
  = GroupVersionProperty {connectorDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          coreDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          deviceDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          functionDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          loggerDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          resourceDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          subscriptionDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text))}
mkGroupVersionProperty :: GroupVersionProperty
mkGroupVersionProperty
  = GroupVersionProperty
      {connectorDefinitionVersionArn = Prelude.Nothing,
       coreDefinitionVersionArn = Prelude.Nothing,
       deviceDefinitionVersionArn = Prelude.Nothing,
       functionDefinitionVersionArn = Prelude.Nothing,
       loggerDefinitionVersionArn = Prelude.Nothing,
       resourceDefinitionVersionArn = Prelude.Nothing,
       subscriptionDefinitionVersionArn = Prelude.Nothing}
instance ToResourceProperties GroupVersionProperty where
  toResourceProperties GroupVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::Group.GroupVersion",
         properties = Prelude.fromList
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
                              Prelude.<$> subscriptionDefinitionVersionArn])}
instance JSON.ToJSON GroupVersionProperty where
  toJSON GroupVersionProperty {..}
    = JSON.object
        (Prelude.fromList
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
                 Prelude.<$> subscriptionDefinitionVersionArn]))
instance Property "ConnectorDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "ConnectorDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {connectorDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "CoreDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "CoreDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {coreDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "DeviceDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "DeviceDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {deviceDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "FunctionDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "FunctionDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {functionDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "LoggerDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "LoggerDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {loggerDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "ResourceDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "ResourceDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {resourceDefinitionVersionArn = Prelude.pure newValue, ..}
instance Property "SubscriptionDefinitionVersionArn" GroupVersionProperty where
  type PropertyType "SubscriptionDefinitionVersionArn" GroupVersionProperty = Value Prelude.Text
  set newValue GroupVersionProperty {..}
    = GroupVersionProperty
        {subscriptionDefinitionVersionArn = Prelude.pure newValue, ..}