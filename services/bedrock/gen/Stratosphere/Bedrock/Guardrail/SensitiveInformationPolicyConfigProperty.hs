module Stratosphere.Bedrock.Guardrail.SensitiveInformationPolicyConfigProperty (
        module Exports, SensitiveInformationPolicyConfigProperty(..),
        mkSensitiveInformationPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.PiiEntityConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.RegexConfigProperty as Exports
import Stratosphere.ResourceProperties
data SensitiveInformationPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-sensitiveinformationpolicyconfig.html>
    SensitiveInformationPolicyConfigProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-sensitiveinformationpolicyconfig.html#cfn-bedrock-guardrail-sensitiveinformationpolicyconfig-piientitiesconfig>
                                              piiEntitiesConfig :: (Prelude.Maybe [PiiEntityConfigProperty]),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-sensitiveinformationpolicyconfig.html#cfn-bedrock-guardrail-sensitiveinformationpolicyconfig-regexesconfig>
                                              regexesConfig :: (Prelude.Maybe [RegexConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSensitiveInformationPolicyConfigProperty ::
  SensitiveInformationPolicyConfigProperty
mkSensitiveInformationPolicyConfigProperty
  = SensitiveInformationPolicyConfigProperty
      {haddock_workaround_ = (), piiEntitiesConfig = Prelude.Nothing,
       regexesConfig = Prelude.Nothing}
instance ToResourceProperties SensitiveInformationPolicyConfigProperty where
  toResourceProperties SensitiveInformationPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.SensitiveInformationPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PiiEntitiesConfig" Prelude.<$> piiEntitiesConfig,
                            (JSON..=) "RegexesConfig" Prelude.<$> regexesConfig])}
instance JSON.ToJSON SensitiveInformationPolicyConfigProperty where
  toJSON SensitiveInformationPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PiiEntitiesConfig" Prelude.<$> piiEntitiesConfig,
               (JSON..=) "RegexesConfig" Prelude.<$> regexesConfig]))
instance Property "PiiEntitiesConfig" SensitiveInformationPolicyConfigProperty where
  type PropertyType "PiiEntitiesConfig" SensitiveInformationPolicyConfigProperty = [PiiEntityConfigProperty]
  set newValue SensitiveInformationPolicyConfigProperty {..}
    = SensitiveInformationPolicyConfigProperty
        {piiEntitiesConfig = Prelude.pure newValue, ..}
instance Property "RegexesConfig" SensitiveInformationPolicyConfigProperty where
  type PropertyType "RegexesConfig" SensitiveInformationPolicyConfigProperty = [RegexConfigProperty]
  set newValue SensitiveInformationPolicyConfigProperty {..}
    = SensitiveInformationPolicyConfigProperty
        {regexesConfig = Prelude.pure newValue, ..}