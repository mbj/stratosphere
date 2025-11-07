module Stratosphere.Wisdom.AIGuardrail.GuardrailContentFilterConfigProperty (
        GuardrailContentFilterConfigProperty(..),
        mkGuardrailContentFilterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailContentFilterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontentfilterconfig.html>
    GuardrailContentFilterConfigProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontentfilterconfig.html#cfn-wisdom-aiguardrail-guardrailcontentfilterconfig-inputstrength>
                                          inputStrength :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontentfilterconfig.html#cfn-wisdom-aiguardrail-guardrailcontentfilterconfig-outputstrength>
                                          outputStrength :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontentfilterconfig.html#cfn-wisdom-aiguardrail-guardrailcontentfilterconfig-type>
                                          type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailContentFilterConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> GuardrailContentFilterConfigProperty
mkGuardrailContentFilterConfigProperty
  inputStrength
  outputStrength
  type'
  = GuardrailContentFilterConfigProperty
      {haddock_workaround_ = (), inputStrength = inputStrength,
       outputStrength = outputStrength, type' = type'}
instance ToResourceProperties GuardrailContentFilterConfigProperty where
  toResourceProperties GuardrailContentFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailContentFilterConfig",
         supportsTags = Prelude.False,
         properties = ["InputStrength" JSON..= inputStrength,
                       "OutputStrength" JSON..= outputStrength, "Type" JSON..= type']}
instance JSON.ToJSON GuardrailContentFilterConfigProperty where
  toJSON GuardrailContentFilterConfigProperty {..}
    = JSON.object
        ["InputStrength" JSON..= inputStrength,
         "OutputStrength" JSON..= outputStrength, "Type" JSON..= type']
instance Property "InputStrength" GuardrailContentFilterConfigProperty where
  type PropertyType "InputStrength" GuardrailContentFilterConfigProperty = Value Prelude.Text
  set newValue GuardrailContentFilterConfigProperty {..}
    = GuardrailContentFilterConfigProperty
        {inputStrength = newValue, ..}
instance Property "OutputStrength" GuardrailContentFilterConfigProperty where
  type PropertyType "OutputStrength" GuardrailContentFilterConfigProperty = Value Prelude.Text
  set newValue GuardrailContentFilterConfigProperty {..}
    = GuardrailContentFilterConfigProperty
        {outputStrength = newValue, ..}
instance Property "Type" GuardrailContentFilterConfigProperty where
  type PropertyType "Type" GuardrailContentFilterConfigProperty = Value Prelude.Text
  set newValue GuardrailContentFilterConfigProperty {..}
    = GuardrailContentFilterConfigProperty {type' = newValue, ..}