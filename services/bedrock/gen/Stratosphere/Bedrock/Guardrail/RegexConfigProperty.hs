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
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-regexconfig.html#cfn-bedrock-guardrail-regexconfig-pattern>
                         pattern :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> RegexConfigProperty
mkRegexConfigProperty action name pattern
  = RegexConfigProperty
      {haddock_workaround_ = (), action = action, name = name,
       pattern = pattern, description = Prelude.Nothing}
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
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON RegexConfigProperty where
  toJSON RegexConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Name" JSON..= name,
               "Pattern" JSON..= pattern]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Action" RegexConfigProperty where
  type PropertyType "Action" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {action = newValue, ..}
instance Property "Description" RegexConfigProperty where
  type PropertyType "Description" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {description = Prelude.pure newValue, ..}
instance Property "Name" RegexConfigProperty where
  type PropertyType "Name" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {name = newValue, ..}
instance Property "Pattern" RegexConfigProperty where
  type PropertyType "Pattern" RegexConfigProperty = Value Prelude.Text
  set newValue RegexConfigProperty {..}
    = RegexConfigProperty {pattern = newValue, ..}