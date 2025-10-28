module Stratosphere.EntityResolution.MatchingWorkflow.RuleBasedPropertiesProperty (
        module Exports, RuleBasedPropertiesProperty(..),
        mkRuleBasedPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleBasedPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulebasedproperties.html>
    RuleBasedPropertiesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulebasedproperties.html#cfn-entityresolution-matchingworkflow-rulebasedproperties-attributematchingmodel>
                                 attributeMatchingModel :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulebasedproperties.html#cfn-entityresolution-matchingworkflow-rulebasedproperties-matchpurpose>
                                 matchPurpose :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulebasedproperties.html#cfn-entityresolution-matchingworkflow-rulebasedproperties-rules>
                                 rules :: [RuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleBasedPropertiesProperty ::
  Value Prelude.Text -> [RuleProperty] -> RuleBasedPropertiesProperty
mkRuleBasedPropertiesProperty attributeMatchingModel rules
  = RuleBasedPropertiesProperty
      {haddock_workaround_ = (),
       attributeMatchingModel = attributeMatchingModel, rules = rules,
       matchPurpose = Prelude.Nothing}
instance ToResourceProperties RuleBasedPropertiesProperty where
  toResourceProperties RuleBasedPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.RuleBasedProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeMatchingModel" JSON..= attributeMatchingModel,
                            "Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "MatchPurpose" Prelude.<$> matchPurpose]))}
instance JSON.ToJSON RuleBasedPropertiesProperty where
  toJSON RuleBasedPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeMatchingModel" JSON..= attributeMatchingModel,
               "Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "MatchPurpose" Prelude.<$> matchPurpose])))
instance Property "AttributeMatchingModel" RuleBasedPropertiesProperty where
  type PropertyType "AttributeMatchingModel" RuleBasedPropertiesProperty = Value Prelude.Text
  set newValue RuleBasedPropertiesProperty {..}
    = RuleBasedPropertiesProperty
        {attributeMatchingModel = newValue, ..}
instance Property "MatchPurpose" RuleBasedPropertiesProperty where
  type PropertyType "MatchPurpose" RuleBasedPropertiesProperty = Value Prelude.Text
  set newValue RuleBasedPropertiesProperty {..}
    = RuleBasedPropertiesProperty
        {matchPurpose = Prelude.pure newValue, ..}
instance Property "Rules" RuleBasedPropertiesProperty where
  type PropertyType "Rules" RuleBasedPropertiesProperty = [RuleProperty]
  set newValue RuleBasedPropertiesProperty {..}
    = RuleBasedPropertiesProperty {rules = newValue, ..}