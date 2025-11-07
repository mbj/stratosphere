module Stratosphere.Bedrock.Guardrail.TopicConfigProperty (
        TopicConfigProperty(..), mkTopicConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html>
    TopicConfigProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-definition>
                         definition :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-examples>
                         examples :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-inputaction>
                         inputAction :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-inputenabled>
                         inputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-outputaction>
                         outputAction :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-outputenabled>
                         outputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicconfig.html#cfn-bedrock-guardrail-topicconfig-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> TopicConfigProperty
mkTopicConfigProperty definition name type'
  = TopicConfigProperty
      {haddock_workaround_ = (), definition = definition, name = name,
       type' = type', examples = Prelude.Nothing,
       inputAction = Prelude.Nothing, inputEnabled = Prelude.Nothing,
       outputAction = Prelude.Nothing, outputEnabled = Prelude.Nothing}
instance ToResourceProperties TopicConfigProperty where
  toResourceProperties TopicConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.TopicConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Definition" JSON..= definition, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Examples" Prelude.<$> examples,
                               (JSON..=) "InputAction" Prelude.<$> inputAction,
                               (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                               (JSON..=) "OutputAction" Prelude.<$> outputAction,
                               (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled]))}
instance JSON.ToJSON TopicConfigProperty where
  toJSON TopicConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Definition" JSON..= definition, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Examples" Prelude.<$> examples,
                  (JSON..=) "InputAction" Prelude.<$> inputAction,
                  (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                  (JSON..=) "OutputAction" Prelude.<$> outputAction,
                  (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled])))
instance Property "Definition" TopicConfigProperty where
  type PropertyType "Definition" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {definition = newValue, ..}
instance Property "Examples" TopicConfigProperty where
  type PropertyType "Examples" TopicConfigProperty = ValueList Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {examples = Prelude.pure newValue, ..}
instance Property "InputAction" TopicConfigProperty where
  type PropertyType "InputAction" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {inputAction = Prelude.pure newValue, ..}
instance Property "InputEnabled" TopicConfigProperty where
  type PropertyType "InputEnabled" TopicConfigProperty = Value Prelude.Bool
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {inputEnabled = Prelude.pure newValue, ..}
instance Property "Name" TopicConfigProperty where
  type PropertyType "Name" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {name = newValue, ..}
instance Property "OutputAction" TopicConfigProperty where
  type PropertyType "OutputAction" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {outputAction = Prelude.pure newValue, ..}
instance Property "OutputEnabled" TopicConfigProperty where
  type PropertyType "OutputEnabled" TopicConfigProperty = Value Prelude.Bool
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {outputEnabled = Prelude.pure newValue, ..}
instance Property "Type" TopicConfigProperty where
  type PropertyType "Type" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {type' = newValue, ..}