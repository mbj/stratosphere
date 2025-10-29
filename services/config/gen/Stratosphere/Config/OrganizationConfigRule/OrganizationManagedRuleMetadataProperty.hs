module Stratosphere.Config.OrganizationConfigRule.OrganizationManagedRuleMetadataProperty (
        OrganizationManagedRuleMetadataProperty(..),
        mkOrganizationManagedRuleMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationManagedRuleMetadataProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html>
    OrganizationManagedRuleMetadataProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-description>
                                             description :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-inputparameters>
                                             inputParameters :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-maximumexecutionfrequency>
                                             maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourceidscope>
                                             resourceIdScope :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourcetypesscope>
                                             resourceTypesScope :: (Prelude.Maybe (ValueList Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-ruleidentifier>
                                             ruleIdentifier :: (Value Prelude.Text),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagkeyscope>
                                             tagKeyScope :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagvaluescope>
                                             tagValueScope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationManagedRuleMetadataProperty ::
  Value Prelude.Text -> OrganizationManagedRuleMetadataProperty
mkOrganizationManagedRuleMetadataProperty ruleIdentifier
  = OrganizationManagedRuleMetadataProperty
      {ruleIdentifier = ruleIdentifier, description = Prelude.Nothing,
       inputParameters = Prelude.Nothing,
       maximumExecutionFrequency = Prelude.Nothing,
       resourceIdScope = Prelude.Nothing,
       resourceTypesScope = Prelude.Nothing,
       tagKeyScope = Prelude.Nothing, tagValueScope = Prelude.Nothing}
instance ToResourceProperties OrganizationManagedRuleMetadataProperty where
  toResourceProperties OrganizationManagedRuleMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::OrganizationConfigRule.OrganizationManagedRuleMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleIdentifier" JSON..= ruleIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                               (JSON..=) "MaximumExecutionFrequency"
                                 Prelude.<$> maximumExecutionFrequency,
                               (JSON..=) "ResourceIdScope" Prelude.<$> resourceIdScope,
                               (JSON..=) "ResourceTypesScope" Prelude.<$> resourceTypesScope,
                               (JSON..=) "TagKeyScope" Prelude.<$> tagKeyScope,
                               (JSON..=) "TagValueScope" Prelude.<$> tagValueScope]))}
instance JSON.ToJSON OrganizationManagedRuleMetadataProperty where
  toJSON OrganizationManagedRuleMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleIdentifier" JSON..= ruleIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                  (JSON..=) "MaximumExecutionFrequency"
                    Prelude.<$> maximumExecutionFrequency,
                  (JSON..=) "ResourceIdScope" Prelude.<$> resourceIdScope,
                  (JSON..=) "ResourceTypesScope" Prelude.<$> resourceTypesScope,
                  (JSON..=) "TagKeyScope" Prelude.<$> tagKeyScope,
                  (JSON..=) "TagValueScope" Prelude.<$> tagValueScope])))
instance Property "Description" OrganizationManagedRuleMetadataProperty where
  type PropertyType "Description" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {description = Prelude.pure newValue, ..}
instance Property "InputParameters" OrganizationManagedRuleMetadataProperty where
  type PropertyType "InputParameters" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {inputParameters = Prelude.pure newValue, ..}
instance Property "MaximumExecutionFrequency" OrganizationManagedRuleMetadataProperty where
  type PropertyType "MaximumExecutionFrequency" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {maximumExecutionFrequency = Prelude.pure newValue, ..}
instance Property "ResourceIdScope" OrganizationManagedRuleMetadataProperty where
  type PropertyType "ResourceIdScope" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {resourceIdScope = Prelude.pure newValue, ..}
instance Property "ResourceTypesScope" OrganizationManagedRuleMetadataProperty where
  type PropertyType "ResourceTypesScope" OrganizationManagedRuleMetadataProperty = ValueList Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {resourceTypesScope = Prelude.pure newValue, ..}
instance Property "RuleIdentifier" OrganizationManagedRuleMetadataProperty where
  type PropertyType "RuleIdentifier" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {ruleIdentifier = newValue, ..}
instance Property "TagKeyScope" OrganizationManagedRuleMetadataProperty where
  type PropertyType "TagKeyScope" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {tagKeyScope = Prelude.pure newValue, ..}
instance Property "TagValueScope" OrganizationManagedRuleMetadataProperty where
  type PropertyType "TagValueScope" OrganizationManagedRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationManagedRuleMetadataProperty {..}
    = OrganizationManagedRuleMetadataProperty
        {tagValueScope = Prelude.pure newValue, ..}