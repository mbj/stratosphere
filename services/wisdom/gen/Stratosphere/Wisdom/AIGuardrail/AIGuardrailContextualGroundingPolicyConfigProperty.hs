module Stratosphere.Wisdom.AIGuardrail.AIGuardrailContextualGroundingPolicyConfigProperty (
        module Exports,
        AIGuardrailContextualGroundingPolicyConfigProperty(..),
        mkAIGuardrailContextualGroundingPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailContextualGroundingFilterConfigProperty as Exports
import Stratosphere.ResourceProperties
data AIGuardrailContextualGroundingPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailcontextualgroundingpolicyconfig.html>
    AIGuardrailContextualGroundingPolicyConfigProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailcontextualgroundingpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailcontextualgroundingpolicyconfig-filtersconfig>
                                                        filtersConfig :: [GuardrailContextualGroundingFilterConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrailContextualGroundingPolicyConfigProperty ::
  [GuardrailContextualGroundingFilterConfigProperty]
  -> AIGuardrailContextualGroundingPolicyConfigProperty
mkAIGuardrailContextualGroundingPolicyConfigProperty filtersConfig
  = AIGuardrailContextualGroundingPolicyConfigProperty
      {haddock_workaround_ = (), filtersConfig = filtersConfig}
instance ToResourceProperties AIGuardrailContextualGroundingPolicyConfigProperty where
  toResourceProperties
    AIGuardrailContextualGroundingPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.AIGuardrailContextualGroundingPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["FiltersConfig" JSON..= filtersConfig]}
instance JSON.ToJSON AIGuardrailContextualGroundingPolicyConfigProperty where
  toJSON AIGuardrailContextualGroundingPolicyConfigProperty {..}
    = JSON.object ["FiltersConfig" JSON..= filtersConfig]
instance Property "FiltersConfig" AIGuardrailContextualGroundingPolicyConfigProperty where
  type PropertyType "FiltersConfig" AIGuardrailContextualGroundingPolicyConfigProperty = [GuardrailContextualGroundingFilterConfigProperty]
  set
    newValue
    AIGuardrailContextualGroundingPolicyConfigProperty {..}
    = AIGuardrailContextualGroundingPolicyConfigProperty
        {filtersConfig = newValue, ..}