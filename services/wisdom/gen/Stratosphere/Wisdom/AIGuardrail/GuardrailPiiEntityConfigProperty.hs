module Stratosphere.Wisdom.AIGuardrail.GuardrailPiiEntityConfigProperty (
        GuardrailPiiEntityConfigProperty(..),
        mkGuardrailPiiEntityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailPiiEntityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailpiientityconfig.html>
    GuardrailPiiEntityConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailpiientityconfig.html#cfn-wisdom-aiguardrail-guardrailpiientityconfig-action>
                                      action :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailpiientityconfig.html#cfn-wisdom-aiguardrail-guardrailpiientityconfig-type>
                                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailPiiEntityConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GuardrailPiiEntityConfigProperty
mkGuardrailPiiEntityConfigProperty action type'
  = GuardrailPiiEntityConfigProperty
      {haddock_workaround_ = (), action = action, type' = type'}
instance ToResourceProperties GuardrailPiiEntityConfigProperty where
  toResourceProperties GuardrailPiiEntityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailPiiEntityConfig",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Type" JSON..= type']}
instance JSON.ToJSON GuardrailPiiEntityConfigProperty where
  toJSON GuardrailPiiEntityConfigProperty {..}
    = JSON.object ["Action" JSON..= action, "Type" JSON..= type']
instance Property "Action" GuardrailPiiEntityConfigProperty where
  type PropertyType "Action" GuardrailPiiEntityConfigProperty = Value Prelude.Text
  set newValue GuardrailPiiEntityConfigProperty {..}
    = GuardrailPiiEntityConfigProperty {action = newValue, ..}
instance Property "Type" GuardrailPiiEntityConfigProperty where
  type PropertyType "Type" GuardrailPiiEntityConfigProperty = Value Prelude.Text
  set newValue GuardrailPiiEntityConfigProperty {..}
    = GuardrailPiiEntityConfigProperty {type' = newValue, ..}