module Stratosphere.Wisdom.AIGuardrail.GuardrailWordConfigProperty (
        GuardrailWordConfigProperty(..), mkGuardrailWordConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailWordConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailwordconfig.html>
    GuardrailWordConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailwordconfig.html#cfn-wisdom-aiguardrail-guardrailwordconfig-text>
                                 text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailWordConfigProperty ::
  Value Prelude.Text -> GuardrailWordConfigProperty
mkGuardrailWordConfigProperty text
  = GuardrailWordConfigProperty
      {haddock_workaround_ = (), text = text}
instance ToResourceProperties GuardrailWordConfigProperty where
  toResourceProperties GuardrailWordConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailWordConfig",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON GuardrailWordConfigProperty where
  toJSON GuardrailWordConfigProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" GuardrailWordConfigProperty where
  type PropertyType "Text" GuardrailWordConfigProperty = Value Prelude.Text
  set newValue GuardrailWordConfigProperty {..}
    = GuardrailWordConfigProperty {text = newValue, ..}