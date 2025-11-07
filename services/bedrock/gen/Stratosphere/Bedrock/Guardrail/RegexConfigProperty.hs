module Stratosphere.Bedrock.Guardrail.RegexConfigProperty (
        RegexConfigProperty(..), mkRegexConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegexConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html>
    RegexConfigProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-action>
                         action :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-inputaction>
                         inputAction :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-inputenabled>
                         inputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-outputaction>
                         outputAction :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-outputenabled>
                         outputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-pattern>
                         pattern :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> RegexConfigProperty
mkRegexConfigProperty action name pattern
  = RegexConfigProperty
      {haddock_workaround_ = (), action = action, name = name,
       pattern = pattern, description = Prelude.Nothing,
       inputAction = Prelude.Nothing, inputEnabled = Prelude.Nothing,
       outputAction = Prelude.Nothing, outputEnabled = Prelude.Nothing}
instance ToResourceProperties RegexConfigProperty where
  toResourceProperties RegexConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.RegexConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Name" JSON..= name,
                            "Pattern" JSON..= pattern]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InputAction" Prelude.<$> inputAction,
                               (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                               (JSON..=) "OutputAction" Prelude.<$> outputAction,
                               (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled]))}
instance JSON.ToJSON RegexConfigProperty where
  toJSON RegexConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Name" JSON..= name,
               "Pattern" JSON..= pattern]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InputAction" Prelude.<$> inputAction,
                  (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                  (JSON..=) "OutputAction" Prelude.<$> outputAction,
                  (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled])))
instance Property "Action" RegexConfigProperty where
  type PropertyType "Action" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {action = newValue, ..}
instance Property "Description" RegexConfigProperty where
  type PropertyType "Description" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {description = Prelude.pure newValue, ..}
instance Property "InputAction" RegexConfigProperty where
  type PropertyType "InputAction" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {inputAction = Prelude.pure newValue, ..}
instance Property "InputEnabled" RegexConfigProperty where
  type PropertyType "InputEnabled" RegexConfigProperty = Value Prelude.Bool
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {inputEnabled = Prelude.pure newValue, ..}
instance Property "Name" RegexConfigProperty where
  type PropertyType "Name" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {name = newValue, ..}
instance Property "OutputAction" RegexConfigProperty where
  type PropertyType "OutputAction" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {outputAction = Prelude.pure newValue, ..}
instance Property "OutputEnabled" RegexConfigProperty where
  type PropertyType "OutputEnabled" RegexConfigProperty = Value Prelude.Bool
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {outputEnabled = Prelude.pure newValue, ..}
instance Property "Pattern" RegexConfigProperty where
  type PropertyType "Pattern" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {pattern = newValue, ..}