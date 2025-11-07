module Stratosphere.Wisdom.AIGuardrail.GuardrailContextualGroundingFilterConfigProperty (
        GuardrailContextualGroundingFilterConfigProperty(..),
        mkGuardrailContextualGroundingFilterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailContextualGroundingFilterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontextualgroundingfilterconfig.html>
    GuardrailContextualGroundingFilterConfigProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontextualgroundingfilterconfig.html#cfn-wisdom-aiguardrail-guardrailcontextualgroundingfilterconfig-threshold>
                                                      threshold :: (Value Prelude.Double),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailcontextualgroundingfilterconfig.html#cfn-wisdom-aiguardrail-guardrailcontextualgroundingfilterconfig-type>
                                                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailContextualGroundingFilterConfigProperty ::
  Value Prelude.Double
  -> Value Prelude.Text
     -> GuardrailContextualGroundingFilterConfigProperty
mkGuardrailContextualGroundingFilterConfigProperty threshold type'
  = GuardrailContextualGroundingFilterConfigProperty
      {haddock_workaround_ = (), threshold = threshold, type' = type'}
instance ToResourceProperties GuardrailContextualGroundingFilterConfigProperty where
  toResourceProperties
    GuardrailContextualGroundingFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailContextualGroundingFilterConfig",
         supportsTags = Prelude.False,
         properties = ["Threshold" JSON..= threshold, "Type" JSON..= type']}
instance JSON.ToJSON GuardrailContextualGroundingFilterConfigProperty where
  toJSON GuardrailContextualGroundingFilterConfigProperty {..}
    = JSON.object ["Threshold" JSON..= threshold, "Type" JSON..= type']
instance Property "Threshold" GuardrailContextualGroundingFilterConfigProperty where
  type PropertyType "Threshold" GuardrailContextualGroundingFilterConfigProperty = Value Prelude.Double
  set newValue GuardrailContextualGroundingFilterConfigProperty {..}
    = GuardrailContextualGroundingFilterConfigProperty
        {threshold = newValue, ..}
instance Property "Type" GuardrailContextualGroundingFilterConfigProperty where
  type PropertyType "Type" GuardrailContextualGroundingFilterConfigProperty = Value Prelude.Text
  set newValue GuardrailContextualGroundingFilterConfigProperty {..}
    = GuardrailContextualGroundingFilterConfigProperty
        {type' = newValue, ..}