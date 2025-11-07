module Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionRuleProperty (
        PolicyDefinitionRuleProperty(..), mkPolicyDefinitionRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyDefinitionRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionrule.html>
    PolicyDefinitionRuleProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionrule.html#cfn-bedrock-automatedreasoningpolicy-policydefinitionrule-alternateexpression>
                                  alternateExpression :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionrule.html#cfn-bedrock-automatedreasoningpolicy-policydefinitionrule-expression>
                                  expression :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionrule.html#cfn-bedrock-automatedreasoningpolicy-policydefinitionrule-id>
                                  id :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDefinitionRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> PolicyDefinitionRuleProperty
mkPolicyDefinitionRuleProperty expression id
  = PolicyDefinitionRuleProperty
      {haddock_workaround_ = (), expression = expression, id = id,
       alternateExpression = Prelude.Nothing}
instance ToResourceProperties PolicyDefinitionRuleProperty where
  toResourceProperties PolicyDefinitionRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinitionRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression, "Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "AlternateExpression"
                                 Prelude.<$> alternateExpression]))}
instance JSON.ToJSON PolicyDefinitionRuleProperty where
  toJSON PolicyDefinitionRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression, "Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "AlternateExpression"
                    Prelude.<$> alternateExpression])))
instance Property "AlternateExpression" PolicyDefinitionRuleProperty where
  type PropertyType "AlternateExpression" PolicyDefinitionRuleProperty = Value Prelude.Text
  set newValue PolicyDefinitionRuleProperty {..}
    = PolicyDefinitionRuleProperty
        {alternateExpression = Prelude.pure newValue, ..}
instance Property "Expression" PolicyDefinitionRuleProperty where
  type PropertyType "Expression" PolicyDefinitionRuleProperty = Value Prelude.Text
  set newValue PolicyDefinitionRuleProperty {..}
    = PolicyDefinitionRuleProperty {expression = newValue, ..}
instance Property "Id" PolicyDefinitionRuleProperty where
  type PropertyType "Id" PolicyDefinitionRuleProperty = Value Prelude.Text
  set newValue PolicyDefinitionRuleProperty {..}
    = PolicyDefinitionRuleProperty {id = newValue, ..}