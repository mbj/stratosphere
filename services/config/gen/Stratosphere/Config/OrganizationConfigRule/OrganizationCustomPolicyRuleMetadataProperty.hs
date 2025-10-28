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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html>
    OrganizationCustomPolicyRuleMetadataProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-debuglogdeliveryaccounts>
                                                  debugLogDeliveryAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-description>
                                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-inputparameters>
                                                  inputParameters :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-maximumexecutionfrequency>
                                                  maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-organizationconfigruletriggertypes>
                                                  organizationConfigRuleTriggerTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-policytext>
                                                  policyText :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-resourceidscope>
                                                  resourceIdScope :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-resourcetypesscope>
                                                  resourceTypesScope :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-runtime>
                                                  runtime :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-tagkeyscope>
                                                  tagKeyScope :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustompolicyrulemetadata.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata-tagvaluescope>
                                                  tagValueScope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationCustomPolicyRuleMetadataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> OrganizationCustomPolicyRuleMetadataProperty
mkOrganizationCustomPolicyRuleMetadataProperty policyText runtime
  = OrganizationCustomPolicyRuleMetadataProperty
      {haddock_workaround_ = (), policyText = policyText,
       runtime = runtime, debugLogDeliveryAccounts = Prelude.Nothing,
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
         supportsTags = Prelude.False,
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