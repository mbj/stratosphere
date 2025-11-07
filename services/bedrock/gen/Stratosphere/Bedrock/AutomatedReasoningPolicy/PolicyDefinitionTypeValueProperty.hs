module Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionTypeValueProperty (
        PolicyDefinitionTypeValueProperty(..),
        mkPolicyDefinitionTypeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyDefinitionTypeValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontypevalue.html>
    PolicyDefinitionTypeValueProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontypevalue.html#cfn-bedrock-automatedreasoningpolicy-policydefinitiontypevalue-description>
                                       description :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontypevalue.html#cfn-bedrock-automatedreasoningpolicy-policydefinitiontypevalue-value>
                                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDefinitionTypeValueProperty ::
  Value Prelude.Text -> PolicyDefinitionTypeValueProperty
mkPolicyDefinitionTypeValueProperty value
  = PolicyDefinitionTypeValueProperty
      {haddock_workaround_ = (), value = value,
       description = Prelude.Nothing}
instance ToResourceProperties PolicyDefinitionTypeValueProperty where
  toResourceProperties PolicyDefinitionTypeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinitionTypeValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON PolicyDefinitionTypeValueProperty where
  toJSON PolicyDefinitionTypeValueProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" PolicyDefinitionTypeValueProperty where
  type PropertyType "Description" PolicyDefinitionTypeValueProperty = Value Prelude.Text
  set newValue PolicyDefinitionTypeValueProperty {..}
    = PolicyDefinitionTypeValueProperty
        {description = Prelude.pure newValue, ..}
instance Property "Value" PolicyDefinitionTypeValueProperty where
  type PropertyType "Value" PolicyDefinitionTypeValueProperty = Value Prelude.Text
  set newValue PolicyDefinitionTypeValueProperty {..}
    = PolicyDefinitionTypeValueProperty {value = newValue, ..}