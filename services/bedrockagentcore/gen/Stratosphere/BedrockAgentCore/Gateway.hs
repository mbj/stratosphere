module Stratosphere.BedrockAgentCore.Gateway (
        module Exports, Gateway(..), mkGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Gateway.AuthorizerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Gateway.GatewayProtocolConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Gateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html>
    Gateway {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-authorizerconfiguration>
             authorizerConfiguration :: (Prelude.Maybe AuthorizerConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-authorizertype>
             authorizerType :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-exceptionlevel>
             exceptionLevel :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-kmskeyarn>
             kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-protocolconfiguration>
             protocolConfiguration :: (Prelude.Maybe GatewayProtocolConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-protocoltype>
             protocolType :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-rolearn>
             roleArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gateway.html#cfn-bedrockagentcore-gateway-tags>
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGateway ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Gateway
mkGateway authorizerType name protocolType roleArn
  = Gateway
      {haddock_workaround_ = (), authorizerType = authorizerType,
       name = name, protocolType = protocolType, roleArn = roleArn,
       authorizerConfiguration = Prelude.Nothing,
       description = Prelude.Nothing, exceptionLevel = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing,
       protocolConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Gateway where
  toResourceProperties Gateway {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Gateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizerType" JSON..= authorizerType, "Name" JSON..= name,
                            "ProtocolType" JSON..= protocolType, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizerConfiguration"
                                 Prelude.<$> authorizerConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExceptionLevel" Prelude.<$> exceptionLevel,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "ProtocolConfiguration"
                                 Prelude.<$> protocolConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Gateway where
  toJSON Gateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizerType" JSON..= authorizerType, "Name" JSON..= name,
               "ProtocolType" JSON..= protocolType, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizerConfiguration"
                    Prelude.<$> authorizerConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExceptionLevel" Prelude.<$> exceptionLevel,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "ProtocolConfiguration"
                    Prelude.<$> protocolConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AuthorizerConfiguration" Gateway where
  type PropertyType "AuthorizerConfiguration" Gateway = AuthorizerConfigurationProperty
  set newValue Gateway {..}
    = Gateway {authorizerConfiguration = Prelude.pure newValue, ..}
instance Property "AuthorizerType" Gateway where
  type PropertyType "AuthorizerType" Gateway = Value Prelude.Text
  set newValue Gateway {..} = Gateway {authorizerType = newValue, ..}
instance Property "Description" Gateway where
  type PropertyType "Description" Gateway = Value Prelude.Text
  set newValue Gateway {..}
    = Gateway {description = Prelude.pure newValue, ..}
instance Property "ExceptionLevel" Gateway where
  type PropertyType "ExceptionLevel" Gateway = Value Prelude.Text
  set newValue Gateway {..}
    = Gateway {exceptionLevel = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Gateway where
  type PropertyType "KmsKeyArn" Gateway = Value Prelude.Text
  set newValue Gateway {..}
    = Gateway {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Name" Gateway where
  type PropertyType "Name" Gateway = Value Prelude.Text
  set newValue Gateway {..} = Gateway {name = newValue, ..}
instance Property "ProtocolConfiguration" Gateway where
  type PropertyType "ProtocolConfiguration" Gateway = GatewayProtocolConfigurationProperty
  set newValue Gateway {..}
    = Gateway {protocolConfiguration = Prelude.pure newValue, ..}
instance Property "ProtocolType" Gateway where
  type PropertyType "ProtocolType" Gateway = Value Prelude.Text
  set newValue Gateway {..} = Gateway {protocolType = newValue, ..}
instance Property "RoleArn" Gateway where
  type PropertyType "RoleArn" Gateway = Value Prelude.Text
  set newValue Gateway {..} = Gateway {roleArn = newValue, ..}
instance Property "Tags" Gateway where
  type PropertyType "Tags" Gateway = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Gateway {..}
    = Gateway {tags = Prelude.pure newValue, ..}