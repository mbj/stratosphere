module Stratosphere.Bedrock.Prompt.PromptGenAiResourceProperty (
        module Exports, PromptGenAiResourceProperty(..),
        mkPromptGenAiResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.PromptAgentResourceProperty as Exports
import Stratosphere.ResourceProperties
data PromptGenAiResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptgenairesource.html>
    PromptGenAiResourceProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptgenairesource.html#cfn-bedrock-prompt-promptgenairesource-agent>
                                 agent :: PromptAgentResourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptGenAiResourceProperty ::
  PromptAgentResourceProperty -> PromptGenAiResourceProperty
mkPromptGenAiResourceProperty agent
  = PromptGenAiResourceProperty
      {haddock_workaround_ = (), agent = agent}
instance ToResourceProperties PromptGenAiResourceProperty where
  toResourceProperties PromptGenAiResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.PromptGenAiResource",
         supportsTags = Prelude.False, properties = ["Agent" JSON..= agent]}
instance JSON.ToJSON PromptGenAiResourceProperty where
  toJSON PromptGenAiResourceProperty {..}
    = JSON.object ["Agent" JSON..= agent]
instance Property "Agent" PromptGenAiResourceProperty where
  type PropertyType "Agent" PromptGenAiResourceProperty = PromptAgentResourceProperty
  set newValue PromptGenAiResourceProperty {..}
    = PromptGenAiResourceProperty {agent = newValue, ..}