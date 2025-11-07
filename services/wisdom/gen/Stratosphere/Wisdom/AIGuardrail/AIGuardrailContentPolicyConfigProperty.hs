module Stratosphere.Wisdom.AIGuardrail.AIGuardrailContentPolicyConfigProperty (
        module Exports, AIGuardrailContentPolicyConfigProperty(..),
        mkAIGuardrailContentPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailContentFilterConfigProperty as Exports
import Stratosphere.ResourceProperties
data AIGuardrailContentPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailcontentpolicyconfig.html>
    AIGuardrailContentPolicyConfigProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailcontentpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailcontentpolicyconfig-filtersconfig>
                                            filtersConfig :: [GuardrailContentFilterConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrailContentPolicyConfigProperty ::
  [GuardrailContentFilterConfigProperty]
  -> AIGuardrailContentPolicyConfigProperty
mkAIGuardrailContentPolicyConfigProperty filtersConfig
  = AIGuardrailContentPolicyConfigProperty
      {haddock_workaround_ = (), filtersConfig = filtersConfig}
instance ToResourceProperties AIGuardrailContentPolicyConfigProperty where
  toResourceProperties AIGuardrailContentPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.AIGuardrailContentPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["FiltersConfig" JSON..= filtersConfig]}
instance JSON.ToJSON AIGuardrailContentPolicyConfigProperty where
  toJSON AIGuardrailContentPolicyConfigProperty {..}
    = JSON.object ["FiltersConfig" JSON..= filtersConfig]
instance Property "FiltersConfig" AIGuardrailContentPolicyConfigProperty where
  type PropertyType "FiltersConfig" AIGuardrailContentPolicyConfigProperty = [GuardrailContentFilterConfigProperty]
  set newValue AIGuardrailContentPolicyConfigProperty {..}
    = AIGuardrailContentPolicyConfigProperty
        {filtersConfig = newValue, ..}