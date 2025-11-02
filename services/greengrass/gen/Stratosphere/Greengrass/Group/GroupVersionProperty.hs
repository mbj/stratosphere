module Stratosphere.Greengrass.Group.GroupVersionProperty (
        GroupVersionProperty(..), mkGroupVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html>
    GroupVersionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-connectordefinitionversionarn>
                          connectorDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-coredefinitionversionarn>
                          coreDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-devicedefinitionversionarn>
                          deviceDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-functiondefinitionversionarn>
                          functionDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-loggerdefinitionversionarn>
                          loggerDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-resourcedefinitionversionarn>
                          resourceDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-subscriptiondefinitionversionarn>
                          subscriptionDefinitionVersionArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupVersionProperty :: GroupVersionProperty
mkGroupVersionProperty
  = GroupVersionProperty
      {haddock_workaround_ = (),
       connectorDefinitionVersionArn = Prelude.Nothing,
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
         supportsTags = Prelude.False,
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