module Stratosphere.Config.OrganizationConfigRule.OrganizationCustomRuleMetadataProperty (
        OrganizationCustomRuleMetadataProperty(..),
        mkOrganizationCustomRuleMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationCustomRuleMetadataProperty
  = OrganizationCustomRuleMetadataProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                                            inputParameters :: (Prelude.Maybe (Value Prelude.Text)),
                                            lambdaFunctionArn :: (Value Prelude.Text),
                                            maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                                            organizationConfigRuleTriggerTypes :: (ValueList Prelude.Text),
                                            resourceIdScope :: (Prelude.Maybe (Value Prelude.Text)),
                                            resourceTypesScope :: (Prelude.Maybe (ValueList Prelude.Text)),
                                            tagKeyScope :: (Prelude.Maybe (Value Prelude.Text)),
                                            tagValueScope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationCustomRuleMetadataProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> OrganizationCustomRuleMetadataProperty
mkOrganizationCustomRuleMetadataProperty
  lambdaFunctionArn
  organizationConfigRuleTriggerTypes
  = OrganizationCustomRuleMetadataProperty
      {lambdaFunctionArn = lambdaFunctionArn,
       organizationConfigRuleTriggerTypes = organizationConfigRuleTriggerTypes,
       description = Prelude.Nothing, inputParameters = Prelude.Nothing,
       maximumExecutionFrequency = Prelude.Nothing,
       resourceIdScope = Prelude.Nothing,
       resourceTypesScope = Prelude.Nothing,
       tagKeyScope = Prelude.Nothing, tagValueScope = Prelude.Nothing}
instance ToResourceProperties OrganizationCustomRuleMetadataProperty where
  toResourceProperties OrganizationCustomRuleMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::OrganizationConfigRule.OrganizationCustomRuleMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LambdaFunctionArn" JSON..= lambdaFunctionArn,
                            "OrganizationConfigRuleTriggerTypes"
                              JSON..= organizationConfigRuleTriggerTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                               (JSON..=) "MaximumExecutionFrequency"
                                 Prelude.<$> maximumExecutionFrequency,
                               (JSON..=) "ResourceIdScope" Prelude.<$> resourceIdScope,
                               (JSON..=) "ResourceTypesScope" Prelude.<$> resourceTypesScope,
                               (JSON..=) "TagKeyScope" Prelude.<$> tagKeyScope,
                               (JSON..=) "TagValueScope" Prelude.<$> tagValueScope]))}
instance JSON.ToJSON OrganizationCustomRuleMetadataProperty where
  toJSON OrganizationCustomRuleMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LambdaFunctionArn" JSON..= lambdaFunctionArn,
               "OrganizationConfigRuleTriggerTypes"
                 JSON..= organizationConfigRuleTriggerTypes]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                  (JSON..=) "MaximumExecutionFrequency"
                    Prelude.<$> maximumExecutionFrequency,
                  (JSON..=) "ResourceIdScope" Prelude.<$> resourceIdScope,
                  (JSON..=) "ResourceTypesScope" Prelude.<$> resourceTypesScope,
                  (JSON..=) "TagKeyScope" Prelude.<$> tagKeyScope,
                  (JSON..=) "TagValueScope" Prelude.<$> tagValueScope])))
instance Property "Description" OrganizationCustomRuleMetadataProperty where
  type PropertyType "Description" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {description = Prelude.pure newValue, ..}
instance Property "InputParameters" OrganizationCustomRuleMetadataProperty where
  type PropertyType "InputParameters" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {inputParameters = Prelude.pure newValue, ..}
instance Property "LambdaFunctionArn" OrganizationCustomRuleMetadataProperty where
  type PropertyType "LambdaFunctionArn" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {lambdaFunctionArn = newValue, ..}
instance Property "MaximumExecutionFrequency" OrganizationCustomRuleMetadataProperty where
  type PropertyType "MaximumExecutionFrequency" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {maximumExecutionFrequency = Prelude.pure newValue, ..}
instance Property "OrganizationConfigRuleTriggerTypes" OrganizationCustomRuleMetadataProperty where
  type PropertyType "OrganizationConfigRuleTriggerTypes" OrganizationCustomRuleMetadataProperty = ValueList Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {organizationConfigRuleTriggerTypes = newValue, ..}
instance Property "ResourceIdScope" OrganizationCustomRuleMetadataProperty where
  type PropertyType "ResourceIdScope" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {resourceIdScope = Prelude.pure newValue, ..}
instance Property "ResourceTypesScope" OrganizationCustomRuleMetadataProperty where
  type PropertyType "ResourceTypesScope" OrganizationCustomRuleMetadataProperty = ValueList Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {resourceTypesScope = Prelude.pure newValue, ..}
instance Property "TagKeyScope" OrganizationCustomRuleMetadataProperty where
  type PropertyType "TagKeyScope" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {tagKeyScope = Prelude.pure newValue, ..}
instance Property "TagValueScope" OrganizationCustomRuleMetadataProperty where
  type PropertyType "TagValueScope" OrganizationCustomRuleMetadataProperty = Value Prelude.Text
  set newValue OrganizationCustomRuleMetadataProperty {..}
    = OrganizationCustomRuleMetadataProperty
        {tagValueScope = Prelude.pure newValue, ..}