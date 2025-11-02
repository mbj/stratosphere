module Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingRuleBasedPropertiesProperty (
        module Exports, IdMappingRuleBasedPropertiesProperty(..),
        mkIdMappingRuleBasedPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingRuleBasedPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingrulebasedproperties.html>
    IdMappingRuleBasedPropertiesProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingrulebasedproperties.html#cfn-entityresolution-idmappingworkflow-idmappingrulebasedproperties-attributematchingmodel>
                                          attributeMatchingModel :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingrulebasedproperties.html#cfn-entityresolution-idmappingworkflow-idmappingrulebasedproperties-recordmatchingmodel>
                                          recordMatchingModel :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingrulebasedproperties.html#cfn-entityresolution-idmappingworkflow-idmappingrulebasedproperties-ruledefinitiontype>
                                          ruleDefinitionType :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingrulebasedproperties.html#cfn-entityresolution-idmappingworkflow-idmappingrulebasedproperties-rules>
                                          rules :: (Prelude.Maybe [RuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingRuleBasedPropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IdMappingRuleBasedPropertiesProperty
mkIdMappingRuleBasedPropertiesProperty
  attributeMatchingModel
  recordMatchingModel
  = IdMappingRuleBasedPropertiesProperty
      {haddock_workaround_ = (),
       attributeMatchingModel = attributeMatchingModel,
       recordMatchingModel = recordMatchingModel,
       ruleDefinitionType = Prelude.Nothing, rules = Prelude.Nothing}
instance ToResourceProperties IdMappingRuleBasedPropertiesProperty where
  toResourceProperties IdMappingRuleBasedPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.IdMappingRuleBasedProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeMatchingModel" JSON..= attributeMatchingModel,
                            "RecordMatchingModel" JSON..= recordMatchingModel]
                           (Prelude.catMaybes
                              [(JSON..=) "RuleDefinitionType" Prelude.<$> ruleDefinitionType,
                               (JSON..=) "Rules" Prelude.<$> rules]))}
instance JSON.ToJSON IdMappingRuleBasedPropertiesProperty where
  toJSON IdMappingRuleBasedPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeMatchingModel" JSON..= attributeMatchingModel,
               "RecordMatchingModel" JSON..= recordMatchingModel]
              (Prelude.catMaybes
                 [(JSON..=) "RuleDefinitionType" Prelude.<$> ruleDefinitionType,
                  (JSON..=) "Rules" Prelude.<$> rules])))
instance Property "AttributeMatchingModel" IdMappingRuleBasedPropertiesProperty where
  type PropertyType "AttributeMatchingModel" IdMappingRuleBasedPropertiesProperty = Value Prelude.Text
  set newValue IdMappingRuleBasedPropertiesProperty {..}
    = IdMappingRuleBasedPropertiesProperty
        {attributeMatchingModel = newValue, ..}
instance Property "RecordMatchingModel" IdMappingRuleBasedPropertiesProperty where
  type PropertyType "RecordMatchingModel" IdMappingRuleBasedPropertiesProperty = Value Prelude.Text
  set newValue IdMappingRuleBasedPropertiesProperty {..}
    = IdMappingRuleBasedPropertiesProperty
        {recordMatchingModel = newValue, ..}
instance Property "RuleDefinitionType" IdMappingRuleBasedPropertiesProperty where
  type PropertyType "RuleDefinitionType" IdMappingRuleBasedPropertiesProperty = Value Prelude.Text
  set newValue IdMappingRuleBasedPropertiesProperty {..}
    = IdMappingRuleBasedPropertiesProperty
        {ruleDefinitionType = Prelude.pure newValue, ..}
instance Property "Rules" IdMappingRuleBasedPropertiesProperty where
  type PropertyType "Rules" IdMappingRuleBasedPropertiesProperty = [RuleProperty]
  set newValue IdMappingRuleBasedPropertiesProperty {..}
    = IdMappingRuleBasedPropertiesProperty
        {rules = Prelude.pure newValue, ..}