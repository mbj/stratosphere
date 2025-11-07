module Stratosphere.Bedrock.PromptVersion.ToolChoiceProperty (
        module Exports, ToolChoiceProperty(..), mkToolChoiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.SpecificToolChoiceProperty as Exports
import Stratosphere.ResourceProperties
data ToolChoiceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-toolchoice.html>
    ToolChoiceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-toolchoice.html#cfn-bedrock-promptversion-toolchoice-any>
                        any :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-toolchoice.html#cfn-bedrock-promptversion-toolchoice-auto>
                        auto :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-toolchoice.html#cfn-bedrock-promptversion-toolchoice-tool>
                        tool :: (Prelude.Maybe SpecificToolChoiceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolChoiceProperty :: ToolChoiceProperty
mkToolChoiceProperty
  = ToolChoiceProperty
      {haddock_workaround_ = (), any = Prelude.Nothing,
       auto = Prelude.Nothing, tool = Prelude.Nothing}
instance ToResourceProperties ToolChoiceProperty where
  toResourceProperties ToolChoiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.ToolChoice",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Any" Prelude.<$> any,
                            (JSON..=) "Auto" Prelude.<$> auto,
                            (JSON..=) "Tool" Prelude.<$> tool])}
instance JSON.ToJSON ToolChoiceProperty where
  toJSON ToolChoiceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Any" Prelude.<$> any,
               (JSON..=) "Auto" Prelude.<$> auto,
               (JSON..=) "Tool" Prelude.<$> tool]))
instance Property "Any" ToolChoiceProperty where
  type PropertyType "Any" ToolChoiceProperty = JSON.Object
  set newValue ToolChoiceProperty {..}
    = ToolChoiceProperty {any = Prelude.pure newValue, ..}
instance Property "Auto" ToolChoiceProperty where
  type PropertyType "Auto" ToolChoiceProperty = JSON.Object
  set newValue ToolChoiceProperty {..}
    = ToolChoiceProperty {auto = Prelude.pure newValue, ..}
instance Property "Tool" ToolChoiceProperty where
  type PropertyType "Tool" ToolChoiceProperty = SpecificToolChoiceProperty
  set newValue ToolChoiceProperty {..}
    = ToolChoiceProperty {tool = Prelude.pure newValue, ..}