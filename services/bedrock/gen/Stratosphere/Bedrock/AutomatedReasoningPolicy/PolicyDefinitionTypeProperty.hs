module Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionTypeProperty (
        module Exports, PolicyDefinitionTypeProperty(..),
        mkPolicyDefinitionTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionTypeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyDefinitionTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontype.html>
    PolicyDefinitionTypeProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontype.html#cfn-bedrock-automatedreasoningpolicy-policydefinitiontype-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontype.html#cfn-bedrock-automatedreasoningpolicy-policydefinitiontype-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinitiontype.html#cfn-bedrock-automatedreasoningpolicy-policydefinitiontype-values>
                                  values :: [PolicyDefinitionTypeValueProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDefinitionTypeProperty ::
  Value Prelude.Text
  -> [PolicyDefinitionTypeValueProperty]
     -> PolicyDefinitionTypeProperty
mkPolicyDefinitionTypeProperty name values
  = PolicyDefinitionTypeProperty
      {haddock_workaround_ = (), name = name, values = values,
       description = Prelude.Nothing}
instance ToResourceProperties PolicyDefinitionTypeProperty where
  toResourceProperties PolicyDefinitionTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinitionType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Values" JSON..= values]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON PolicyDefinitionTypeProperty where
  toJSON PolicyDefinitionTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Values" JSON..= values]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" PolicyDefinitionTypeProperty where
  type PropertyType "Description" PolicyDefinitionTypeProperty = Value Prelude.Text
  set newValue PolicyDefinitionTypeProperty {..}
    = PolicyDefinitionTypeProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" PolicyDefinitionTypeProperty where
  type PropertyType "Name" PolicyDefinitionTypeProperty = Value Prelude.Text
  set newValue PolicyDefinitionTypeProperty {..}
    = PolicyDefinitionTypeProperty {name = newValue, ..}
instance Property "Values" PolicyDefinitionTypeProperty where
  type PropertyType "Values" PolicyDefinitionTypeProperty = [PolicyDefinitionTypeValueProperty]
  set newValue PolicyDefinitionTypeProperty {..}
    = PolicyDefinitionTypeProperty {values = newValue, ..}