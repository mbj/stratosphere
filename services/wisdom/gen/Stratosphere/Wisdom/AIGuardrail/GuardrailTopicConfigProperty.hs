module Stratosphere.Wisdom.AIGuardrail.GuardrailTopicConfigProperty (
        GuardrailTopicConfigProperty(..), mkGuardrailTopicConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailTopicConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailtopicconfig.html>
    GuardrailTopicConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailtopicconfig.html#cfn-wisdom-aiguardrail-guardrailtopicconfig-definition>
                                  definition :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailtopicconfig.html#cfn-wisdom-aiguardrail-guardrailtopicconfig-examples>
                                  examples :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailtopicconfig.html#cfn-wisdom-aiguardrail-guardrailtopicconfig-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailtopicconfig.html#cfn-wisdom-aiguardrail-guardrailtopicconfig-type>
                                  type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailTopicConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> GuardrailTopicConfigProperty
mkGuardrailTopicConfigProperty definition name type'
  = GuardrailTopicConfigProperty
      {haddock_workaround_ = (), definition = definition, name = name,
       type' = type', examples = Prelude.Nothing}
instance ToResourceProperties GuardrailTopicConfigProperty where
  toResourceProperties GuardrailTopicConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailTopicConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Definition" JSON..= definition, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Examples" Prelude.<$> examples]))}
instance JSON.ToJSON GuardrailTopicConfigProperty where
  toJSON GuardrailTopicConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Definition" JSON..= definition, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Examples" Prelude.<$> examples])))
instance Property "Definition" GuardrailTopicConfigProperty where
  type PropertyType "Definition" GuardrailTopicConfigProperty = Value Prelude.Text
  set newValue GuardrailTopicConfigProperty {..}
    = GuardrailTopicConfigProperty {definition = newValue, ..}
instance Property "Examples" GuardrailTopicConfigProperty where
  type PropertyType "Examples" GuardrailTopicConfigProperty = ValueList Prelude.Text
  set newValue GuardrailTopicConfigProperty {..}
    = GuardrailTopicConfigProperty
        {examples = Prelude.pure newValue, ..}
instance Property "Name" GuardrailTopicConfigProperty where
  type PropertyType "Name" GuardrailTopicConfigProperty = Value Prelude.Text
  set newValue GuardrailTopicConfigProperty {..}
    = GuardrailTopicConfigProperty {name = newValue, ..}
instance Property "Type" GuardrailTopicConfigProperty where
  type PropertyType "Type" GuardrailTopicConfigProperty = Value Prelude.Text
  set newValue GuardrailTopicConfigProperty {..}
    = GuardrailTopicConfigProperty {type' = newValue, ..}