module Stratosphere.Bedrock.Prompt.ToolConfigurationProperty (
        module Exports, ToolConfigurationProperty(..),
        mkToolConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.ToolProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.ToolChoiceProperty as Exports
import Stratosphere.ResourceProperties
data ToolConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolconfiguration.html>
    ToolConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolconfiguration.html#cfn-bedrock-prompt-toolconfiguration-toolchoice>
                               toolChoice :: (Prelude.Maybe ToolChoiceProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolconfiguration.html#cfn-bedrock-prompt-toolconfiguration-tools>
                               tools :: [ToolProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolConfigurationProperty ::
  [ToolProperty] -> ToolConfigurationProperty
mkToolConfigurationProperty tools
  = ToolConfigurationProperty
      {haddock_workaround_ = (), tools = tools,
       toolChoice = Prelude.Nothing}
instance ToResourceProperties ToolConfigurationProperty where
  toResourceProperties ToolConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.ToolConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Tools" JSON..= tools]
                           (Prelude.catMaybes
                              [(JSON..=) "ToolChoice" Prelude.<$> toolChoice]))}
instance JSON.ToJSON ToolConfigurationProperty where
  toJSON ToolConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Tools" JSON..= tools]
              (Prelude.catMaybes
                 [(JSON..=) "ToolChoice" Prelude.<$> toolChoice])))
instance Property "ToolChoice" ToolConfigurationProperty where
  type PropertyType "ToolChoice" ToolConfigurationProperty = ToolChoiceProperty
  set newValue ToolConfigurationProperty {..}
    = ToolConfigurationProperty
        {toolChoice = Prelude.pure newValue, ..}
instance Property "Tools" ToolConfigurationProperty where
  type PropertyType "Tools" ToolConfigurationProperty = [ToolProperty]
  set newValue ToolConfigurationProperty {..}
    = ToolConfigurationProperty {tools = newValue, ..}