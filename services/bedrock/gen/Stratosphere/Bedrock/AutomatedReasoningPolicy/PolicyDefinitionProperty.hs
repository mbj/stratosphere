module Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionProperty (
        module Exports, PolicyDefinitionProperty(..),
        mkPolicyDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html>
    PolicyDefinitionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-rules>
                              rules :: (Prelude.Maybe [PolicyDefinitionRuleProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-types>
                              types :: (Prelude.Maybe [PolicyDefinitionTypeProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-variables>
                              variables :: (Prelude.Maybe [PolicyDefinitionVariableProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-version>
                              version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDefinitionProperty :: PolicyDefinitionProperty
mkPolicyDefinitionProperty
  = PolicyDefinitionProperty
      {haddock_workaround_ = (), rules = Prelude.Nothing,
       types = Prelude.Nothing, variables = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties PolicyDefinitionProperty where
  toResourceProperties PolicyDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Rules" Prelude.<$> rules,
                            (JSON..=) "Types" Prelude.<$> types,
                            (JSON..=) "Variables" Prelude.<$> variables,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON PolicyDefinitionProperty where
  toJSON PolicyDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Rules" Prelude.<$> rules,
               (JSON..=) "Types" Prelude.<$> types,
               (JSON..=) "Variables" Prelude.<$> variables,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Rules" PolicyDefinitionProperty where
  type PropertyType "Rules" PolicyDefinitionProperty = [PolicyDefinitionRuleProperty]
  set newValue PolicyDefinitionProperty {..}
    = PolicyDefinitionProperty {rules = Prelude.pure newValue, ..}
instance Property "Types" PolicyDefinitionProperty where
  type PropertyType "Types" PolicyDefinitionProperty = [PolicyDefinitionTypeProperty]
  set newValue PolicyDefinitionProperty {..}
    = PolicyDefinitionProperty {types = Prelude.pure newValue, ..}
instance Property "Variables" PolicyDefinitionProperty where
  type PropertyType "Variables" PolicyDefinitionProperty = [PolicyDefinitionVariableProperty]
  set newValue PolicyDefinitionProperty {..}
    = PolicyDefinitionProperty {variables = Prelude.pure newValue, ..}
instance Property "Version" PolicyDefinitionProperty where
  type PropertyType "Version" PolicyDefinitionProperty = Value Prelude.Text
  set newValue PolicyDefinitionProperty {..}
    = PolicyDefinitionProperty {version = Prelude.pure newValue, ..}