module Stratosphere.Wisdom.AIGuardrail.AIGuardrailSensitiveInformationPolicyConfigProperty (
        module Exports,
        AIGuardrailSensitiveInformationPolicyConfigProperty(..),
        mkAIGuardrailSensitiveInformationPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailPiiEntityConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailRegexConfigProperty as Exports
import Stratosphere.ResourceProperties
data AIGuardrailSensitiveInformationPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailsensitiveinformationpolicyconfig.html>
    AIGuardrailSensitiveInformationPolicyConfigProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailsensitiveinformationpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailsensitiveinformationpolicyconfig-piientitiesconfig>
                                                         piiEntitiesConfig :: (Prelude.Maybe [GuardrailPiiEntityConfigProperty]),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailsensitiveinformationpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailsensitiveinformationpolicyconfig-regexesconfig>
                                                         regexesConfig :: (Prelude.Maybe [GuardrailRegexConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrailSensitiveInformationPolicyConfigProperty ::
  AIGuardrailSensitiveInformationPolicyConfigProperty
mkAIGuardrailSensitiveInformationPolicyConfigProperty
  = AIGuardrailSensitiveInformationPolicyConfigProperty
      {haddock_workaround_ = (), piiEntitiesConfig = Prelude.Nothing,
       regexesConfig = Prelude.Nothing}
instance ToResourceProperties AIGuardrailSensitiveInformationPolicyConfigProperty where
  toResourceProperties
    AIGuardrailSensitiveInformationPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.AIGuardrailSensitiveInformationPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PiiEntitiesConfig" Prelude.<$> piiEntitiesConfig,
                            (JSON..=) "RegexesConfig" Prelude.<$> regexesConfig])}
instance JSON.ToJSON AIGuardrailSensitiveInformationPolicyConfigProperty where
  toJSON AIGuardrailSensitiveInformationPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PiiEntitiesConfig" Prelude.<$> piiEntitiesConfig,
               (JSON..=) "RegexesConfig" Prelude.<$> regexesConfig]))
instance Property "PiiEntitiesConfig" AIGuardrailSensitiveInformationPolicyConfigProperty where
  type PropertyType "PiiEntitiesConfig" AIGuardrailSensitiveInformationPolicyConfigProperty = [GuardrailPiiEntityConfigProperty]
  set
    newValue
    AIGuardrailSensitiveInformationPolicyConfigProperty {..}
    = AIGuardrailSensitiveInformationPolicyConfigProperty
        {piiEntitiesConfig = Prelude.pure newValue, ..}
instance Property "RegexesConfig" AIGuardrailSensitiveInformationPolicyConfigProperty where
  type PropertyType "RegexesConfig" AIGuardrailSensitiveInformationPolicyConfigProperty = [GuardrailRegexConfigProperty]
  set
    newValue
    AIGuardrailSensitiveInformationPolicyConfigProperty {..}
    = AIGuardrailSensitiveInformationPolicyConfigProperty
        {regexesConfig = Prelude.pure newValue, ..}