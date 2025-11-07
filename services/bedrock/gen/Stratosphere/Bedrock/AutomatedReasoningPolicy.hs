module Stratosphere.Bedrock.AutomatedReasoningPolicy (
        module Exports, AutomatedReasoningPolicy(..),
        mkAutomatedReasoningPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AutomatedReasoningPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicy.html>
    AutomatedReasoningPolicy {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicy.html#cfn-bedrock-automatedreasoningpolicy-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicy.html#cfn-bedrock-automatedreasoningpolicy-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicy.html#cfn-bedrock-automatedreasoningpolicy-policydefinition>
                              policyDefinition :: (Prelude.Maybe PolicyDefinitionProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicy.html#cfn-bedrock-automatedreasoningpolicy-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomatedReasoningPolicy ::
  Value Prelude.Text -> AutomatedReasoningPolicy
mkAutomatedReasoningPolicy name
  = AutomatedReasoningPolicy
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, policyDefinition = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AutomatedReasoningPolicy where
  toResourceProperties AutomatedReasoningPolicy {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PolicyDefinition" Prelude.<$> policyDefinition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AutomatedReasoningPolicy where
  toJSON AutomatedReasoningPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PolicyDefinition" Prelude.<$> policyDefinition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" AutomatedReasoningPolicy where
  type PropertyType "Description" AutomatedReasoningPolicy = Value Prelude.Text
  set newValue AutomatedReasoningPolicy {..}
    = AutomatedReasoningPolicy
        {description = Prelude.pure newValue, ..}
instance Property "Name" AutomatedReasoningPolicy where
  type PropertyType "Name" AutomatedReasoningPolicy = Value Prelude.Text
  set newValue AutomatedReasoningPolicy {..}
    = AutomatedReasoningPolicy {name = newValue, ..}
instance Property "PolicyDefinition" AutomatedReasoningPolicy where
  type PropertyType "PolicyDefinition" AutomatedReasoningPolicy = PolicyDefinitionProperty
  set newValue AutomatedReasoningPolicy {..}
    = AutomatedReasoningPolicy
        {policyDefinition = Prelude.pure newValue, ..}
instance Property "Tags" AutomatedReasoningPolicy where
  type PropertyType "Tags" AutomatedReasoningPolicy = [Tag]
  set newValue AutomatedReasoningPolicy {..}
    = AutomatedReasoningPolicy {tags = Prelude.pure newValue, ..}