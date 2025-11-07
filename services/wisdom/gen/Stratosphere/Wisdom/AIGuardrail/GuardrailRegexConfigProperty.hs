module Stratosphere.Wisdom.AIGuardrail.GuardrailRegexConfigProperty (
        GuardrailRegexConfigProperty(..), mkGuardrailRegexConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailRegexConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailregexconfig.html>
    GuardrailRegexConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailregexconfig.html#cfn-wisdom-aiguardrail-guardrailregexconfig-action>
                                  action :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailregexconfig.html#cfn-wisdom-aiguardrail-guardrailregexconfig-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailregexconfig.html#cfn-wisdom-aiguardrail-guardrailregexconfig-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailregexconfig.html#cfn-wisdom-aiguardrail-guardrailregexconfig-pattern>
                                  pattern :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailRegexConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> GuardrailRegexConfigProperty
mkGuardrailRegexConfigProperty action name pattern
  = GuardrailRegexConfigProperty
      {haddock_workaround_ = (), action = action, name = name,
       pattern = pattern, description = Prelude.Nothing}
instance ToResourceProperties GuardrailRegexConfigProperty where
  toResourceProperties GuardrailRegexConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailRegexConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Name" JSON..= name,
                            "Pattern" JSON..= pattern]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON GuardrailRegexConfigProperty where
  toJSON GuardrailRegexConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Name" JSON..= name,
               "Pattern" JSON..= pattern]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Action" GuardrailRegexConfigProperty where
  type PropertyType "Action" GuardrailRegexConfigProperty = Value Prelude.Text
  set newValue GuardrailRegexConfigProperty {..}
    = GuardrailRegexConfigProperty {action = newValue, ..}
instance Property "Description" GuardrailRegexConfigProperty where
  type PropertyType "Description" GuardrailRegexConfigProperty = Value Prelude.Text
  set newValue GuardrailRegexConfigProperty {..}
    = GuardrailRegexConfigProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" GuardrailRegexConfigProperty where
  type PropertyType "Name" GuardrailRegexConfigProperty = Value Prelude.Text
  set newValue GuardrailRegexConfigProperty {..}
    = GuardrailRegexConfigProperty {name = newValue, ..}
instance Property "Pattern" GuardrailRegexConfigProperty where
  type PropertyType "Pattern" GuardrailRegexConfigProperty = Value Prelude.Text
  set newValue GuardrailRegexConfigProperty {..}
    = GuardrailRegexConfigProperty {pattern = newValue, ..}