module Stratosphere.Config.OrganizationConfigRule.OrganizationCustomPolicyRuleMetadataProperty (
        OrganizationCustomPolicyRuleMetadataProperty(..),
        mkOrganizationCustomPolicyRuleMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationCustomPolicyRuleMetadataProperty
  = OrganizationCustomPolicyRuleMetadataProperty {debugLogDeliveryAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                                  inputParameters :: (Prelude.Maybe (Value Prelude.Text)),
                                                  maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                                                  organizationConfigRuleTriggerTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  policyText :: (Value Prelude.Text),
                                                  resourceIdScope :: (Prelude.Maybe (Value Prelude.Text)),
                                                  resourceTypesScope :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  runtime :: (Value Prelude.Text),
                                                  tagKeyScope :: (Prelude.Maybe (Value Prelude.Text)),
                                                  tagValueScope :: (Prelude.Maybe (Value Prelude.Text))}
mkOrganizationCustomPolicyRuleMetadataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> OrganizationCustomPolicyRuleMetadataProperty
mkOrganizationCustomPolicyRuleMetadataProperty policyText runtime
  = OrganizationCustomPolicyRuleMetadataProperty
      {policyText = policyText, runtime = runtime,
       debugLogDeliveryAccounts = Prelude.Nothing,
       description = Prelude.Nothing, inputParameters = Prelude.Nothing,
       maximumExecutionFrequency = Prelude.Nothing,
       organizationConfigRuleTriggerTypes = Prelude.Nothing,
       resourceIdScope = Prelude.Nothing,
       resourceTypesScope = Prelude.Nothing,
       tagKeyScope = Prelude.Nothing, tagValueScope = Prelude.Nothing}
instance ToResourceProperties OrganizationCustomPolicyRuleMetadataProperty where
  toResourceProperties
    OrganizationCustomPolicyRuleMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::OrganizationConfigRule.OrganizationCustomPolicyRuleMetadata",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyText" JSON..= policyText, "Runtime" JSON..= runtime]
                           (Prelude.catMaybes
                              [(JSON..=) "DebugLogDeliveryAccounts"
                                 Prelude.<$> debugLogDeliveryAccounts,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                               (JSON..=) "MaximumExecutionFrequency"
                                 Prelude.<$> maximumExecutionFrequency,
                               (JSON..=) "OrganizationConfigRuleTriggerTypes"
                                 Prelude.<$> organizationConfigRuleTriggerTypes,
                               (JSON..=) "ResourceIdScope" Prelude.<$> resourceIdScope,
                               (JSON..=) "ResourceTypesScope" Prelude.<$> resourceTypesScope,
                               (JSON..=) "TagKeyScope" Prelude.<$> tagKeyScope,
                               (JSON..=) "TagValueScope" Prelude.<$> tagValueScope]))}
instance JSON.ToJSON OrganizationCustomPolicyRuleMetadataProperty where
  toJSON OrganizationCustomPolicyRuleMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyText" JSON..= policyText, "Runtime" JSON..= runtime]
              (Prelude.catMaybes
                 [(JSON..=) "DebugLogDeliveryAccounts"
                    Prelude.<$> debugLogDeliveryAccounts,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                  (JSON..=) "MaximumExecutionFrequency"
                    Prelude.<$> maximumExecutionFrequency,
                  (JSON..=) "OrganizationConfigRuleTriggerTypes"
                    Prelude.<$> organizationConfigRuleTriggerTypes,
                  (JSON..=) "ResourceIdScope" Prelude.<$> resourceIdScope,
                  (JSON..=) "ResourceTypesScope" Prelude.<$> resourceTypesScope,
                  (JSON..=) "TagKeyScope" Prelude.<$> tagKeyScope,
                  (JSON..=) "TagValueScope" Prelude.<$> tagValueScope])))
instance Property "DebugLogDeliveryAccounts" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "DebugLogDeliveryAccounts" OrganizationCustomPolicyRuleMetadataProperty = ValueList Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {debugLogDeliveryAccounts = Prelude.pure newValue, ..}
instance Property "Description" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "Description" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {description = Prelude.pure newValue, ..}
instance Property "InputParameters" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "InputParameters" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {inputParameters = Prelude.pure newValue, ..}
instance Property "MaximumExecutionFrequency" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "MaximumExecutionFrequency" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {maximumExecutionFrequency = Prelude.pure newValue, ..}
instance Property "OrganizationConfigRuleTriggerTypes" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "OrganizationConfigRuleTriggerTypes" OrganizationCustomPolicyRuleMetadataProperty = ValueList Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {organizationConfigRuleTriggerTypes = Prelude.pure newValue, ..}
instance Property "PolicyText" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "PolicyText" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {policyText = newValue, ..}
instance Property "ResourceIdScope" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "ResourceIdScope" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {resourceIdScope = Prelude.pure newValue, ..}
instance Property "ResourceTypesScope" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "ResourceTypesScope" OrganizationCustomPolicyRuleMetadataProperty = ValueList Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {resourceTypesScope = Prelude.pure newValue, ..}
instance Property "Runtime" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "Runtime" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {runtime = newValue, ..}
instance Property "TagKeyScope" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "TagKeyScope" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {tagKeyScope = Prelude.pure newValue, ..}
instance Property "TagValueScope" OrganizationCustomPolicyRuleMetadataProperty where
  type PropertyType "TagValueScope" OrganizationCustomPolicyRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomPolicyRuleMetadataProperty {..}
    = OrganizationCustomPolicyRuleMetadataProperty
        {tagValueScope = Prelude.pure newValue, ..}