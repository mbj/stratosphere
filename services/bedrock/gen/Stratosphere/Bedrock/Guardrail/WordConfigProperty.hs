module Stratosphere.Bedrock.Guardrail.WordConfigProperty (
        WordConfigProperty(..), mkWordConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WordConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html>
    WordConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html#cfn-bedrock-guardrail-wordconfig-inputaction>
                        inputAction :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html#cfn-bedrock-guardrail-wordconfig-inputenabled>
                        inputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html#cfn-bedrock-guardrail-wordconfig-outputaction>
                        outputAction :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html#cfn-bedrock-guardrail-wordconfig-outputenabled>
                        outputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html#cfn-bedrock-guardrail-wordconfig-text>
                        text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordConfigProperty :: Value Prelude.Text -> WordConfigProperty
mkWordConfigProperty text
  = WordConfigProperty
      {haddock_workaround_ = (), text = text,
       inputAction = Prelude.Nothing, inputEnabled = Prelude.Nothing,
       outputAction = Prelude.Nothing, outputEnabled = Prelude.Nothing}
instance ToResourceProperties WordConfigProperty where
  toResourceProperties WordConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.WordConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Text" JSON..= text]
                           (Prelude.catMaybes
                              [(JSON..=) "InputAction" Prelude.<$> inputAction,
                               (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                               (JSON..=) "OutputAction" Prelude.<$> outputAction,
                               (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled]))}
instance JSON.ToJSON WordConfigProperty where
  toJSON WordConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Text" JSON..= text]
              (Prelude.catMaybes
                 [(JSON..=) "InputAction" Prelude.<$> inputAction,
                  (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                  (JSON..=) "OutputAction" Prelude.<$> outputAction,
                  (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled])))
instance Property "InputAction" WordConfigProperty where
  type PropertyType "InputAction" WordConfigProperty = Value Prelude.Text
  set newValue WordConfigProperty {..}
    = WordConfigProperty {inputAction = Prelude.pure newValue, ..}
instance Property "InputEnabled" WordConfigProperty where
  type PropertyType "InputEnabled" WordConfigProperty = Value Prelude.Bool
  set newValue WordConfigProperty {..}
    = WordConfigProperty {inputEnabled = Prelude.pure newValue, ..}
instance Property "OutputAction" WordConfigProperty where
  type PropertyType "OutputAction" WordConfigProperty = Value Prelude.Text
  set newValue WordConfigProperty {..}
    = WordConfigProperty {outputAction = Prelude.pure newValue, ..}
instance Property "OutputEnabled" WordConfigProperty where
  type PropertyType "OutputEnabled" WordConfigProperty = Value Prelude.Bool
  set newValue WordConfigProperty {..}
    = WordConfigProperty {outputEnabled = Prelude.pure newValue, ..}
instance Property "Text" WordConfigProperty where
  type PropertyType "Text" WordConfigProperty = Value Prelude.Text
  set newValue WordConfigProperty {..}
    = WordConfigProperty {text = newValue, ..}