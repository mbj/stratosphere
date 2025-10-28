module Stratosphere.EntityResolution.IdNamespace.NamespaceRuleBasedPropertiesProperty (
        module Exports, NamespaceRuleBasedPropertiesProperty(..),
        mkNamespaceRuleBasedPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdNamespace.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamespaceRuleBasedPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespacerulebasedproperties.html>
    NamespaceRuleBasedPropertiesProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespacerulebasedproperties.html#cfn-entityresolution-idnamespace-namespacerulebasedproperties-attributematchingmodel>
                                          attributeMatchingModel :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespacerulebasedproperties.html#cfn-entityresolution-idnamespace-namespacerulebasedproperties-recordmatchingmodels>
                                          recordMatchingModels :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespacerulebasedproperties.html#cfn-entityresolution-idnamespace-namespacerulebasedproperties-ruledefinitiontypes>
                                          ruleDefinitionTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespacerulebasedproperties.html#cfn-entityresolution-idnamespace-namespacerulebasedproperties-rules>
                                          rules :: (Prelude.Maybe [RuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespaceRuleBasedPropertiesProperty ::
  NamespaceRuleBasedPropertiesProperty
mkNamespaceRuleBasedPropertiesProperty
  = NamespaceRuleBasedPropertiesProperty
      {haddock_workaround_ = (),
       attributeMatchingModel = Prelude.Nothing,
       recordMatchingModels = Prelude.Nothing,
       ruleDefinitionTypes = Prelude.Nothing, rules = Prelude.Nothing}
instance ToResourceProperties NamespaceRuleBasedPropertiesProperty where
  toResourceProperties NamespaceRuleBasedPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdNamespace.NamespaceRuleBasedProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributeMatchingModel"
                              Prelude.<$> attributeMatchingModel,
                            (JSON..=) "RecordMatchingModels" Prelude.<$> recordMatchingModels,
                            (JSON..=) "RuleDefinitionTypes" Prelude.<$> ruleDefinitionTypes,
                            (JSON..=) "Rules" Prelude.<$> rules])}
instance JSON.ToJSON NamespaceRuleBasedPropertiesProperty where
  toJSON NamespaceRuleBasedPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributeMatchingModel"
                 Prelude.<$> attributeMatchingModel,
               (JSON..=) "RecordMatchingModels" Prelude.<$> recordMatchingModels,
               (JSON..=) "RuleDefinitionTypes" Prelude.<$> ruleDefinitionTypes,
               (JSON..=) "Rules" Prelude.<$> rules]))
instance Property "AttributeMatchingModel" NamespaceRuleBasedPropertiesProperty where
  type PropertyType "AttributeMatchingModel" NamespaceRuleBasedPropertiesProperty = Value Prelude.Text
  set newValue NamespaceRuleBasedPropertiesProperty {..}
    = NamespaceRuleBasedPropertiesProperty
        {attributeMatchingModel = Prelude.pure newValue, ..}
instance Property "RecordMatchingModels" NamespaceRuleBasedPropertiesProperty where
  type PropertyType "RecordMatchingModels" NamespaceRuleBasedPropertiesProperty = ValueList Prelude.Text
  set newValue NamespaceRuleBasedPropertiesProperty {..}
    = NamespaceRuleBasedPropertiesProperty
        {recordMatchingModels = Prelude.pure newValue, ..}
instance Property "RuleDefinitionTypes" NamespaceRuleBasedPropertiesProperty where
  type PropertyType "RuleDefinitionTypes" NamespaceRuleBasedPropertiesProperty = ValueList Prelude.Text
  set newValue NamespaceRuleBasedPropertiesProperty {..}
    = NamespaceRuleBasedPropertiesProperty
        {ruleDefinitionTypes = Prelude.pure newValue, ..}
instance Property "Rules" NamespaceRuleBasedPropertiesProperty where
  type PropertyType "Rules" NamespaceRuleBasedPropertiesProperty = [RuleProperty]
  set newValue NamespaceRuleBasedPropertiesProperty {..}
    = NamespaceRuleBasedPropertiesProperty
        {rules = Prelude.pure newValue, ..}