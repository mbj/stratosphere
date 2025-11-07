module Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionVariableProperty (
        PolicyDefinitionVariableProperty(..),
        mkPolicyDefinitionVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyDefinitionVariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionvariable.html>
    PolicyDefinitionVariableProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionvariable.html#cfn-bedrock-automatedreasoningpolicy-policydefinitionvariable-description>
                                      description :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionvariable.html#cfn-bedrock-automatedreasoningpolicy-policydefinitionvariable-name>
                                      name :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitionvariable.html#cfn-bedrock-automatedreasoningpolicy-policydefinitionvariable-type>
                                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDefinitionVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> PolicyDefinitionVariableProperty
mkPolicyDefinitionVariableProperty description name type'
  = PolicyDefinitionVariableProperty
      {haddock_workaround_ = (), description = description, name = name,
       type' = type'}
instance ToResourceProperties PolicyDefinitionVariableProperty where
  toResourceProperties PolicyDefinitionVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinitionVariable",
         supportsTags = Prelude.False,
         properties = ["Description" JSON..= description,
                       "Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON PolicyDefinitionVariableProperty where
  toJSON PolicyDefinitionVariableProperty {..}
    = JSON.object
        ["Description" JSON..= description, "Name" JSON..= name,
         "Type" JSON..= type']
instance Property "Description" PolicyDefinitionVariableProperty where
  type PropertyType "Description" PolicyDefinitionVariableProperty = Value Prelude.Text
  set newValue PolicyDefinitionVariableProperty {..}
    = PolicyDefinitionVariableProperty {description = newValue, ..}
instance Property "Name" PolicyDefinitionVariableProperty where
  type PropertyType "Name" PolicyDefinitionVariableProperty = Value Prelude.Text
  set newValue PolicyDefinitionVariableProperty {..}
    = PolicyDefinitionVariableProperty {name = newValue, ..}
instance Property "Type" PolicyDefinitionVariableProperty where
  type PropertyType "Type" PolicyDefinitionVariableProperty = Value Prelude.Text
  set newValue PolicyDefinitionVariableProperty {..}
    = PolicyDefinitionVariableProperty {type' = newValue, ..}