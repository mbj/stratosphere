module Stratosphere.Bedrock.Guardrail.GuardrailCrossRegionConfigProperty (
        GuardrailCrossRegionConfigProperty(..),
        mkGuardrailCrossRegionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailCrossRegionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-guardrailcrossregionconfig.html>
    GuardrailCrossRegionConfigProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-guardrailcrossregionconfig.html#cfn-bedrock-guardrail-guardrailcrossregionconfig-guardrailprofilearn>
                                        guardrailProfileArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailCrossRegionConfigProperty ::
  Value Prelude.Text -> GuardrailCrossRegionConfigProperty
mkGuardrailCrossRegionConfigProperty guardrailProfileArn
  = GuardrailCrossRegionConfigProperty
      {haddock_workaround_ = (),
       guardrailProfileArn = guardrailProfileArn}
instance ToResourceProperties GuardrailCrossRegionConfigProperty where
  toResourceProperties GuardrailCrossRegionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.GuardrailCrossRegionConfig",
         supportsTags = Prelude.False,
         properties = ["GuardrailProfileArn" JSON..= guardrailProfileArn]}
instance JSON.ToJSON GuardrailCrossRegionConfigProperty where
  toJSON GuardrailCrossRegionConfigProperty {..}
    = JSON.object ["GuardrailProfileArn" JSON..= guardrailProfileArn]
instance Property "GuardrailProfileArn" GuardrailCrossRegionConfigProperty where
  type PropertyType "GuardrailProfileArn" GuardrailCrossRegionConfigProperty = Value Prelude.Text
  set newValue GuardrailCrossRegionConfigProperty {..}
    = GuardrailCrossRegionConfigProperty
        {guardrailProfileArn = newValue, ..}