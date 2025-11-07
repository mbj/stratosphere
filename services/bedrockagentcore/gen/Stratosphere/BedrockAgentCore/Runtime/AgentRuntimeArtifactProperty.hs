module Stratosphere.BedrockAgentCore.Runtime.AgentRuntimeArtifactProperty (
        module Exports, AgentRuntimeArtifactProperty(..),
        mkAgentRuntimeArtifactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Runtime.ContainerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AgentRuntimeArtifactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-agentruntimeartifact.html>
    AgentRuntimeArtifactProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-agentruntimeartifact.html#cfn-bedrockagentcore-runtime-agentruntimeartifact-containerconfiguration>
                                  containerConfiguration :: (Prelude.Maybe ContainerConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentRuntimeArtifactProperty :: AgentRuntimeArtifactProperty
mkAgentRuntimeArtifactProperty
  = AgentRuntimeArtifactProperty
      {haddock_workaround_ = (),
       containerConfiguration = Prelude.Nothing}
instance ToResourceProperties AgentRuntimeArtifactProperty where
  toResourceProperties AgentRuntimeArtifactProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime.AgentRuntimeArtifact",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerConfiguration"
                              Prelude.<$> containerConfiguration])}
instance JSON.ToJSON AgentRuntimeArtifactProperty where
  toJSON AgentRuntimeArtifactProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerConfiguration"
                 Prelude.<$> containerConfiguration]))
instance Property "ContainerConfiguration" AgentRuntimeArtifactProperty where
  type PropertyType "ContainerConfiguration" AgentRuntimeArtifactProperty = ContainerConfigurationProperty
  set newValue AgentRuntimeArtifactProperty {..}
    = AgentRuntimeArtifactProperty
        {containerConfiguration = Prelude.pure newValue, ..}