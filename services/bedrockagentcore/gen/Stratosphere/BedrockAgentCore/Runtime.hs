module Stratosphere.BedrockAgentCore.Runtime (
        module Exports, Runtime(..), mkRuntime
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Runtime.AgentRuntimeArtifactProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Runtime.AuthorizerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Runtime.NetworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Runtime
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html>
    Runtime {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-agentruntimeartifact>
             agentRuntimeArtifact :: AgentRuntimeArtifactProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-agentruntimename>
             agentRuntimeName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-authorizerconfiguration>
             authorizerConfiguration :: (Prelude.Maybe AuthorizerConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-environmentvariables>
             environmentVariables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-networkconfiguration>
             networkConfiguration :: NetworkConfigurationProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-protocolconfiguration>
             protocolConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-rolearn>
             roleArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtime.html#cfn-bedrockagentcore-runtime-tags>
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntime ::
  AgentRuntimeArtifactProperty
  -> Value Prelude.Text
     -> NetworkConfigurationProperty -> Value Prelude.Text -> Runtime
mkRuntime
  agentRuntimeArtifact
  agentRuntimeName
  networkConfiguration
  roleArn
  = Runtime
      {haddock_workaround_ = (),
       agentRuntimeArtifact = agentRuntimeArtifact,
       agentRuntimeName = agentRuntimeName,
       networkConfiguration = networkConfiguration, roleArn = roleArn,
       authorizerConfiguration = Prelude.Nothing,
       description = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       protocolConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Runtime where
  toResourceProperties Runtime {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentRuntimeArtifact" JSON..= agentRuntimeArtifact,
                            "AgentRuntimeName" JSON..= agentRuntimeName,
                            "NetworkConfiguration" JSON..= networkConfiguration,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizerConfiguration"
                                 Prelude.<$> authorizerConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                               (JSON..=) "ProtocolConfiguration"
                                 Prelude.<$> protocolConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Runtime where
  toJSON Runtime {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentRuntimeArtifact" JSON..= agentRuntimeArtifact,
               "AgentRuntimeName" JSON..= agentRuntimeName,
               "NetworkConfiguration" JSON..= networkConfiguration,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizerConfiguration"
                    Prelude.<$> authorizerConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                  (JSON..=) "ProtocolConfiguration"
                    Prelude.<$> protocolConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentRuntimeArtifact" Runtime where
  type PropertyType "AgentRuntimeArtifact" Runtime = AgentRuntimeArtifactProperty
  set newValue Runtime {..}
    = Runtime {agentRuntimeArtifact = newValue, ..}
instance Property "AgentRuntimeName" Runtime where
  type PropertyType "AgentRuntimeName" Runtime = Value Prelude.Text
  set newValue Runtime {..}
    = Runtime {agentRuntimeName = newValue, ..}
instance Property "AuthorizerConfiguration" Runtime where
  type PropertyType "AuthorizerConfiguration" Runtime = AuthorizerConfigurationProperty
  set newValue Runtime {..}
    = Runtime {authorizerConfiguration = Prelude.pure newValue, ..}
instance Property "Description" Runtime where
  type PropertyType "Description" Runtime = Value Prelude.Text
  set newValue Runtime {..}
    = Runtime {description = Prelude.pure newValue, ..}
instance Property "EnvironmentVariables" Runtime where
  type PropertyType "EnvironmentVariables" Runtime = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Runtime {..}
    = Runtime {environmentVariables = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" Runtime where
  type PropertyType "NetworkConfiguration" Runtime = NetworkConfigurationProperty
  set newValue Runtime {..}
    = Runtime {networkConfiguration = newValue, ..}
instance Property "ProtocolConfiguration" Runtime where
  type PropertyType "ProtocolConfiguration" Runtime = Value Prelude.Text
  set newValue Runtime {..}
    = Runtime {protocolConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" Runtime where
  type PropertyType "RoleArn" Runtime = Value Prelude.Text
  set newValue Runtime {..} = Runtime {roleArn = newValue, ..}
instance Property "Tags" Runtime where
  type PropertyType "Tags" Runtime = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Runtime {..}
    = Runtime {tags = Prelude.pure newValue, ..}